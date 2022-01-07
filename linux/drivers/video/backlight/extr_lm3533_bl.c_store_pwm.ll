; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm3533_bl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm3533_bl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.lm3533_bl* @dev_get_drvdata(%struct.device* %13)
  store %struct.lm3533_bl* %14, %struct.lm3533_bl** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtou8(i8* %15, i32 0, i32* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.lm3533_bl*, %struct.lm3533_bl** %10, align 8
  %23 = getelementptr inbounds %struct.lm3533_bl, %struct.lm3533_bl* %22, i32 0, i32 0
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @lm3533_ctrlbank_set_pwm(i32* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %28, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.lm3533_bl* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @lm3533_ctrlbank_set_pwm(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
