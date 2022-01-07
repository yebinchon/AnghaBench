; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max1721x_battery.c_get_sn_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max1721x_battery.c_get_sn_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17211_device_info = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@MAX1721X_REG_SER_HEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%04X%04X%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max17211_device_info*, i8*)* @get_sn_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sn_string(%struct.max17211_device_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max17211_device_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i32], align 4
  store %struct.max17211_device_info* %0, %struct.max17211_device_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EFAULT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.max17211_device_info*, %struct.max17211_device_info** %4, align 8
  %14 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @MAX1721X_REG_SER_HEX, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %18 = call i64 @regmap_read(i32 %15, i64 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %12
  %24 = load %struct.max17211_device_info*, %struct.max17211_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @MAX1721X_REG_SER_HEX, align 8
  %28 = add nsw i64 %27, 1
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %30 = call i64 @regmap_read(i32 %26, i64 %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %23
  %36 = load %struct.max17211_device_info*, %struct.max17211_device_info** %4, align 8
  %37 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @MAX1721X_REG_SER_HEX, align 8
  %40 = add nsw i64 %39, 2
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %42 = call i64 @regmap_read(i32 %38, i64 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %35
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snprintf(i8* %48, i32 13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %44, %32, %20, %9
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
