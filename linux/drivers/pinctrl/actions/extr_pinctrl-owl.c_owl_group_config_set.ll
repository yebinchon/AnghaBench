; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.owl_pingroup = type { i32 }
%struct.owl_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.owl_pingroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @owl_group_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_group_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.owl_pingroup*, align 8
  %11 = alloca %struct.owl_pinctrl*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %21 = call %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %20)
  store %struct.owl_pinctrl* %21, %struct.owl_pinctrl** %11, align 8
  %22 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %11, align 8
  %23 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.owl_pingroup*, %struct.owl_pingroup** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %26, i64 %28
  store %struct.owl_pingroup* %29, %struct.owl_pingroup** %10, align 8
  store i32 0, i32* %19, align 4
  br label %30

30:                                               ; preds = %77, %4
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  %35 = load i64*, i64** %8, align 8
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @pinconf_to_config_param(i64 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pinconf_to_config_argument(i64 %45)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.owl_pingroup*, %struct.owl_pingroup** %10, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @owl_group_pinconf_reg(%struct.owl_pingroup* %47, i32 %48, i32* %14, i32* %15, i32* %16)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %5, align 4
  br label %81

54:                                               ; preds = %34
  %55 = load %struct.owl_pingroup*, %struct.owl_pingroup** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @owl_group_pinconf_arg2val(%struct.owl_pingroup* %55, i32 %56, i32* %17)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %5, align 4
  br label %81

62:                                               ; preds = %54
  %63 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %11, align 8
  %64 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %63, i32 0, i32 0
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @raw_spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @owl_write_field(%struct.owl_pinctrl* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %11, align 8
  %74 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %73, i32 0, i32 0
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @raw_spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %19, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %19, align 4
  br label %30

80:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %60, %52
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @owl_group_pinconf_reg(%struct.owl_pingroup*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @owl_group_pinconf_arg2val(%struct.owl_pingroup*, i32, i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_write_field(%struct.owl_pinctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
