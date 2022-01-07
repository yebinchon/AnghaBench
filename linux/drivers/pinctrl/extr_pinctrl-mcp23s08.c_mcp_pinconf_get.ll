; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mcp23s08 = type { i32 }

@MCP_GPPU = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @mcp_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mcp23s08*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.mcp23s08* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.mcp23s08* %14, %struct.mcp23s08** %8, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pinconf_to_config_param(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %35 [
    i32 128, label %19
  ]

19:                                               ; preds = %3
  %20 = load %struct.mcp23s08*, %struct.mcp23s08** %8, align 8
  %21 = load i32, i32* @MCP_GPPU, align 4
  %22 = call i32 @mcp_read(%struct.mcp23s08* %20, i32 %21, i32* %10)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %11, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %27
  %39 = load i64*, i64** %7, align 8
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %35, %25
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.mcp23s08* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @mcp_read(%struct.mcp23s08*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
