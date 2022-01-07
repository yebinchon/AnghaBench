; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-clk-measure.c_meson_measure_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-clk-measure.c_meson_measure_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_msr_id = type { i32, %struct.meson_msr* }
%struct.meson_msr = type { i32 }

@measure_lock = common dso_local global i32 0, align 4
@MSR_CLK_REG0 = common dso_local global i32 0, align 4
@MSR_DURATION = common dso_local global i32 0, align 4
@MSR_CLK_SRC = common dso_local global i32 0, align 4
@MSR_RUN = common dso_local global i32 0, align 4
@MSR_ENABLE = common dso_local global i32 0, align 4
@MSR_BUSY = common dso_local global i32 0, align 4
@MSR_CLK_REG2 = common dso_local global i32 0, align 4
@MSR_VAL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_msr_id*, i32)* @meson_measure_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_measure_id(%struct.meson_msr_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.meson_msr_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_msr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.meson_msr_id* %0, %struct.meson_msr_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.meson_msr_id*, %struct.meson_msr_id** %4, align 8
  %10 = getelementptr inbounds %struct.meson_msr_id, %struct.meson_msr_id* %9, i32 0, i32 1
  %11 = load %struct.meson_msr*, %struct.meson_msr** %10, align 8
  store %struct.meson_msr* %11, %struct.meson_msr** %6, align 8
  %12 = call i32 @mutex_lock_interruptible(i32* @measure_lock)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load %struct.meson_msr*, %struct.meson_msr** %6, align 8
  %19 = getelementptr inbounds %struct.meson_msr, %struct.meson_msr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MSR_CLK_REG0, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 0)
  %23 = load %struct.meson_msr*, %struct.meson_msr** %6, align 8
  %24 = getelementptr inbounds %struct.meson_msr, %struct.meson_msr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MSR_CLK_REG0, align 4
  %27 = load i32, i32* @MSR_DURATION, align 4
  %28 = load i32, i32* @MSR_DURATION, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, 1
  %31 = call i32 @FIELD_PREP(i32 %28, i32 %30)
  %32 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 %31)
  %33 = load %struct.meson_msr*, %struct.meson_msr** %6, align 8
  %34 = getelementptr inbounds %struct.meson_msr, %struct.meson_msr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MSR_CLK_REG0, align 4
  %37 = load i32, i32* @MSR_CLK_SRC, align 4
  %38 = load i32, i32* @MSR_CLK_SRC, align 4
  %39 = load %struct.meson_msr_id*, %struct.meson_msr_id** %4, align 8
  %40 = getelementptr inbounds %struct.meson_msr_id, %struct.meson_msr_id* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @FIELD_PREP(i32 %38, i32 %41)
  %43 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %42)
  %44 = load %struct.meson_msr*, %struct.meson_msr** %6, align 8
  %45 = getelementptr inbounds %struct.meson_msr, %struct.meson_msr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MSR_CLK_REG0, align 4
  %48 = load i32, i32* @MSR_RUN, align 4
  %49 = load i32, i32* @MSR_ENABLE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MSR_RUN, align 4
  %52 = load i32, i32* @MSR_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.meson_msr*, %struct.meson_msr** %6, align 8
  %56 = getelementptr inbounds %struct.meson_msr, %struct.meson_msr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MSR_CLK_REG0, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MSR_BUSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @regmap_read_poll_timeout(i32 %57, i32 %58, i32 %59, i32 %65, i32 10, i32 10000)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %17
  %70 = call i32 @mutex_unlock(i32* @measure_lock)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %17
  %73 = load %struct.meson_msr*, %struct.meson_msr** %6, align 8
  %74 = getelementptr inbounds %struct.meson_msr, %struct.meson_msr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MSR_CLK_REG0, align 4
  %77 = load i32, i32* @MSR_ENABLE, align 4
  %78 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.meson_msr*, %struct.meson_msr** %6, align 8
  %80 = getelementptr inbounds %struct.meson_msr, %struct.meson_msr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MSR_CLK_REG2, align 4
  %83 = call i32 @regmap_read(i32 %81, i32 %82, i32* %7)
  %84 = call i32 @mutex_unlock(i32* @measure_lock)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @MSR_VAL_MASK, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %100

91:                                               ; preds = %72
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @MSR_VAL_MASK, align 4
  %94 = and i32 %92, %93
  %95 = zext i32 %94 to i64
  %96 = mul i64 %95, 1000000
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %88, %69, %15
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
