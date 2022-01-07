; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_of_parse_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_of_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regulator_config = type { %struct.gpio_desc*, %struct.slg51000* }
%struct.gpio_desc = type { i32 }
%struct.slg51000 = type { i32 }

@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"enable-gpios\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gpio-en-ldo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @slg51000_of_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slg51000_of_parse_cb(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.regulator_config*, align 8
  %7 = alloca %struct.slg51000*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %5, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %6, align 8
  %10 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %11 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  %12 = load %struct.slg51000*, %struct.slg51000** %11, align 8
  store %struct.slg51000* %12, %struct.slg51000** %7, align 8
  %13 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %14 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %17 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.gpio_desc* @devm_gpiod_get_from_of_node(i32 %18, %struct.device_node* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.gpio_desc* %21, %struct.gpio_desc** %8, align 8
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %23 = call i32 @IS_ERR(%struct.gpio_desc* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %3
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %27 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %28 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %27, i32 0, i32 0
  store %struct.gpio_desc* %26, %struct.gpio_desc** %28, align 8
  %29 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %30 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %33 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %32, i32 0, i32 0
  %34 = load %struct.gpio_desc*, %struct.gpio_desc** %33, align 8
  %35 = call i32 @devm_gpiod_unhinge(i32 %31, %struct.gpio_desc* %34)
  br label %36

36:                                               ; preds = %25, %3
  ret i32 0
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_from_of_node(i32, %struct.device_node*, i8*, i32, i32, i8*) #1

declare dso_local i32 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @devm_gpiod_unhinge(i32, %struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
