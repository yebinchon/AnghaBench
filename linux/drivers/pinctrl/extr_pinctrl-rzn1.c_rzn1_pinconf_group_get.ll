; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinconf_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinconf_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rzn1_pinctrl = type { i32, %struct.rzn1_pin_group* }
%struct.rzn1_pin_group = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"group get %s selector:%u\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @rzn1_pinconf_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rzn1_pinconf_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rzn1_pinctrl*, align 8
  %9 = alloca %struct.rzn1_pin_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.rzn1_pinctrl* %13, %struct.rzn1_pinctrl** %8, align 8
  %14 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %8, align 8
  %15 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %16, i64 %18
  store %struct.rzn1_pin_group* %19, %struct.rzn1_pin_group** %9, align 8
  store i64 0, i64* %10, align 8
  %20 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %8, align 8
  %21 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %9, align 8
  %24 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %63, %3
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %9, align 8
  %31 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %36 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %9, align 8
  %37 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i64*, i64** %7, align 8
  %44 = call i64 @rzn1_pinconf_get(%struct.pinctrl_dev* %35, i32 %42, i64* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %67

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %67

60:                                               ; preds = %52, %49
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %28

66:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %57, %46
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @rzn1_pinconf_get(%struct.pinctrl_dev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
