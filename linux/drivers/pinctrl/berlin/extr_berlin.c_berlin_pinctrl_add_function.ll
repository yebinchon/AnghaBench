; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_add_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_add_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.berlin_pinctrl = type { i32, %struct.berlin_pinctrl_function* }
%struct.berlin_pinctrl_function = type { i8*, i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.berlin_pinctrl*, i8*)* @berlin_pinctrl_add_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin_pinctrl_add_function(%struct.berlin_pinctrl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.berlin_pinctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.berlin_pinctrl_function*, align 8
  store %struct.berlin_pinctrl* %0, %struct.berlin_pinctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %8 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %7, i32 0, i32 1
  %9 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %8, align 8
  store %struct.berlin_pinctrl_function* %9, %struct.berlin_pinctrl_function** %6, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %6, align 8
  %12 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %6, align 8
  %17 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcmp(i8* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %6, align 8
  %24 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %15
  %30 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %6, align 8
  %31 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %30, i32 1
  store %struct.berlin_pinctrl_function* %31, %struct.berlin_pinctrl_function** %6, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %6, align 8
  %35 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %6, align 8
  %37 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %39 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
