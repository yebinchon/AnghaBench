; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_lm_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_lm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64, i32**, i32** }

@TSI148_LCSR_INTEN = common dso_local global i64 0, align 8
@TSI148_LCSR_INTEN_LMEN = common dso_local global i32* null, align 8
@TSI148_LCSR_INTEO = common dso_local global i64 0, align 8
@TSI148_LCSR_INTEO_LMEO = common dso_local global i32* null, align 8
@TSI148_LCSR_INTC_LMC = common dso_local global i32* null, align 8
@TSI148_LCSR_INTC = common dso_local global i64 0, align 8
@TSI148_LCSR_INTS_LM0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM3S = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i32)* @tsi148_lm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_lm_detach(%struct.vme_lm_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.vme_lm_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %9 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  store %struct.tsi148_driver* %12, %struct.tsi148_driver** %7, align 8
  %13 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %14 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %17 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32be(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** @TSI148_LCSR_INTEN_LMEN, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %32 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32be(i32 %30, i64 %35)
  %37 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %38 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @ioread32be(i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** @TSI148_LCSR_INTEO_LMEO, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %53 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32be(i32 %51, i64 %56)
  %58 = load i32*, i32** @TSI148_LCSR_INTC_LMC, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %64 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TSI148_LCSR_INTC, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @iowrite32be(i32 %62, i64 %67)
  %69 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %70 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %69, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* null, i32** %74, align 8
  %75 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %76 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @TSI148_LCSR_INTS_LM0S, align 4
  %83 = load i32, i32* @TSI148_LCSR_INTS_LM1S, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @TSI148_LCSR_INTS_LM2S, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @TSI148_LCSR_INTS_LM3S, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %81, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %2
  %92 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %93 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @ioread32be(i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @TSI148_LCSR_LMAT_EN, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %104 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @iowrite32be(i32 %102, i64 %107)
  br label %109

109:                                              ; preds = %91, %2
  %110 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %111 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
