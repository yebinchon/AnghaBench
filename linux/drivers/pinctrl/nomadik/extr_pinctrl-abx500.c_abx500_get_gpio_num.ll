; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_get_gpio_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_get_gpio_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_pinctrl_soc_data = type { i32, %struct.abx500_pinrange* }
%struct.abx500_pinrange = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_pinctrl_soc_data*)* @abx500_get_gpio_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_get_gpio_num(%struct.abx500_pinctrl_soc_data* %0) #0 {
  %2 = alloca %struct.abx500_pinctrl_soc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.abx500_pinrange*, align 8
  store %struct.abx500_pinctrl_soc_data* %0, %struct.abx500_pinctrl_soc_data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %53, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.abx500_pinctrl_soc_data*, %struct.abx500_pinctrl_soc_data** %2, align 8
  %13 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, %struct.abx500_pinctrl_soc_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = load %struct.abx500_pinctrl_soc_data*, %struct.abx500_pinctrl_soc_data** %2, align 8
  %18 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, %struct.abx500_pinctrl_soc_data* %17, i32 0, i32 1
  %19 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %19, i64 %21
  store %struct.abx500_pinrange* %22, %struct.abx500_pinrange** %9, align 8
  %23 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %9, align 8
  %24 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %9, align 8
  %27 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %9, align 8
  %30 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %28, %31
  %33 = sub i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %16
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %16
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %10

56:                                               ; preds = %10
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sub i32 %57, %58
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
