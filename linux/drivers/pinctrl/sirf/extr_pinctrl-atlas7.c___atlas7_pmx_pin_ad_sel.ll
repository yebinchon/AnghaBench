; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c___atlas7_pmx_pin_ad_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c___atlas7_pmx_pin_ad_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlas7_pmx = type { i64* }
%struct.atlas7_pad_config = type { i64, i64 }

@ANA_CLEAR_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"bank:%d reg:0x%04x val:0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atlas7_pmx*, %struct.atlas7_pad_config*, i64, i64)* @__atlas7_pmx_pin_ad_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__atlas7_pmx_pin_ad_sel(%struct.atlas7_pmx* %0, %struct.atlas7_pad_config* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.atlas7_pmx*, align 8
  %6 = alloca %struct.atlas7_pad_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.atlas7_pmx* %0, %struct.atlas7_pmx** %5, align 8
  store %struct.atlas7_pad_config* %1, %struct.atlas7_pad_config** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* @ANA_CLEAR_MASK, align 8
  %11 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %12 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 %10, %13
  %15 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %16 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %22 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @CLR_REG(i64 %23)
  %25 = add nsw i64 %20, %24
  %26 = call i32 @writel(i64 %14, i64 %25)
  %27 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %28 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %34 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i64 @readl(i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* @ANA_CLEAR_MASK, align 8
  %39 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %40 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 %38, %41
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %9, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %49 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = shl i64 %47, %50
  %52 = or i64 %46, %51
  %53 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %54 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %60 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel(i64 %52, i64 %62)
  %64 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %65 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %71 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i64 @readl(i64 %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %6, align 8
  %77 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %75, i64 %78, i64 %79)
  ret i32 0
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @CLR_REG(i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
