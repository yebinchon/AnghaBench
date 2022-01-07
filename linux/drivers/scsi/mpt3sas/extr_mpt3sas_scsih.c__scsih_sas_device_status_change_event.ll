; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_device_status_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_device_status_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.MPT3SAS_TARGET = type { i32, i32 }
%struct._sas_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.MPT3SAS_TARGET* }

@MPI2_EVENT_SAS_DEV_STAT_RC_INTERNAL_DEVICE_RESET = common dso_local global i64 0, align 8
@MPI2_EVENT_SAS_DEV_STAT_RC_CMP_INTERNAL_DEV_RESET = common dso_local global i64 0, align 8
@MPT_DEBUG_EVENT_WORK_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s tm_busy flag for handle(0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.TYPE_7__*)* @_scsih_sas_device_status_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_sas_device_status_change_event(%struct.MPT3SAS_ADAPTER* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.MPT3SAS_TARGET*, align 8
  %6 = alloca %struct._sas_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %10 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 8
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %101

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MPI2_EVENT_SAS_DEV_STAT_RC_INTERNAL_DEVICE_RESET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MPI2_EVENT_SAS_DEV_STAT_RC_CMP_INTERNAL_DEV_RESET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %101

29:                                               ; preds = %22, %16
  %30 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %31 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le64_to_cpu(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER* %38, i32 %39)
  store %struct._sas_device* %40, %struct._sas_device** %6, align 8
  %41 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %42 = icmp ne %struct._sas_device* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %45 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %29
  br label %90

49:                                               ; preds = %43
  %50 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %51 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %53, align 8
  store %struct.MPT3SAS_TARGET* %54, %struct.MPT3SAS_TARGET** %5, align 8
  %55 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %56 = icmp ne %struct.MPT3SAS_TARGET* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %90

58:                                               ; preds = %49
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MPI2_EVENT_SAS_DEV_STAT_RC_INTERNAL_DEVICE_RESET, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %66 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %69 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %72 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MPT_DEBUG_EVENT_WORK_TASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %79 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %80 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %85 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %86 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %77, %70
  br label %90

90:                                               ; preds = %89, %57, %48
  %91 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %92 = icmp ne %struct._sas_device* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %95 = call i32 @sas_device_put(%struct._sas_device* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %98 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %97, i32 0, i32 1
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %28, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i8*, i32) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
