; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_get_community.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_get_community.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_community = type { i32, i32 }
%struct.byt_gpio = type { %struct.intel_community*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_community* (%struct.byt_gpio*, i32)* @byt_get_community to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_community* @byt_get_community(%struct.byt_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_community*, align 8
  %4 = alloca %struct.byt_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_community*, align 8
  %7 = alloca i32, align 4
  store %struct.byt_gpio* %0, %struct.byt_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %11 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %18 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %17, i32 0, i32 0
  %19 = load %struct.intel_community*, %struct.intel_community** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %19, i64 %21
  store %struct.intel_community* %22, %struct.intel_community** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %25 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %28 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %26, %29
  %31 = icmp ult i32 %23, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %35 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp uge i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  store %struct.intel_community* %39, %struct.intel_community** %3, align 8
  br label %45

40:                                               ; preds = %32, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %8

44:                                               ; preds = %8
  store %struct.intel_community* null, %struct.intel_community** %3, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.intel_community*, %struct.intel_community** %3, align 8
  ret %struct.intel_community* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
