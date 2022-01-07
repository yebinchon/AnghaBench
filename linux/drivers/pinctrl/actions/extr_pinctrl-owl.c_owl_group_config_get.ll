; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.owl_pingroup = type { i32 }
%struct.owl_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.owl_pingroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @owl_group_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_group_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.owl_pingroup*, align 8
  %9 = alloca %struct.owl_pinctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.owl_pinctrl* %17, %struct.owl_pinctrl** %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %9, align 8
  %22 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.owl_pingroup*, %struct.owl_pingroup** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %25, i64 %27
  store %struct.owl_pingroup* %28, %struct.owl_pingroup** %8, align 8
  %29 = load %struct.owl_pingroup*, %struct.owl_pingroup** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @owl_group_pinconf_reg(%struct.owl_pingroup* %29, i32 %30, i32* %11, i32* %12, i32* %13)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %3
  %37 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @owl_read_field(%struct.owl_pinctrl* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.owl_pingroup*, %struct.owl_pingroup** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @owl_group_pinconf_val2arg(%struct.owl_pingroup* %42, i32 %43, i32* %14)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %4, align 4
  br label %55

49:                                               ; preds = %36
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i64 @pinconf_to_config_packed(i32 %50, i32 %51)
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %47, %34
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @owl_group_pinconf_reg(%struct.owl_pingroup*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @owl_read_field(%struct.owl_pinctrl*, i32, i32, i32) #1

declare dso_local i32 @owl_group_pinconf_val2arg(%struct.owl_pingroup*, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
