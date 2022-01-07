; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_store_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_store_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm3533_bl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM3533_REG_CTRLBANK_AB_BCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_linear(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm3533_bl*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.lm3533_bl* @dev_get_drvdata(%struct.device* %15)
  store %struct.lm3533_bl* %16, %struct.lm3533_bl** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtoul(i8* %17, i32 0, i64* %11)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load %struct.lm3533_bl*, %struct.lm3533_bl** %10, align 8
  %25 = call i32 @lm3533_bl_get_ctrlbank_id(%struct.lm3533_bl* %24)
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %26, 1
  %28 = shl i32 1, %27
  store i32 %28, i32* %12, align 4
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %13, align 4
  br label %34

33:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.lm3533_bl*, %struct.lm3533_bl** %10, align 8
  %36 = getelementptr inbounds %struct.lm3533_bl, %struct.lm3533_bl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LM3533_REG_CTRLBANK_AB_BCONF, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @lm3533_update(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %44, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.lm3533_bl* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @lm3533_bl_get_ctrlbank_id(%struct.lm3533_bl*) #1

declare dso_local i32 @lm3533_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
