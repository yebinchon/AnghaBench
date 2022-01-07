; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rza1_pinctrl = type { i32 }
%struct.rza1_mux_conf = type { i32 }
%struct.function_desc = type { i64 }
%struct.group_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @rza1_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rza1_pinctrl*, align 8
  %9 = alloca %struct.rza1_mux_conf*, align 8
  %10 = alloca %struct.function_desc*, align 8
  %11 = alloca %struct.group_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.rza1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.rza1_pinctrl* %15, %struct.rza1_pinctrl** %8, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev* %16, i32 %17)
  store %struct.group_desc* %18, %struct.group_desc** %11, align 8
  %19 = load %struct.group_desc*, %struct.group_desc** %11, align 8
  %20 = icmp ne %struct.group_desc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev* %25, i32 %26)
  store %struct.function_desc* %27, %struct.function_desc** %10, align 8
  %28 = load %struct.function_desc*, %struct.function_desc** %10, align 8
  %29 = icmp ne %struct.function_desc* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load %struct.function_desc*, %struct.function_desc** %10, align 8
  %35 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.rza1_mux_conf*
  store %struct.rza1_mux_conf* %37, %struct.rza1_mux_conf** %9, align 8
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %56, %33
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.group_desc*, %struct.group_desc** %11, align 8
  %41 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %8, align 8
  %46 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %46, i64 %48
  %50 = call i32 @rza1_pin_mux_single(%struct.rza1_pinctrl* %45, %struct.rza1_mux_conf* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %38

59:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %53, %30, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.rza1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @rza1_pin_mux_single(%struct.rza1_pinctrl*, %struct.rza1_mux_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
