; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pmem_find_many.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pmem_find_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @pci_p2pmem_find_many(%struct.device** %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device** %0, %struct.device*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  %13 = load i32, i32* @INT_MAX, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.pci_dev** @kmalloc(i32 %18, i32 %19)
  store %struct.pci_dev** %20, %struct.pci_dev*** %9, align 8
  %21 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  %22 = icmp ne %struct.pci_dev** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %115

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %78, %56, %47, %35, %24
  %26 = load i32, i32* @PCI_ANY_ID, align 4
  %27 = load i32, i32* @PCI_ANY_ID, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = call %struct.pci_dev* @pci_get_device(i32 %26, i32 %27, %struct.pci_dev* %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %6, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %31, label %86

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = call i32 @pci_has_p2pmem(%struct.pci_dev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %25

36:                                               ; preds = %31
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = load %struct.device**, %struct.device*** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pci_p2pdma_distance_many(%struct.pci_dev* %37, %struct.device** %38, i32 %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %36
  br label %25

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %25

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %67, i64 %69
  %71 = load %struct.pci_dev*, %struct.pci_dev** %70, align 8
  %72 = call i32 @pci_dev_put(%struct.pci_dev* %71)
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %62

76:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %57
  %79 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %80 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %79)
  %81 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %81, i64 %84
  store %struct.pci_dev* %80, %struct.pci_dev** %85, align 8
  br label %25

86:                                               ; preds = %25
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @prandom_u32_max(i32 %91)
  %93 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %90, i64 %92
  %94 = load %struct.pci_dev*, %struct.pci_dev** %93, align 8
  %95 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %94)
  store %struct.pci_dev* %95, %struct.pci_dev** %6, align 8
  br label %96

96:                                               ; preds = %89, %86
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %108, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %102, i64 %104
  %106 = load %struct.pci_dev*, %struct.pci_dev** %105, align 8
  %107 = call i32 @pci_dev_put(%struct.pci_dev* %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %97

111:                                              ; preds = %97
  %112 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  %113 = call i32 @kfree(%struct.pci_dev** %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %114, %struct.pci_dev** %3, align 8
  br label %115

115:                                              ; preds = %111, %23
  %116 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  ret %struct.pci_dev* %116
}

declare dso_local %struct.pci_dev** @kmalloc(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_has_p2pmem(%struct.pci_dev*) #1

declare dso_local i32 @pci_p2pdma_distance_many(%struct.pci_dev*, %struct.device**, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i64 @prandom_u32_max(i32) #1

declare dso_local i32 @kfree(%struct.pci_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
