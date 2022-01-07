; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_find_group_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_find_group_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_pin_group = type { i32*, i32, i32 }
%struct.at91_pinctrl = type { i32, i32, %struct.at91_pin_group* }

@.str = private unnamed_addr constant [13 x i8] c"%s: %d 0:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.at91_pin_group* (%struct.at91_pinctrl*, i8*)* @at91_pinctrl_find_group_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.at91_pin_group* @at91_pinctrl_find_group_by_name(%struct.at91_pinctrl* %0, i8* %1) #0 {
  %3 = alloca %struct.at91_pinctrl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at91_pin_group*, align 8
  %6 = alloca i32, align 4
  store %struct.at91_pinctrl* %0, %struct.at91_pinctrl** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.at91_pin_group* null, %struct.at91_pin_group** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %3, align 8
  %10 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %7
  %14 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %3, align 8
  %15 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %14, i32 0, i32 2
  %16 = load %struct.at91_pin_group*, %struct.at91_pin_group** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %16, i64 %18
  %20 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %46

26:                                               ; preds = %13
  %27 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %3, align 8
  %28 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %27, i32 0, i32 2
  %29 = load %struct.at91_pin_group*, %struct.at91_pin_group** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %29, i64 %31
  store %struct.at91_pin_group* %32, %struct.at91_pin_group** %5, align 8
  %33 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %3, align 8
  %34 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.at91_pin_group*, %struct.at91_pin_group** %5, align 8
  %38 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.at91_pin_group*, %struct.at91_pin_group** %5, align 8
  %41 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39, i32 %44)
  br label %49

46:                                               ; preds = %25
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %7

49:                                               ; preds = %26, %7
  %50 = load %struct.at91_pin_group*, %struct.at91_pin_group** %5, align 8
  ret %struct.at91_pin_group* %50
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
