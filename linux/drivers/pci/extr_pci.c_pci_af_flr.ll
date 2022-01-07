; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_af_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_af_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }

@PCI_CAP_ID_AF = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@PCI_DEV_FLAGS_NO_FLR_RESET = common dso_local global i32 0, align 4
@PCI_AF_CAP = common dso_local global i64 0, align 8
@PCI_AF_CAP_TP = common dso_local global i32 0, align 4
@PCI_AF_CAP_FLR = common dso_local global i32 0, align 4
@PCI_AF_CTRL = common dso_local global i64 0, align 8
@PCI_AF_STATUS_TP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"timed out waiting for pending transaction; performing AF function level reset anyway\0A\00", align 1
@PCI_AF_CTRL_FLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"AF_FLR\00", align 1
@PCIE_RESET_READY_POLL_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_af_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_af_flr(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @PCI_CAP_ID_AF, align 4
  %10 = call i32 @pci_find_capability(%struct.pci_dev* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTTY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PCI_DEV_FLAGS_NO_FLR_RESET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOTTY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %16
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PCI_AF_CAP, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i64 %31, i32* %7)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PCI_AF_CAP_TP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PCI_AF_CAP_FLR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37, %26
  %43 = load i32, i32* @ENOTTY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %80

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %80

49:                                               ; preds = %45
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @PCI_AF_CTRL, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @PCI_AF_STATUS_TP, align 4
  %56 = shl i32 %55, 8
  %57 = call i32 @pci_wait_for_pending(%struct.pci_dev* %50, i64 %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @pci_err(%struct.pci_dev* %60, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @PCI_AF_CTRL, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* @PCI_AF_CTRL_FLR, align 4
  %69 = call i32 @pci_write_config_byte(%struct.pci_dev* %63, i64 %67, i32 %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %80

75:                                               ; preds = %62
  %76 = call i32 @msleep(i32 100)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load i32, i32* @PCIE_RESET_READY_POLL_MS, align 4
  %79 = call i32 @pci_dev_wait(%struct.pci_dev* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %74, %48, %42, %23, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_wait_for_pending(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_dev_wait(%struct.pci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
