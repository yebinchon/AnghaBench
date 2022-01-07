; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_ptm.c_pci_enable_ptm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_ptm.c_pci_enable_ptm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_PTM = common dso_local global i32 0, align 4
@PCI_PTM_CAP = common dso_local global i64 0, align 8
@PCI_PTM_CAP_REQ = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ENDPOINT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_RC_END = common dso_local global i64 0, align 8
@PCI_PTM_CTRL_ENABLE = common dso_local global i32 0, align 4
@PCI_PTM_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_ptm(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_is_pcie(%struct.pci_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %102

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @PCI_EXT_CAP_ID_PTM, align 4
  %19 = call i32 @pci_find_ext_capability(%struct.pci_dev* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %102

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PCI_PTM_CAP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %26, i64 %30, i32* %7)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCI_PTM_CAP_REQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %102

39:                                               ; preds = %25
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i64 @pci_pcie_type(%struct.pci_dev* %40)
  %42 = load i64, i64* @PCI_EXP_TYPE_ENDPOINT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %45)
  store %struct.pci_dev* %46, %struct.pci_dev** %9, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %48 = icmp ne %struct.pci_dev* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %102

57:                                               ; preds = %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %75

63:                                               ; preds = %39
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i64 @pci_pcie_type(%struct.pci_dev* %64)
  %66 = load i64, i64* @PCI_EXP_TYPE_RC_END, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %102

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32, i32* @PCI_PTM_CTRL_ENABLE, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @PCI_PTM_CTRL, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @pci_write_config_dword(%struct.pci_dev* %83, i64 %87, i32 %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = call i32 @pci_ptm_info(%struct.pci_dev* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %75
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %75
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %71, %54, %36, %22, %13
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_ptm_info(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
