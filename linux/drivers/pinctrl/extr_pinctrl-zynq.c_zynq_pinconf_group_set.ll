; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.zynq_pinctrl = type { %struct.zynq_pctrl_group* }
%struct.zynq_pctrl_group = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @zynq_pinconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_pinconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zynq_pinctrl*, align 8
  %13 = alloca %struct.zynq_pctrl_group*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %15 = call %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.zynq_pinctrl* %15, %struct.zynq_pinctrl** %12, align 8
  %16 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %12, align 8
  %17 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %16, i32 0, i32 0
  %18 = load %struct.zynq_pctrl_group*, %struct.zynq_pctrl_group** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.zynq_pctrl_group, %struct.zynq_pctrl_group* %18, i64 %20
  store %struct.zynq_pctrl_group* %21, %struct.zynq_pctrl_group** %13, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %45, %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.zynq_pctrl_group*, %struct.zynq_pctrl_group** %13, align 8
  %25 = getelementptr inbounds %struct.zynq_pctrl_group, %struct.zynq_pctrl_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %30 = load %struct.zynq_pctrl_group*, %struct.zynq_pctrl_group** %13, align 8
  %31 = getelementptr inbounds %struct.zynq_pctrl_group, %struct.zynq_pctrl_group* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @zynq_pinconf_cfg_set(%struct.pinctrl_dev* %29, i32 %36, i64* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %22

48:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @zynq_pinconf_cfg_set(%struct.pinctrl_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
