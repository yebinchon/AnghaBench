; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_find_pinconf_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_find_pinconf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pin_config_map = type { i32, i32, i32 }

@pin_config_map = common dso_local global %struct.aspeed_pin_config_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aspeed_pin_config_map* (i32, i32, i32)* @find_pinconf_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aspeed_pin_config_map* @find_pinconf_map(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aspeed_pin_config_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aspeed_pin_config_map*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** @pin_config_map, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.aspeed_pin_config_map* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** @pin_config_map, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.aspeed_pin_config_map, %struct.aspeed_pin_config_map* %17, i64 %19
  store %struct.aspeed_pin_config_map* %20, %struct.aspeed_pin_config_map** %9, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %43 [
    i32 129, label %22
    i32 128, label %36
  ]

22:                                               ; preds = %16
  %23 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  %24 = getelementptr inbounds %struct.aspeed_pin_config_map, %struct.aspeed_pin_config_map* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  %29 = getelementptr inbounds %struct.aspeed_pin_config_map, %struct.aspeed_pin_config_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ true, %22 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  br label %43

36:                                               ; preds = %16
  %37 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  %38 = getelementptr inbounds %struct.aspeed_pin_config_map, %struct.aspeed_pin_config_map* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %16, %36, %33
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  %46 = getelementptr inbounds %struct.aspeed_pin_config_map, %struct.aspeed_pin_config_map* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  store %struct.aspeed_pin_config_map* %53, %struct.aspeed_pin_config_map** %4, align 8
  br label %59

54:                                               ; preds = %49, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %11

58:                                               ; preds = %11
  store %struct.aspeed_pin_config_map* null, %struct.aspeed_pin_config_map** %4, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %4, align 8
  ret %struct.aspeed_pin_config_map* %60
}

declare dso_local i32 @ARRAY_SIZE(%struct.aspeed_pin_config_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
