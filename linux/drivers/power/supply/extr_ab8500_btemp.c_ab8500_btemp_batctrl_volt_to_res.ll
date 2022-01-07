; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_batctrl_volt_to_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_batctrl_volt_to_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_btemp = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ABx500_ADC_THERM_BATCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_btemp*, i32, i32)* @ab8500_btemp_batctrl_volt_to_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_btemp_batctrl_volt_to_res(%struct.ab8500_btemp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_btemp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ab8500_btemp* %0, %struct.ab8500_btemp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %10 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @is_ab8500_1p1_or_earlier(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 450000, %15
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 1800, %17
  %19 = sdiv i32 %16, %18
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %22 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ABx500_ADC_THERM_BATCTRL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 1000
  %31 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %32 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 %30, %37
  %39 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %40 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %8, align 4
  br label %49

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 80000, %44
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 1800, %46
  %48 = sdiv i32 %45, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %28
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @is_ab8500_1p1_or_earlier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
