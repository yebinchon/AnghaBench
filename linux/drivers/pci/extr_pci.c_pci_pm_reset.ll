; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_pm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_pm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i64 }

@PCI_DEV_FLAGS_NO_PM_RESET = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_NO_SOFT_RESET = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"PM D3->D0\00", align 1
@PCIE_RESET_READY_POLL_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_pm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_pm_reset(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PCI_DEV_FLAGS_NO_PM_RESET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %2
  %19 = load i32, i32* @ENOTTY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %87

21:                                               ; preds = %11
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_PM_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config_word(%struct.pci_dev* %22, i64 %27, i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PCI_PM_CTRL_NO_SOFT_RESET, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOTTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %87

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_D0, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %87

49:                                               ; preds = %40
  %50 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @PCI_D3hot, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCI_PM_CTRL, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pci_write_config_word(%struct.pci_dev* %57, i64 %62, i32 %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i32 @pci_dev_d3_sleep(%struct.pci_dev* %65)
  %67 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @PCI_D0, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI_PM_CTRL, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @pci_write_config_word(%struct.pci_dev* %74, i64 %79, i32 %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = call i32 @pci_dev_d3_sleep(%struct.pci_dev* %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i32, i32* @PCIE_RESET_READY_POLL_MS, align 4
  %86 = call i32 @pci_dev_wait(%struct.pci_dev* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %49, %46, %39, %33, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_dev_d3_sleep(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_wait(%struct.pci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
