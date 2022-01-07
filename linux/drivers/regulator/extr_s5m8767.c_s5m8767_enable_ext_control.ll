; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_enable_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_enable_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5m8767_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.regulator_dev = type { i32 }

@S5M8767_BUCK9 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S5M8767_ENCTRL_MASK = common dso_local global i32 0, align 4
@S5M8767_ENCTRL_USE_GPIO = common dso_local global i32 0, align 4
@S5M8767_ENCTRL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5m8767_info*, %struct.regulator_dev*)* @s5m8767_enable_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5m8767_enable_ext_control(%struct.s5m8767_info* %0, %struct.regulator_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5m8767_info*, align 8
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s5m8767_info* %0, %struct.s5m8767_info** %4, align 8
  store %struct.regulator_dev* %1, %struct.regulator_dev** %5, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @S5M8767_BUCK9, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.s5m8767_info*, %struct.s5m8767_info** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @s5m8767_get_register(%struct.s5m8767_info* %19, i32 %20, i32* %8, i32* %9)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load %struct.s5m8767_info*, %struct.s5m8767_info** %4, align 8
  %28 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @S5M8767_ENCTRL_MASK, align 4
  %34 = load i32, i32* @S5M8767_ENCTRL_USE_GPIO, align 4
  %35 = load i32, i32* @S5M8767_ENCTRL_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %26, %24, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @s5m8767_get_register(%struct.s5m8767_info*, i32, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
