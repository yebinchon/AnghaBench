; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinctrl_find_group_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinctrl_find_group_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_desc = type { i32 }
%struct.pinctrl_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.group_desc* (%struct.pinctrl_dev*, i8*)* @imx_pinctrl_find_group_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.group_desc* @imx_pinctrl_find_group_by_name(%struct.pinctrl_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.group_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.group_desc* null, %struct.group_desc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev* %14, i32 %15)
  store %struct.group_desc* %16, %struct.group_desc** %5, align 8
  %17 = load %struct.group_desc*, %struct.group_desc** %5, align 8
  %18 = icmp ne %struct.group_desc* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.group_desc*, %struct.group_desc** %5, align 8
  %21 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i32 %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %26, %7
  %32 = load %struct.group_desc*, %struct.group_desc** %5, align 8
  ret %struct.group_desc* %32
}

declare dso_local %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
