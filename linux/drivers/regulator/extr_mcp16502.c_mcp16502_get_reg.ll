; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c_mcp16502_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c_mcp16502_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }

@MCP16502_OFFSET_MODE_A = common dso_local global i32 0, align 4
@MCP16502_OFFSET_MODE_LPM = common dso_local global i32 0, align 4
@MCP16502_OFFSET_MODE_HIB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mcp16502_get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp16502_get_reg(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = call i32 @rdev_get_id(%struct.regulator_dev* %7)
  %9 = call i32 @MCP16502_BASE(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %23 [
    i32 130, label %11
    i32 128, label %15
    i32 129, label %19
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MCP16502_OFFSET_MODE_A, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MCP16502_OFFSET_MODE_LPM, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MCP16502_OFFSET_MODE_HIB, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %19, %15, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @MCP16502_BASE(i32) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
