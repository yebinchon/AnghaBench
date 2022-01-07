; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_pci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_pci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bfad_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bfad_pci_slot_reset flags: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"slot_reset failed ... got another PCI error !\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"slot_reset completed  flags: 0x%x!\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @bfad_pci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_pci_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.bfad_s* %8, %struct.bfad_s** %4, align 8
  %9 = load i32, i32* @KERN_ERR, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %9, i32* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i64 @pci_enable_device(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %20, i32* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %24, i32* %2, align 4
  br label %81

25:                                               ; preds = %1
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @pci_restore_state(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = call i32 @pci_read_config_byte(%struct.pci_dev* %28, i32 104, i32* %5)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %33, i32* %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %77

37:                                               ; preds = %25
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call i32 @pci_save_state(%struct.pci_dev* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = call i32 @pci_set_master(%struct.pci_dev* %40)
  %42 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @DMA_BIT_MASK(i32 64)
  %47 = call i32 @dma_set_mask_and_coherent(i32* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @DMA_BIT_MASK(i32 32)
  %56 = call i32 @dma_set_mask_and_coherent(i32* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %37
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %77

61:                                               ; preds = %57
  %62 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %63 = call i32 @restart_bfa(%struct.bfad_s* %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %77

66:                                               ; preds = %61
  %67 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %68 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %67)
  %69 = load i32, i32* @KERN_WARNING, align 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %69, i32* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %65, %60, %32
  %78 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %79 = call i32 @pci_disable_device(%struct.pci_dev* %78)
  %80 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %66, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @restart_bfa(%struct.bfad_s*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
