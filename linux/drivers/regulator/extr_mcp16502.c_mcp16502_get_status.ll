; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c_mcp16502_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c_mcp16502_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }

@MCP16502_FLT = common dso_local global i32 0, align 4
@REGULATOR_STATUS_ERROR = common dso_local global i32 0, align 4
@MCP16502_ENS = common dso_local global i32 0, align 4
@REGULATOR_STATUS_ON = common dso_local global i32 0, align 4
@REGULATOR_STATUS_OFF = common dso_local global i32 0, align 4
@REGULATOR_STATUS_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @mcp16502_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp16502_get_status(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  %11 = call i32 @MCP16502_STAT_BASE(i32 %10)
  %12 = call i32 @regmap_read(i32 %8, i32 %11, i32* %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MCP16502_FLT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @REGULATOR_STATUS_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MCP16502_ENS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @REGULATOR_STATUS_ON, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MCP16502_ENS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @REGULATOR_STATUS_OFF, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @REGULATOR_STATUS_UNDEFINED, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %36, %29, %22, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MCP16502_STAT_BASE(i32) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
