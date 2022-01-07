; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_bsg_host_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_bsg_host_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.iscsi_cls_host = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.iscsi_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"iscsi_host%d\00", align 1
@iscsi_bsg_host_dispatch = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"bsg interface failed to initialize - no request queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_cls_host*)* @iscsi_bsg_host_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_bsg_host_add(%struct.Scsi_Host* %0, %struct.iscsi_cls_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.iscsi_cls_host*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iscsi_internal*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca [20 x i8], align 16
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.iscsi_cls_host* %1, %struct.iscsi_cls_host** %5, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.iscsi_internal* @to_iscsi_internal(i32 %14)
  store %struct.iscsi_internal* %15, %struct.iscsi_internal** %7, align 8
  %16 = load %struct.iscsi_internal*, %struct.iscsi_internal** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %2
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i8* %26, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %33 = load i32, i32* @iscsi_bsg_host_dispatch, align 4
  %34 = call %struct.request_queue* @bsg_setup_queue(%struct.device* %31, i8* %32, i32 %33, i32* null, i32 0)
  store %struct.request_queue* %34, %struct.request_queue** %8, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %36 = call i64 @IS_ERR(%struct.request_queue* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %41 = call i32 @shost_printk(i32 %39, %struct.Scsi_Host* %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %43 = call i32 @PTR_ERR(%struct.request_queue* %42)
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %25
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %46 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %47 = call i32 @__scsi_init_queue(%struct.Scsi_Host* %45, %struct.request_queue* %46)
  %48 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %49 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %49, i32 0, i32 0
  store %struct.request_queue* %48, %struct.request_queue** %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %38, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.iscsi_internal* @to_iscsi_internal(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.request_queue* @bsg_setup_queue(%struct.device*, i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @__scsi_init_queue(%struct.Scsi_Host*, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
