; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa_desc_by_func_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa_desc_by_func_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_desc_function = type { i64 }
%struct.pxa_pinctrl = type { i32, %struct.pxa_desc_pin* }
%struct.pxa_desc_pin = type { %struct.pxa_desc_function*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa_desc_function* (%struct.pxa_pinctrl*, i8*, i8*)* @pxa_desc_by_func_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa_desc_function* @pxa_desc_by_func_group(%struct.pxa_pinctrl* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.pxa_desc_function*, align 8
  %5 = alloca %struct.pxa_pinctrl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pxa_desc_function*, align 8
  %10 = alloca %struct.pxa_desc_pin*, align 8
  store %struct.pxa_pinctrl* %0, %struct.pxa_pinctrl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %19 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.pxa_desc_pin*, %struct.pxa_desc_pin** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %20, i64 %22
  store %struct.pxa_desc_pin* %23, %struct.pxa_desc_pin** %10, align 8
  %24 = load %struct.pxa_desc_pin*, %struct.pxa_desc_pin** %10, align 8
  %25 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strcmp(i64 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %17
  %32 = load %struct.pxa_desc_pin*, %struct.pxa_desc_pin** %10, align 8
  %33 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %32, i32 0, i32 0
  %34 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %33, align 8
  store %struct.pxa_desc_function* %34, %struct.pxa_desc_function** %9, align 8
  br label %35

35:                                               ; preds = %50, %31
  %36 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %9, align 8
  %37 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %9, align 8
  %42 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcmp(i64 %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %9, align 8
  store %struct.pxa_desc_function* %48, %struct.pxa_desc_function** %4, align 8
  br label %59

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %9, align 8
  %52 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %51, i32 1
  store %struct.pxa_desc_function* %52, %struct.pxa_desc_function** %9, align 8
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %17
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %11

58:                                               ; preds = %11
  store %struct.pxa_desc_function* null, %struct.pxa_desc_function** %4, align 8
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %4, align 8
  ret %struct.pxa_desc_function* %60
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
