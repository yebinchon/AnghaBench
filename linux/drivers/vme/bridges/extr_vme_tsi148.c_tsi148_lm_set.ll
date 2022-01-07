; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_lm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_lm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, i32, %struct.vme_bridge* }
%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64, i64* }

@.str = private unnamed_addr constant [49 x i8] c"Location monitor callback attached, can't reset\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_SUPR = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_NPRIV = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_PGM = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_DATA = common dso_local global i32 0, align 4
@TSI148_LCSR_LMBAU = common dso_local global i64 0, align 8
@TSI148_LCSR_LMBAL = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i64, i32, i32)* @tsi148_lm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_lm_set(%struct.vme_lm_resource* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vme_lm_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vme_bridge*, align 8
  %15 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %17 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %16, i32 0, i32 2
  %18 = load %struct.vme_bridge*, %struct.vme_bridge** %17, align 8
  store %struct.vme_bridge* %18, %struct.vme_bridge** %14, align 8
  %19 = load %struct.vme_bridge*, %struct.vme_bridge** %14, align 8
  %20 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %19, i32 0, i32 1
  %21 = load %struct.tsi148_driver*, %struct.tsi148_driver** %20, align 8
  store %struct.tsi148_driver* %21, %struct.tsi148_driver** %15, align 8
  %22 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %23 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %51, %4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %28 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load %struct.tsi148_driver*, %struct.tsi148_driver** %15, align 8
  %33 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %42 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.vme_bridge*, %struct.vme_bridge** %14, align 8
  %45 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %145

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %72 [
    i32 131, label %56
    i32 130, label %60
    i32 129, label %64
    i32 128, label %68
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* @TSI148_LCSR_LMAT_AS_A16, align 4
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %82

60:                                               ; preds = %54
  %61 = load i32, i32* @TSI148_LCSR_LMAT_AS_A24, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %82

64:                                               ; preds = %54
  %65 = load i32, i32* @TSI148_LCSR_LMAT_AS_A32, align 4
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %82

68:                                               ; preds = %54
  %69 = load i32, i32* @TSI148_LCSR_LMAT_AS_A64, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %82

72:                                               ; preds = %54
  %73 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %74 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.vme_bridge*, %struct.vme_bridge** %14, align 8
  %77 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %145

82:                                               ; preds = %68, %64, %60, %56
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @VME_SUPER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @TSI148_LCSR_LMAT_SUPR, align 4
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @VME_USER, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @TSI148_LCSR_LMAT_NPRIV, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @VME_PROG, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @TSI148_LCSR_LMAT_PGM, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @VME_DATA, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @TSI148_LCSR_LMAT_DATA, align 4
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @reg_split(i64 %119, i32* %10, i32* %11)
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.tsi148_driver*, %struct.tsi148_driver** %15, align 8
  %123 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TSI148_LCSR_LMBAU, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @iowrite32be(i32 %121, i64 %126)
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.tsi148_driver*, %struct.tsi148_driver** %15, align 8
  %130 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TSI148_LCSR_LMBAL, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @iowrite32be(i32 %128, i64 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.tsi148_driver*, %struct.tsi148_driver** %15, align 8
  %137 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @iowrite32be(i32 %135, i64 %140)
  %142 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %143 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %142, i32 0, i32 1
  %144 = call i32 @mutex_unlock(i32* %143)
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %118, %72, %40
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reg_split(i64, i32*, i32*) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
