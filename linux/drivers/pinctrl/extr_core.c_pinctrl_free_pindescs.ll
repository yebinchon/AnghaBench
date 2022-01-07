; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_free_pindescs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_free_pindescs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_pin_desc = type { i32 }
%struct.pin_desc = type { %struct.pin_desc*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_pin_desc*, i32)* @pinctrl_free_pindescs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pinctrl_free_pindescs(%struct.pinctrl_dev* %0, %struct.pinctrl_pin_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pin_desc*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_pin_desc* %1, %struct.pinctrl_pin_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %48, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %16, i64 %18
  %20 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pin_desc* @radix_tree_lookup(i32* %15, i32 %21)
  store %struct.pin_desc* %22, %struct.pin_desc** %8, align 8
  %23 = load %struct.pin_desc*, %struct.pin_desc** %8, align 8
  %24 = icmp ne %struct.pin_desc* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %13
  %26 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %26, i32 0, i32 0
  %28 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %28, i64 %30
  %32 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @radix_tree_delete(i32* %27, i32 %33)
  %35 = load %struct.pin_desc*, %struct.pin_desc** %8, align 8
  %36 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.pin_desc*, %struct.pin_desc** %8, align 8
  %41 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %40, i32 0, i32 0
  %42 = load %struct.pin_desc*, %struct.pin_desc** %41, align 8
  %43 = call i32 @kfree(%struct.pin_desc* %42)
  br label %44

44:                                               ; preds = %39, %25
  br label %45

45:                                               ; preds = %44, %13
  %46 = load %struct.pin_desc*, %struct.pin_desc** %8, align 8
  %47 = call i32 @kfree(%struct.pin_desc* %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %9

51:                                               ; preds = %9
  ret void
}

declare dso_local %struct.pin_desc* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @kfree(%struct.pin_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
