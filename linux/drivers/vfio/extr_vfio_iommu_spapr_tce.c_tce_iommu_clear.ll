; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { i64, i32 }
%struct.iommu_table = type { i32, i64, i64 }

@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tce_container*, %struct.iommu_table*, i64, i64)* @tce_iommu_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tce_iommu_clear(%struct.tce_container* %0, %struct.iommu_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tce_container*, align 8
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.tce_container* %0, %struct.tce_container** %5, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %13, align 8
  br label %19

19:                                               ; preds = %79, %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %25 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %30 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32* @IOMMU_TABLE_USERSPACE_ENTRY_RO(%struct.iommu_table* %34, i64 %35)
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %41 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %79

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %28, %23
  %49 = call i32 (...) @cond_resched()
  %50 = load i32, i32* @DMA_NONE, align 4
  store i32 %50, i32* %11, align 4
  store i64 0, i64* %9, align 8
  %51 = load %struct.tce_container*, %struct.tce_container** %5, align 8
  %52 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @iommu_tce_xchg_no_kill(i32 %53, %struct.iommu_table* %54, i64 %55, i64* %9, i32* %11)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %79

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @DMA_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %79

65:                                               ; preds = %60
  %66 = load %struct.tce_container*, %struct.tce_container** %5, align 8
  %67 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.tce_container*, %struct.tce_container** %5, align 8
  %72 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @tce_iommu_unuse_page_v2(%struct.tce_container* %71, %struct.iommu_table* %72, i64 %73)
  br label %79

75:                                               ; preds = %65
  %76 = load %struct.tce_container*, %struct.tce_container** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @tce_iommu_unuse_page(%struct.tce_container* %76, i64 %77)
  br label %79

79:                                               ; preds = %75, %70, %64, %59, %39
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  br label %19

82:                                               ; preds = %19
  %83 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @iommu_tce_kill(%struct.iommu_table* %83, i64 %84, i64 %85)
  ret i32 0
}

declare dso_local i32* @IOMMU_TABLE_USERSPACE_ENTRY_RO(%struct.iommu_table*, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @iommu_tce_xchg_no_kill(i32, %struct.iommu_table*, i64, i64*, i32*) #1

declare dso_local i32 @tce_iommu_unuse_page_v2(%struct.tce_container*, %struct.iommu_table*, i64) #1

declare dso_local i32 @tce_iommu_unuse_page(%struct.tce_container*, i64) #1

declare dso_local i32 @iommu_tce_kill(%struct.iommu_table*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
