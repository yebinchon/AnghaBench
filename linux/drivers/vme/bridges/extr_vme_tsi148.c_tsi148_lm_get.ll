; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_lm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_lm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_LMBAU = common dso_local global i64 0, align 8
@TSI148_LCSR_LMBAL = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_M = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A64 = common dso_local global i32 0, align 4
@VME_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_NPRIV = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_DATA = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i64*, i32*, i32*)* @tsi148_lm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_lm_get(%struct.vme_lm_resource* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.vme_lm_resource*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %15 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  store %struct.tsi148_driver* %18, %struct.tsi148_driver** %13, align 8
  %19 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %20 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.tsi148_driver*, %struct.tsi148_driver** %13, align 8
  %23 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TSI148_LCSR_LMBAU, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread32be(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.tsi148_driver*, %struct.tsi148_driver** %13, align 8
  %29 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TSI148_LCSR_LMBAL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @ioread32be(i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.tsi148_driver*, %struct.tsi148_driver** %13, align 8
  %35 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @ioread32be(i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i64*, i64** %6, align 8
  %43 = call i32 @reg_join(i32 %40, i32 %41, i64* %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @TSI148_LCSR_LMAT_EN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @TSI148_LCSR_LMAT_AS_A16, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @VME_A16, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @TSI148_LCSR_LMAT_AS_A24, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* @VME_A24, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @TSI148_LCSR_LMAT_AS_A32, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* @VME_A32, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %71
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @TSI148_LCSR_LMAT_AS_A64, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @VME_A64, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %82
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @TSI148_LCSR_LMAT_SUPR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @VME_SUPER, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @TSI148_LCSR_LMAT_NPRIV, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @VME_USER, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @TSI148_LCSR_LMAT_PGM, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* @VME_PROG, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @TSI148_LCSR_LMAT_DATA, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* @VME_DATA, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %135 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %12, align 4
  ret i32 %137
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @reg_join(i32, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
