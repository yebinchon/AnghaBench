; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_bsg_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_bsg_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sas_rphy = type { %struct.request_queue*, i32 }
%struct.request_queue = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.request_queue* }

@.str = private unnamed_addr constant [30 x i8] c"%s can't handle SMP requests\0A\00", align 1
@sas_smp_dispatch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sas_host%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.sas_rphy*)* @sas_bsg_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_bsg_initialize(%struct.Scsi_Host* %0, %struct.sas_rphy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_rphy*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca [20 x i8], align 16
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.sas_rphy* %1, %struct.sas_rphy** %5, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_7__* @to_sas_internal(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %26 = icmp ne %struct.sas_rphy* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %29 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %28, i32 0, i32 1
  %30 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %31 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %30, i32 0, i32 1
  %32 = call i8* @dev_name(i32* %31)
  %33 = load i32, i32* @sas_smp_dispatch, align 4
  %34 = call %struct.request_queue* @bsg_setup_queue(i32* %29, i8* %32, i32 %33, i32* null, i32 0)
  store %struct.request_queue* %34, %struct.request_queue** %6, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %36 = call i64 @IS_ERR(%struct.request_queue* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.request_queue* %39)
  store i32 %40, i32* %3, align 4
  br label %68

41:                                               ; preds = %27
  %42 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %43 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %44 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %43, i32 0, i32 0
  store %struct.request_queue* %42, %struct.request_queue** %44, align 8
  br label %67

45:                                               ; preds = %24
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snprintf(i8* %46, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %54 = load i32, i32* @sas_smp_dispatch, align 4
  %55 = call %struct.request_queue* @bsg_setup_queue(i32* %52, i8* %53, i32 %54, i32* null, i32 0)
  store %struct.request_queue* %55, %struct.request_queue** %6, align 8
  %56 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %57 = call i64 @IS_ERR(%struct.request_queue* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %61 = call i32 @PTR_ERR(%struct.request_queue* %60)
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %45
  %63 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %65 = call %struct.TYPE_8__* @to_sas_host_attrs(%struct.Scsi_Host* %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store %struct.request_queue* %63, %struct.request_queue** %66, align 8
  br label %67

67:                                               ; preds = %62, %41
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %59, %38, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_7__* @to_sas_internal(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local %struct.request_queue* @bsg_setup_queue(i32*, i8*, i32, i32*, i32) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @to_sas_host_attrs(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
