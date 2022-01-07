; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_find_pinconf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_find_pinconf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pin_config = type { i32 }
%struct.aspeed_pinctrl_data = type { i32, %struct.aspeed_pin_config* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aspeed_pin_config* (%struct.aspeed_pinctrl_data*, i32, i32)* @find_pinconf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aspeed_pin_config* @find_pinconf_config(%struct.aspeed_pinctrl_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aspeed_pin_config*, align 8
  %5 = alloca %struct.aspeed_pinctrl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aspeed_pinctrl_data* %0, %struct.aspeed_pinctrl_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %44, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %5, align 8
  %12 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %5, align 8
  %18 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %17, i32 0, i32 1
  %19 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %19, i64 %21
  %23 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %16, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %5, align 8
  %29 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %28, i32 0, i32 1
  %30 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %30, i64 %32
  %34 = call i64 @pin_in_config_range(i32 %27, %struct.aspeed_pin_config* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %5, align 8
  %38 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %37, i32 0, i32 1
  %39 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %39, i64 %41
  store %struct.aspeed_pin_config* %42, %struct.aspeed_pin_config** %4, align 8
  br label %48

43:                                               ; preds = %26, %15
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %9

47:                                               ; preds = %9
  store %struct.aspeed_pin_config* null, %struct.aspeed_pin_config** %4, align 8
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %4, align 8
  ret %struct.aspeed_pin_config* %49
}

declare dso_local i64 @pin_in_config_range(i32, %struct.aspeed_pin_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
