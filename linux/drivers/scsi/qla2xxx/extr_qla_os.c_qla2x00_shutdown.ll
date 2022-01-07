; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i64, i32, %struct.qla_hw_data* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.qla_hw_data = type { %struct.TYPE_16__*, i64, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_16__ = type { i32 (%struct.qla_hw_data*)* }
%struct.TYPE_14__ = type { i64, i64 }

@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Adapter shutdown\0A\00", align 1
@PFLG_DRIVER_REMOVING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Adapter shutdown successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qla2x00_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.TYPE_17__* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %4, align 8
  %10 = load i32, i32* @ql_log_info, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = call i32 @ql_log(i32 %10, %struct.TYPE_17__* %11, i32 65530, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @PFLG_DRIVER_REMOVING, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 4
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %118

25:                                               ; preds = %1
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %27 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = call i32 @qlafx00_driver_shutdown(%struct.TYPE_17__* %30, i32 20)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = call i32 @qla2x00_disable_fce_trace(%struct.TYPE_17__* %39, i32* null, i32* null)
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = call i32 @qla2x00_disable_eft_trace(%struct.TYPE_17__* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %54 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %58 = call i64 @IS_QLA2031(%struct.qla_hw_data* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %62 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %66 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64, %60, %56, %52
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = call i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_17__* %75)
  br label %77

77:                                               ; preds = %74, %68
  br label %81

78:                                               ; preds = %64
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = call i32 @qla2x00_try_to_stop_firmware(%struct.TYPE_17__* %79)
  br label %81

81:                                               ; preds = %78, %77
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = call i32 @qla2x00_stop_timer(%struct.TYPE_17__* %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32 (%struct.qla_hw_data*)*, i32 (%struct.qla_hw_data*)** %104, align 8
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %107 = call i32 %105(%struct.qla_hw_data* %106)
  br label %108

108:                                              ; preds = %97, %89
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = call i32 @qla2x00_free_irqs(%struct.TYPE_17__* %109)
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %112 = call i32 @qla2x00_free_fw_dump(%struct.qla_hw_data* %111)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %114 = call i32 @pci_disable_device(%struct.pci_dev* %113)
  %115 = load i32, i32* @ql_log_info, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = call i32 @ql_log(i32 %115, %struct.TYPE_17__* %116, i32 65534, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %108, %24
  ret void
}

declare dso_local %struct.TYPE_17__* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_driver_shutdown(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @qla2x00_disable_fce_trace(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @qla2x00_disable_eft_trace(%struct.TYPE_17__*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_17__*) #1

declare dso_local i32 @qla2x00_try_to_stop_firmware(%struct.TYPE_17__*) #1

declare dso_local i32 @qla2x00_stop_timer(%struct.TYPE_17__*) #1

declare dso_local i32 @qla2x00_free_irqs(%struct.TYPE_17__*) #1

declare dso_local i32 @qla2x00_free_fw_dump(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
