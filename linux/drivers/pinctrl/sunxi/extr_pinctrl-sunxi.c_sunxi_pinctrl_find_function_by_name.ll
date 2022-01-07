; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_find_function_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_find_function_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_pinctrl_function = type { i32 }
%struct.sunxi_pinctrl = type { i32, %struct.sunxi_pinctrl_function* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sunxi_pinctrl_function* (%struct.sunxi_pinctrl*, i8*)* @sunxi_pinctrl_find_function_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sunxi_pinctrl_function* @sunxi_pinctrl_find_function_by_name(%struct.sunxi_pinctrl* %0, i8* %1) #0 {
  %3 = alloca %struct.sunxi_pinctrl_function*, align 8
  %4 = alloca %struct.sunxi_pinctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sunxi_pinctrl_function*, align 8
  %7 = alloca i32, align 4
  store %struct.sunxi_pinctrl* %0, %struct.sunxi_pinctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %9 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %8, i32 0, i32 1
  %10 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %9, align 8
  store %struct.sunxi_pinctrl_function* %10, %struct.sunxi_pinctrl_function** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %18, i64 %20
  %22 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %27, i64 %29
  %31 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcmp(i32 %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %37, i64 %39
  store %struct.sunxi_pinctrl_function* %40, %struct.sunxi_pinctrl_function** %3, align 8
  br label %46

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %11

45:                                               ; preds = %25, %11
  store %struct.sunxi_pinctrl_function* null, %struct.sunxi_pinctrl_function** %3, align 8
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %3, align 8
  ret %struct.sunxi_pinctrl_function* %47
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
