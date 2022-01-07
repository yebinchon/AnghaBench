; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_desc_find_function_by_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_desc_find_function_by_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_desc_function = type { i64 }
%struct.sunxi_pinctrl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sunxi_desc_pin* }
%struct.sunxi_desc_pin = type { %struct.sunxi_desc_function*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sunxi_desc_function* (%struct.sunxi_pinctrl*, i64, i8*)* @sunxi_pinctrl_desc_find_function_by_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.sunxi_desc_function*, align 8
  %5 = alloca %struct.sunxi_pinctrl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sunxi_desc_pin*, align 8
  %10 = alloca %struct.sunxi_desc_function*, align 8
  store %struct.sunxi_pinctrl* %0, %struct.sunxi_pinctrl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %57, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %11
  %20 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %24, i64 %26
  store %struct.sunxi_desc_pin* %27, %struct.sunxi_desc_pin** %9, align 8
  %28 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %29 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %19
  %35 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %36 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %35, i32 0, i32 0
  %37 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %36, align 8
  store %struct.sunxi_desc_function* %37, %struct.sunxi_desc_function** %10, align 8
  br label %38

38:                                               ; preds = %52, %34
  %39 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %40 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %45 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcmp(i64 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  store %struct.sunxi_desc_function* %51, %struct.sunxi_desc_function** %4, align 8
  br label %61

52:                                               ; preds = %43
  %53 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %54 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %53, i32 1
  store %struct.sunxi_desc_function* %54, %struct.sunxi_desc_function** %10, align 8
  br label %38

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %19
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %11

60:                                               ; preds = %11
  store %struct.sunxi_desc_function* null, %struct.sunxi_desc_function** %4, align 8
  br label %61

61:                                               ; preds = %60, %50
  %62 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %4, align 8
  ret %struct.sunxi_desc_function* %62
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
