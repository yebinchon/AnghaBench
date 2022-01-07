; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32, i32, i32, i32, i64, %struct.TYPE_3__*, i32, i64, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*)* @pvscsi_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_release_resources(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca %struct.pvscsi_adapter*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %2, align 8
  %3 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %3, i32 0, i32 14
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %8, i32 0, i32 14
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @destroy_workqueue(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %13, i32 0, i32 13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %18, i32 0, i32 5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pci_iounmap(%struct.TYPE_3__* %20, i64 %23)
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @pci_release_regions(%struct.TYPE_3__* %28)
  %30 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %36 = call i32 @pvscsi_free_sgls(%struct.pvscsi_adapter* %35)
  %37 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %37, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @kfree(i64 %39)
  br label %41

41:                                               ; preds = %34, %25
  %42 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %42, i32 0, i32 11
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %47, i32 0, i32 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %52, i32 0, i32 11
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_coherent(i32* %50, i32 %51, i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %46, %41
  %60 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %65, i32 0, i32 5
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dma_free_coherent(i32* %68, i32 %73, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %64, %59
  %82 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %87, i32 0, i32 5
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dma_free_coherent(i32* %90, i32 %95, i64 %98, i32 %101)
  br label %103

103:                                              ; preds = %86, %81
  %104 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %109, i32 0, i32 5
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %119 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dma_free_coherent(i32* %112, i32 %117, i64 %120, i32 %123)
  br label %125

125:                                              ; preds = %108, %103
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_3__*) #1

declare dso_local i32 @pvscsi_free_sgls(%struct.pvscsi_adapter*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
