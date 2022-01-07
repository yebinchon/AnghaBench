; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_lm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_lm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@LM_BS = common dso_local global i64 0, align 8
@LM_CTL = common dso_local global i64 0, align 8
@CA91CX42_LM_CTL_EN = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_AS_M = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_AS_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_AS_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_AS_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_NPRIV = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@CA91CX42_LM_CTL_DATA = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i64*, i32*, i32*)* @ca91cx42_lm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_lm_get(%struct.vme_lm_resource* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.vme_lm_resource*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %13 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %15, align 8
  store %struct.ca91cx42_driver* %16, %struct.ca91cx42_driver** %11, align 8
  %17 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %18 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %11, align 8
  %21 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LM_BS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread32(i64 %24)
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  %28 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %11, align 8
  %29 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LM_CTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @ioread32(i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @CA91CX42_LM_CTL_EN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @CA91CX42_LM_CTL_AS_M, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @CA91CX42_LM_CTL_AS_A16, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @VME_A16, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CA91CX42_LM_CTL_AS_M, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CA91CX42_LM_CTL_AS_A24, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @VME_A24, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CA91CX42_LM_CTL_AS_M, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @CA91CX42_LM_CTL_AS_A32, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @VME_A32, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32*, i32** %8, align 8
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @CA91CX42_LM_CTL_SUPR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* @VME_SUPER, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @CA91CX42_LM_CTL_NPRIV, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @VME_USER, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @CA91CX42_LM_CTL_PGM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @VME_PROG, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @CA91CX42_LM_CTL_DATA, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @VME_DATA, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %109 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
