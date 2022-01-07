; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_hostadd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_hostadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.fc_host_attrs = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.fc_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fc_host%d\00", align 1
@fc_bsg_dispatch = common dso_local global i32 0, align 4
@fc_bsg_job_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"fc_host%d: bsg interface failed to initialize - setup queue\0A\00", align 1
@FC_DEFAULT_BSG_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.fc_host_attrs*)* @fc_bsg_hostadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_hostadd(%struct.Scsi_Host* %0, %struct.fc_host_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_host_attrs*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fc_internal*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca [20 x i8], align 16
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.fc_host_attrs* %1, %struct.fc_host_attrs** %5, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fc_internal* @to_fc_internal(i32 %14)
  store %struct.fc_internal* %15, %struct.fc_internal** %7, align 8
  %16 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %5, align 8
  %17 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %16, i32 0, i32 0
  store %struct.request_queue* null, %struct.request_queue** %17, align 8
  %18 = load %struct.fc_internal*, %struct.fc_internal** %7, align 8
  %19 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %2
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snprintf(i8* %28, i32 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %35 = load i32, i32* @fc_bsg_dispatch, align 4
  %36 = load i32, i32* @fc_bsg_job_timeout, align 4
  %37 = load %struct.fc_internal*, %struct.fc_internal** %7, align 8
  %38 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.request_queue* @bsg_setup_queue(%struct.device* %33, i8* %34, i32 %35, i32 %36, i32 %41)
  store %struct.request_queue* %42, %struct.request_queue** %8, align 8
  %43 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %44 = call i64 @IS_ERR(%struct.request_queue* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %27
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %53 = call i32 @PTR_ERR(%struct.request_queue* %52)
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %27
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %56 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %57 = call i32 @__scsi_init_queue(%struct.Scsi_Host* %55, %struct.request_queue* %56)
  %58 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %59 = load i32, i32* @FC_DEFAULT_BSG_TIMEOUT, align 4
  %60 = call i32 @blk_queue_rq_timeout(%struct.request_queue* %58, i32 %59)
  %61 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %62 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %5, align 8
  %63 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %62, i32 0, i32 0
  store %struct.request_queue* %61, %struct.request_queue** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %54, %46, %24
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.request_queue* @bsg_setup_queue(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @__scsi_init_queue(%struct.Scsi_Host*, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_rq_timeout(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
