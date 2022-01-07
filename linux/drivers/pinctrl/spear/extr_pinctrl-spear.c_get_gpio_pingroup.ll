; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_get_gpio_pingroup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_get_gpio_pingroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_gpio_pingroup = type { i32, i32* }
%struct.spear_pmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.spear_gpio_pingroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spear_gpio_pingroup* (%struct.spear_pmx*, i32)* @get_gpio_pingroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spear_gpio_pingroup* @get_gpio_pingroup(%struct.spear_pmx* %0, i32 %1) #0 {
  %3 = alloca %struct.spear_gpio_pingroup*, align 8
  %4 = alloca %struct.spear_pmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spear_gpio_pingroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spear_pmx* %0, %struct.spear_pmx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %10 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %12, align 8
  %14 = icmp ne %struct.spear_gpio_pingroup* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.spear_gpio_pingroup* null, %struct.spear_gpio_pingroup** %3, align 8
  br label %61

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %57, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %20 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %17
  %26 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %27 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.spear_gpio_pingroup, %struct.spear_gpio_pingroup* %30, i64 %32
  store %struct.spear_gpio_pingroup* %33, %struct.spear_gpio_pingroup** %6, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %53, %25
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %6, align 8
  %37 = getelementptr inbounds %struct.spear_gpio_pingroup, %struct.spear_gpio_pingroup* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %6, align 8
  %42 = getelementptr inbounds %struct.spear_gpio_pingroup, %struct.spear_gpio_pingroup* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %6, align 8
  store %struct.spear_gpio_pingroup* %51, %struct.spear_gpio_pingroup** %3, align 8
  br label %61

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %34

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %17

60:                                               ; preds = %17
  store %struct.spear_gpio_pingroup* null, %struct.spear_gpio_pingroup** %3, align 8
  br label %61

61:                                               ; preds = %60, %50, %15
  %62 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %3, align 8
  ret %struct.spear_gpio_pingroup* %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
