; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_init.c_whc_clean_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_init.c_whc_clean_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32, i64, i64, i64, %struct.TYPE_2__*, i32, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@WHC_N_DN_ENTRIES = common dso_local global i32 0, align 4
@WHC_GEN_CMD_DATA_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @whc_clean_up(%struct.whc* %0) #0 {
  %2 = alloca %struct.whc*, align 8
  %3 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %2, align 8
  %4 = load %struct.whc*, %struct.whc** %2, align 8
  %5 = getelementptr inbounds %struct.whc, %struct.whc* %4, i32 0, i32 11
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.whc*, %struct.whc** %2, align 8
  %10 = getelementptr inbounds %struct.whc, %struct.whc* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.whc*, %struct.whc** %2, align 8
  %14 = getelementptr inbounds %struct.whc, %struct.whc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = load %struct.whc*, %struct.whc** %2, align 8
  %20 = getelementptr inbounds %struct.whc, %struct.whc* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.whc*, %struct.whc** %2, align 8
  %23 = getelementptr inbounds %struct.whc, %struct.whc* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dma_free_coherent(i32* %12, i32 %18, i64 %21, i32 %24)
  br label %26

26:                                               ; preds = %8, %1
  %27 = load %struct.whc*, %struct.whc** %2, align 8
  %28 = getelementptr inbounds %struct.whc, %struct.whc* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.whc*, %struct.whc** %2, align 8
  %33 = getelementptr inbounds %struct.whc, %struct.whc* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* @WHC_N_DN_ENTRIES, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.whc*, %struct.whc** %2, align 8
  %41 = getelementptr inbounds %struct.whc, %struct.whc* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.whc*, %struct.whc** %2, align 8
  %44 = getelementptr inbounds %struct.whc, %struct.whc* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_free_coherent(i32* %35, i32 %39, i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %31, %26
  %48 = load %struct.whc*, %struct.whc** %2, align 8
  %49 = getelementptr inbounds %struct.whc, %struct.whc* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.whc*, %struct.whc** %2, align 8
  %54 = getelementptr inbounds %struct.whc, %struct.whc* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* @WHC_GEN_CMD_DATA_LEN, align 4
  %58 = load %struct.whc*, %struct.whc** %2, align 8
  %59 = getelementptr inbounds %struct.whc, %struct.whc* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.whc*, %struct.whc** %2, align 8
  %62 = getelementptr inbounds %struct.whc, %struct.whc* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dma_free_coherent(i32* %56, i32 %57, i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %52, %47
  %66 = load %struct.whc*, %struct.whc** %2, align 8
  %67 = call i32 @pzl_clean_up(%struct.whc* %66)
  %68 = load %struct.whc*, %struct.whc** %2, align 8
  %69 = call i32 @asl_clean_up(%struct.whc* %68)
  %70 = load %struct.whc*, %struct.whc** %2, align 8
  %71 = getelementptr inbounds %struct.whc, %struct.whc* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dma_pool_destroy(i32 %72)
  %74 = load %struct.whc*, %struct.whc** %2, align 8
  %75 = getelementptr inbounds %struct.whc, %struct.whc* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @resource_size(i32* %77)
  store i32 %78, i32* %3, align 4
  %79 = load %struct.whc*, %struct.whc** %2, align 8
  %80 = getelementptr inbounds %struct.whc, %struct.whc* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %65
  %84 = load %struct.whc*, %struct.whc** %2, align 8
  %85 = getelementptr inbounds %struct.whc, %struct.whc* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @iounmap(i64 %86)
  br label %88

88:                                               ; preds = %83, %65
  %89 = load %struct.whc*, %struct.whc** %2, align 8
  %90 = getelementptr inbounds %struct.whc, %struct.whc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.whc*, %struct.whc** %2, align 8
  %95 = getelementptr inbounds %struct.whc, %struct.whc* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @release_mem_region(i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.whc*, %struct.whc** %2, align 8
  %101 = getelementptr inbounds %struct.whc, %struct.whc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.whc*, %struct.whc** %2, align 8
  %106 = getelementptr inbounds %struct.whc, %struct.whc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @destroy_workqueue(i64 %107)
  br label %109

109:                                              ; preds = %104, %99
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @pzl_clean_up(%struct.whc*) #1

declare dso_local i32 @asl_clean_up(%struct.whc*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @destroy_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
