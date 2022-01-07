; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_lm_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_lm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64, i32**, i32** }

@LINT_EN = common dso_local global i64 0, align 8
@CA91CX42_LINT_LM = common dso_local global i32* null, align 8
@LINT_STAT = common dso_local global i64 0, align 8
@CA91CX42_LINT_LM0 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM1 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM2 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM3 = common dso_local global i32 0, align 4
@LM_CTL = common dso_local global i64 0, align 8
@CA91CX42_LM_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i32)* @ca91cx42_lm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_lm_detach(%struct.vme_lm_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.vme_lm_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %8 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  store %struct.ca91cx42_driver* %11, %struct.ca91cx42_driver** %6, align 8
  %12 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %13 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %16 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LINT_EN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** @CA91CX42_LINT_LM, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %31 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LINT_EN, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %29, i64 %34)
  %36 = load i32*, i32** @CA91CX42_LINT_LM, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %42 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LINT_STAT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @iowrite32(i32 %40, i64 %45)
  %47 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %48 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* null, i32** %52, align 8
  %53 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %54 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @CA91CX42_LINT_LM0, align 4
  %61 = load i32, i32* @CA91CX42_LINT_LM1, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CA91CX42_LINT_LM2, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CA91CX42_LINT_LM3, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %59, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %2
  %70 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %71 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LM_CTL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @ioread32(i64 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @CA91CX42_LM_CTL_EN, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %82 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @LM_CTL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @iowrite32(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %69, %2
  %88 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %89 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
