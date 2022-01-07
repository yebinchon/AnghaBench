; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_set_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_set_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { %struct.pci_dev*, %struct.sym_chip }
%struct.pci_dev = type { i64, i32 }
%struct.sym_chip = type { i32 }

@PCI_DEVICE_ID_NCR_53C896 = common dso_local global i64 0, align 8
@FE_WRIE = common dso_local global i32 0, align 4
@FE_CLSE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@FE_66MHZ = common dso_local global i32 0, align 4
@PCI_STATUS_66MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_device*)* @sym_set_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_set_workarounds(%struct.sym_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sym_device*, align 8
  %4 = alloca %struct.sym_chip*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %3, align 8
  %7 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %8 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %7, i32 0, i32 1
  store %struct.sym_chip* %8, %struct.sym_chip** %4, align 8
  %9 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %10 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_DEVICE_ID_NCR_53C896, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* @FE_WRIE, align 4
  %24 = load i32, i32* @FE_CLSE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.sym_chip*, %struct.sym_chip** %4, align 8
  %27 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %17, %1
  %31 = load %struct.sym_chip*, %struct.sym_chip** %4, align 8
  %32 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FE_WRIE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i64 @pci_set_mwi(%struct.pci_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %84

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = load i32, i32* @PCI_STATUS, align 4
  %48 = call i32 @pci_read_config_word(%struct.pci_dev* %46, i32 %47, i32* %6)
  %49 = load %struct.sym_chip*, %struct.sym_chip** %4, align 8
  %50 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FE_66MHZ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @FE_66MHZ, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.sym_chip*, %struct.sym_chip** %4, align 8
  %64 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %55
  br label %83

68:                                               ; preds = %45
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load i32, i32* @PCI_STATUS, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pci_write_config_word(%struct.pci_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = load i32, i32* @PCI_STATUS, align 4
  %81 = call i32 @pci_read_config_word(%struct.pci_dev* %79, i32 %80, i32* %6)
  br label %82

82:                                               ; preds = %73, %68
  br label %83

83:                                               ; preds = %82, %67
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %41
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @pci_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
