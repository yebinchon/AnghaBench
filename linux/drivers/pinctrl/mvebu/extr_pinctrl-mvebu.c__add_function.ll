; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c__add_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c__add_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pinctrl_function = type { i32, i8* }

@EOVERFLOW = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_pinctrl_function*, i32*, i8*)* @_add_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_add_function(%struct.mvebu_pinctrl_function* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvebu_pinctrl_function*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.mvebu_pinctrl_function* %0, %struct.mvebu_pinctrl_function** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EOVERFLOW, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %34, %14
  %16 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %5, align 8
  %17 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %5, align 8
  %22 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %5, align 8
  %29 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %20
  %35 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %5, align 8
  %36 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %35, i32 1
  store %struct.mvebu_pinctrl_function* %36, %struct.mvebu_pinctrl_function** %5, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %5, align 8
  %40 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %5, align 8
  %42 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %27, %11
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
