; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_capability.c_pm_ctrl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_capability.c_pm_ctrl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PM_OK_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set power state to %x\0A\00", align 1
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32, i8*)* @pm_ctrl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_ctrl_write(%struct.pci_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %12, i32 %13, i32* %10)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %59

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load i32, i32* @PM_OK_BITS, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PM_OK_BITS, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %18
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @PM_OK_BITS, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pci_write_config_word(%struct.pci_dev* %38, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %59

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %18
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @pci_set_power_state(%struct.pci_dev* %51, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %57, i32* %9, align 4
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %56, %44, %17
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
