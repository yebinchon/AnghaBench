; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c__mcp16502_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c__mcp16502_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }

@MCP16502_MODE_FPWM = common dso_local global i32 0, align 4
@MCP16502_MODE_AUTO_PFM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCP16502_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @_mcp16502_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mcp16502_set_mode(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @mcp16502_get_reg(%struct.regulator_dev* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %23 [
    i32 128, label %19
    i32 129, label %21
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @MCP16502_MODE_FPWM, align 4
  store i32 %20, i32* %8, align 4
  br label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @MCP16502_MODE_AUTO_PFM, align 4
  store i32 %22, i32* %8, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %21, %19
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %28 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MCP16502_MODE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %23, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @mcp16502_get_reg(%struct.regulator_dev*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
