; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sunxi_pinctrl = type { %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_group* }
%struct.sunxi_pinctrl_function = type { i32 }
%struct.sunxi_pinctrl_group = type { i32, i32 }
%struct.sunxi_desc_function = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @sunxi_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sunxi_pinctrl*, align 8
  %9 = alloca %struct.sunxi_pinctrl_group*, align 8
  %10 = alloca %struct.sunxi_pinctrl_function*, align 8
  %11 = alloca %struct.sunxi_desc_function*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.sunxi_pinctrl* %13, %struct.sunxi_pinctrl** %8, align 8
  %14 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %8, align 8
  %15 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %16, i64 %18
  store %struct.sunxi_pinctrl_group* %19, %struct.sunxi_pinctrl_group** %9, align 8
  %20 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %8, align 8
  %21 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %22, i64 %24
  store %struct.sunxi_pinctrl_function* %25, %struct.sunxi_pinctrl_function** %10, align 8
  %26 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %8, align 8
  %27 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %9, align 8
  %28 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %10, align 8
  %31 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_name(%struct.sunxi_pinctrl* %26, i32 %29, i32 %32)
  store %struct.sunxi_desc_function* %33, %struct.sunxi_desc_function** %11, align 8
  %34 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %11, align 8
  %35 = icmp ne %struct.sunxi_desc_function* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %3
  %40 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %41 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %9, align 8
  %42 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %11, align 8
  %45 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sunxi_pmx_set(%struct.pinctrl_dev* %40, i32 %43, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %36
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_name(%struct.sunxi_pinctrl*, i32, i32) #1

declare dso_local i32 @sunxi_pmx_set(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
