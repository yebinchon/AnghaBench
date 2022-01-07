; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_pcie_do_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_err.c_pcie_do_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus*, %struct.TYPE_2__* }
%struct.pci_bus = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"broadcast error_detected message\0A\00", align 1
@pci_channel_io_frozen = common dso_local global i32 0, align 4
@report_frozen_detected = common dso_local global i32 0, align 4
@report_normal_detected = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"broadcast mmio_enabled message\0A\00", align 1
@report_mmio_enabled = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"broadcast slot_reset message\0A\00", align 1
@report_slot_reset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"broadcast resume message\0A\00", align 1
@report_resume = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"AER: Device recovery successful\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"AER: Device recovery failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_do_recovery(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @PCI_ERS_RESULT_CAN_RECOVER, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i64 @pci_pcie_type(%struct.pci_dev* %10)
  %12 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i64 @pci_pcie_type(%struct.pci_dev* %15)
  %17 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %4, align 8
  br label %25

25:                                               ; preds = %19, %14, %3
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.pci_bus*, %struct.pci_bus** %27, align 8
  store %struct.pci_bus* %28, %struct.pci_bus** %8, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pci_dbg(%struct.pci_dev* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @pci_channel_io_frozen, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %36 = load i32, i32* @report_frozen_detected, align 4
  %37 = call i32 @pci_walk_bus(%struct.pci_bus* %35, i32 %36, i64* %7)
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %40 = load i32, i32* @report_normal_detected, align 4
  %41 = call i32 @pci_walk_bus(%struct.pci_bus* %39, i32 %40, i64* %7)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @pci_channel_io_frozen, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @reset_link(%struct.pci_dev* %47, i32 %48)
  %50 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %92

53:                                               ; preds = %46, %42
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @PCI_ERS_RESULT_CAN_RECOVER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  store i64 %58, i64* %7, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_dbg(%struct.pci_dev* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %62 = load i32, i32* @report_mmio_enabled, align 4
  %63 = call i32 @pci_walk_bus(%struct.pci_bus* %61, i32 %62, i64* %7)
  br label %64

64:                                               ; preds = %57, %53
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  store i64 %69, i64* %7, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_dbg(%struct.pci_dev* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %73 = load i32, i32* @report_slot_reset, align 4
  %74 = call i32 @pci_walk_bus(%struct.pci_bus* %72, i32 %73, i64* %7)
  br label %75

75:                                               ; preds = %68, %64
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %92

80:                                               ; preds = %75
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i32 @pci_dbg(%struct.pci_dev* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %84 = load i32, i32* @report_resume, align 4
  %85 = call i32 @pci_walk_bus(%struct.pci_bus* %83, i32 %84, i64* %7)
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = call i32 @pci_aer_clear_device_status(%struct.pci_dev* %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = call i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = call i32 @pci_info(%struct.pci_dev* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %98

92:                                               ; preds = %79, %52
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  %95 = call i32 @pci_uevent_ers(%struct.pci_dev* %93, i32 %94)
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = call i32 @pci_info(%struct.pci_dev* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %80
  ret void
}

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pci_dbg(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_walk_bus(%struct.pci_bus*, i32, i64*) #1

declare dso_local i64 @reset_link(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_aer_clear_device_status(%struct.pci_dev*) #1

declare dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_uevent_ers(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
