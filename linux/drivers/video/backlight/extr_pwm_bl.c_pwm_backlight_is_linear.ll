; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_is_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_is_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_pwm_backlight_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_pwm_backlight_data*)* @pwm_backlight_is_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_backlight_is_linear(%struct.platform_pwm_backlight_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_pwm_backlight_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_pwm_backlight_data* %0, %struct.platform_pwm_backlight_data** %3, align 8
  %12 = load %struct.platform_pwm_backlight_data*, %struct.platform_pwm_backlight_data** %3, align 8
  %13 = getelementptr inbounds %struct.platform_pwm_backlight_data, %struct.platform_pwm_backlight_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load %struct.platform_pwm_backlight_data*, %struct.platform_pwm_backlight_data** %3, align 8
  %17 = getelementptr inbounds %struct.platform_pwm_backlight_data, %struct.platform_pwm_backlight_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.platform_pwm_backlight_data*, %struct.platform_pwm_backlight_data** %3, align 8
  %22 = getelementptr inbounds %struct.platform_pwm_backlight_data, %struct.platform_pwm_backlight_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 %29, %30
  %32 = mul i32 128, %31
  %33 = load i32, i32* %4, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub i32 %35, %36
  %38 = udiv i32 %37, 20
  store i32 %38, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %65, %1
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul i32 %45, %46
  %48 = udiv i32 %47, 128
  %49 = add i32 %44, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.platform_pwm_backlight_data*, %struct.platform_pwm_backlight_data** %3, align 8
  %52 = getelementptr inbounds %struct.platform_pwm_backlight_data, %struct.platform_pwm_backlight_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %50, %57
  %59 = call i32 @abs(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %69

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %39

68:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
