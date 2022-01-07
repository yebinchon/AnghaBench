; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_is_error_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_is_error_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.aer_err_info = type { i32, i64, i32 }

@PCI_BUS_FLAGS_NO_AERSID = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_AER_FLAGS = common dso_local global i32 0, align 4
@AER_CORRECTABLE = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.aer_err_info*)* @is_error_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_error_source(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.aer_err_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %5, align 8
  %10 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %11 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @PCI_BUS_NUM(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PCI_BUS_FLAGS_NO_AERSID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %15
  %25 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %26 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %33, %36
  %38 = icmp eq i32 %27, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %109

40:                                               ; preds = %24
  %41 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %42 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %109

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %15, %2
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 2
  %50 = call i64 @atomic_read(i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %109

53:                                               ; preds = %47
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %56 = call i32 @pcie_capability_read_word(%struct.pci_dev* %54, i32 %55, i32* %9)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @PCI_EXP_AER_FLAGS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %109

62:                                               ; preds = %53
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %109

69:                                               ; preds = %62
  %70 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %71 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AER_CORRECTABLE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @pci_read_config_dword(%struct.pci_dev* %76, i64 %80, i32* %7)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @pci_read_config_dword(%struct.pci_dev* %82, i64 %86, i32* %8)
  br label %101

88:                                               ; preds = %69
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @pci_read_config_dword(%struct.pci_dev* %89, i64 %93, i32* %7)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @pci_read_config_dword(%struct.pci_dev* %95, i64 %99, i32* %8)
  br label %101

101:                                              ; preds = %88, %75
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %109

108:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %107, %68, %61, %52, %45, %39
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @PCI_BUS_NUM(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
