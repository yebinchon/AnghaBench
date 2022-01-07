; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_get_id_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_get_id_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pinctrl = type { %struct.sprd_pinctrl_soc_info* }
%struct.sprd_pinctrl_soc_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_pinctrl*, i8*)* @sprd_pinctrl_get_id_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pinctrl_get_id_by_name(%struct.sprd_pinctrl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sprd_pinctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sprd_pinctrl_soc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.sprd_pinctrl* %0, %struct.sprd_pinctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %4, align 8
  %9 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %8, i32 0, i32 0
  %10 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  store %struct.sprd_pinctrl_soc_info* %10, %struct.sprd_pinctrl_soc_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %6, align 8
  %14 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %6, align 8
  %19 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %17
  %30 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %6, align 8
  %31 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
