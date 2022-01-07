; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.ahc_softc*, %struct.ahc_softc*, %struct.ahc_softc*, i32, %struct.ahc_softc**, %struct.ahc_softc**, i32, i32, i32 }
%struct.ahc_tmode_tstate = type { i32, %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate*, i32, %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate**, i32, i32, i32 }

@AHC_NUM_TARGETS = common dso_local global i32 0, align 4
@AHC_NUM_LUNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_free(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahc_tmode_tstate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %8 [
    i32 5, label %9
    i32 4, label %13
    i32 3, label %23
    i32 2, label %45
    i32 1, label %52
    i32 0, label %53
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = bitcast %struct.ahc_softc* %10 to %struct.ahc_tmode_tstate*
  %12 = call i32 @ahc_shutdown(%struct.ahc_tmode_tstate* %11)
  br label %13

13:                                               ; preds = %1, %9
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = bitcast %struct.ahc_softc* %14 to %struct.ahc_tmode_tstate*
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ahc_dmamap_unload(%struct.ahc_tmode_tstate* %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %1, %13
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %25 = bitcast %struct.ahc_softc* %24 to %struct.ahc_tmode_tstate*
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ahc_dmamem_free(%struct.ahc_tmode_tstate* %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %37 = bitcast %struct.ahc_softc* %36 to %struct.ahc_tmode_tstate*
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ahc_dmamap_destroy(%struct.ahc_tmode_tstate* %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %1, %23
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %47 = bitcast %struct.ahc_softc* %46 to %struct.ahc_tmode_tstate*
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ahc_dma_tag_destroy(%struct.ahc_tmode_tstate* %47, i32 %50)
  br label %52

52:                                               ; preds = %1, %45
  br label %54

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %56 = bitcast %struct.ahc_softc* %55 to %struct.ahc_tmode_tstate*
  %57 = call i32 @ahc_platform_free(%struct.ahc_tmode_tstate* %56)
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %59 = bitcast %struct.ahc_softc* %58 to %struct.ahc_tmode_tstate*
  %60 = call i32 @ahc_fini_scbdata(%struct.ahc_tmode_tstate* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %80, %54
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @AHC_NUM_TARGETS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %66, i32 0, i32 6
  %68 = load %struct.ahc_softc**, %struct.ahc_softc*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ahc_softc*, %struct.ahc_softc** %68, i64 %70
  %72 = load %struct.ahc_softc*, %struct.ahc_softc** %71, align 8
  %73 = bitcast %struct.ahc_softc* %72 to %struct.ahc_tmode_tstate*
  store %struct.ahc_tmode_tstate* %73, %struct.ahc_tmode_tstate** %4, align 8
  %74 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %4, align 8
  %75 = icmp ne %struct.ahc_tmode_tstate* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %4, align 8
  %78 = call i32 @kfree(%struct.ahc_tmode_tstate* %77)
  br label %79

79:                                               ; preds = %76, %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %84, i32 0, i32 2
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %85, align 8
  %87 = icmp ne %struct.ahc_softc* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %89, i32 0, i32 2
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %90, align 8
  %92 = bitcast %struct.ahc_softc* %91 to %struct.ahc_tmode_tstate*
  %93 = call i32 @kfree(%struct.ahc_tmode_tstate* %92)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %96 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %95, i32 0, i32 1
  %97 = load %struct.ahc_softc*, %struct.ahc_softc** %96, align 8
  %98 = icmp ne %struct.ahc_softc* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %101 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %100, i32 0, i32 1
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %101, align 8
  %103 = bitcast %struct.ahc_softc* %102 to %struct.ahc_tmode_tstate*
  %104 = call i32 @kfree(%struct.ahc_tmode_tstate* %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %107 = bitcast %struct.ahc_softc* %106 to %struct.ahc_tmode_tstate*
  %108 = call i32 @kfree(%struct.ahc_tmode_tstate* %107)
  ret void
}

declare dso_local i32 @ahc_shutdown(%struct.ahc_tmode_tstate*) #1

declare dso_local i32 @ahc_dmamap_unload(%struct.ahc_tmode_tstate*, i32, i32) #1

declare dso_local i32 @ahc_dmamem_free(%struct.ahc_tmode_tstate*, i32, i32, i32) #1

declare dso_local i32 @ahc_dmamap_destroy(%struct.ahc_tmode_tstate*, i32, i32) #1

declare dso_local i32 @ahc_dma_tag_destroy(%struct.ahc_tmode_tstate*, i32) #1

declare dso_local i32 @ahc_platform_free(%struct.ahc_tmode_tstate*) #1

declare dso_local i32 @ahc_fini_scbdata(%struct.ahc_tmode_tstate*) #1

declare dso_local i32 @kfree(%struct.ahc_tmode_tstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
