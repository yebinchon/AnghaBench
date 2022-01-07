; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_err_info = type { i32 }
%struct.dpc_dev = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXP_DPC_STATUS = common dso_local global i32 0, align 4
@PCI_EXP_DPC_SOURCE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"containment event, status:%#06x source:%#06x\0A\00", align 1
@PCI_EXP_DPC_STATUS_TRIGGER_RSN = common dso_local global i32 0, align 4
@PCI_EXP_DPC_STATUS_TRIGGER_RSN_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unmasked uncorrectable error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ERR_NONFATAL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ERR_FATAL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"RP PIO error\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"software trigger\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"reserved error\00", align 1
@pci_channel_io_frozen = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_DPC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dpc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpc_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aer_err_info, align 4
  %6 = alloca %struct.dpc_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.dpc_dev*
  store %struct.dpc_dev* %14, %struct.dpc_dev** %6, align 8
  %15 = load %struct.dpc_dev*, %struct.dpc_dev** %6, align 8
  %16 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  %20 = load %struct.dpc_dev*, %struct.dpc_dev** %6, align 8
  %21 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @PCI_EXP_DPC_STATUS, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i32 %26, i32* %9)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PCI_EXP_DPC_SOURCE_ID, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i32 %31, i32* %10)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @pci_info(%struct.pci_dev* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PCI_EXP_DPC_STATUS_TRIGGER_RSN, align 4
  %39 = and i32 %37, %38
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PCI_EXP_DPC_STATUS_TRIGGER_RSN_EXT, align 4
  %43 = and i32 %41, %42
  %44 = ashr i32 %43, 5
  store i32 %44, i32* %12, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  br label %72

49:                                               ; preds = %2
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %70

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)
  br label %66

66:                                               ; preds = %61, %60
  %67 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %60 ], [ %65, %61 ]
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %56 ], [ %67, %66 ]
  br label %70

70:                                               ; preds = %68, %52
  %71 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %52 ], [ %69, %68 ]
  br label %72

72:                                               ; preds = %70, %48
  %73 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %48 ], [ %71, %70 ]
  %74 = call i32 @pci_warn(%struct.pci_dev* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load %struct.dpc_dev*, %struct.dpc_dev** %6, align 8
  %76 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.dpc_dev*, %struct.dpc_dev** %6, align 8
  %87 = call i32 @dpc_process_rp_pio_error(%struct.dpc_dev* %86)
  br label %107

88:                                               ; preds = %82, %79, %72
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %93 = call i64 @dpc_get_aer_uncorrect_severity(%struct.pci_dev* %92, %struct.aer_err_info* %5)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %97 = call i64 @aer_get_device_error_info(%struct.pci_dev* %96, %struct.aer_err_info* %5)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %101 = call i32 @aer_print_error(%struct.pci_dev* %100, %struct.aer_err_info* %5)
  %102 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %103 = call i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %102)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %105 = call i32 @pci_aer_clear_fatal_status(%struct.pci_dev* %104)
  br label %106

106:                                              ; preds = %99, %95, %91, %88
  br label %107

107:                                              ; preds = %106, %85
  %108 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %109 = load i32, i32* @pci_channel_io_frozen, align 4
  %110 = load i32, i32* @PCIE_PORT_SERVICE_DPC, align 4
  %111 = call i32 @pcie_do_recovery(%struct.pci_dev* %108, i32 %109, i32 %110)
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %112
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i8*) #1

declare dso_local i32 @dpc_process_rp_pio_error(%struct.dpc_dev*) #1

declare dso_local i64 @dpc_get_aer_uncorrect_severity(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i64 @aer_get_device_error_info(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i32 @aer_print_error(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev*) #1

declare dso_local i32 @pci_aer_clear_fatal_status(%struct.pci_dev*) #1

declare dso_local i32 @pcie_do_recovery(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
