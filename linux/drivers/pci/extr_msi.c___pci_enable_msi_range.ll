; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_enable_msi_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_enable_msi_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }
%struct.irq_affinity = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't enable MSI (MSI-X already enabled)\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32, %struct.irq_affinity*)* @__pci_enable_msi_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_enable_msi_range(%struct.pci_dev* %0, i32 %1, i32 %2, %struct.irq_affinity* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_affinity*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.irq_affinity* %3, %struct.irq_affinity** %9, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @pci_msi_supported(%struct.pci_dev* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %104

19:                                               ; preds = %4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = call i32 @pci_info(%struct.pci_dev* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %104

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ERANGE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %104

36:                                               ; preds = %29
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @WARN_ON_ONCE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %104

45:                                               ; preds = %36
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = call i32 @pci_msi_vec_count(%struct.pci_dev* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %104

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %104

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %102, %65
  %67 = load %struct.irq_affinity*, %struct.irq_affinity** %9, align 8
  %68 = icmp ne %struct.irq_affinity* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.irq_affinity*, %struct.irq_affinity** %9, align 8
  %73 = call i32 @irq_calc_affinity_vectors(i32 %70, i32 %71, %struct.irq_affinity* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %104

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %66
  %82 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.irq_affinity*, %struct.irq_affinity** %9, align 8
  %85 = call i32 @msi_capability_init(%struct.pci_dev* %82, i32 %83, %struct.irq_affinity* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %104

90:                                               ; preds = %81
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %104

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOSPC, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %10, align 4
  br label %66

104:                                              ; preds = %99, %93, %88, %77, %56, %50, %42, %33, %24, %16
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @pci_msi_supported(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pci_msi_vec_count(%struct.pci_dev*) #1

declare dso_local i32 @irq_calc_affinity_vectors(i32, i32, %struct.irq_affinity*) #1

declare dso_local i32 @msi_capability_init(%struct.pci_dev*, i32, %struct.irq_affinity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
