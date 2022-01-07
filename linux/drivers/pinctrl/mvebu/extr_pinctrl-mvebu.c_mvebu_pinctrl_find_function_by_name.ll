; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_function_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_function_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pinctrl_function = type { i32 }
%struct.mvebu_pinctrl = type { i32, %struct.mvebu_pinctrl_function* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvebu_pinctrl_function* (%struct.mvebu_pinctrl*, i8*)* @mvebu_pinctrl_find_function_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvebu_pinctrl_function* @mvebu_pinctrl_find_function_by_name(%struct.mvebu_pinctrl* %0, i8* %1) #0 {
  %3 = alloca %struct.mvebu_pinctrl_function*, align 8
  %4 = alloca %struct.mvebu_pinctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mvebu_pinctrl* %0, %struct.mvebu_pinctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %10 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %16 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %15, i32 0, i32 1
  %17 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %17, i64 %19
  %21 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i8* %14, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %27 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %26, i32 0, i32 1
  %28 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %28, i64 %30
  store %struct.mvebu_pinctrl_function* %31, %struct.mvebu_pinctrl_function** %3, align 8
  br label %37

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  store %struct.mvebu_pinctrl_function* null, %struct.mvebu_pinctrl_function** %3, align 8
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %3, align 8
  ret %struct.mvebu_pinctrl_function* %38
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
