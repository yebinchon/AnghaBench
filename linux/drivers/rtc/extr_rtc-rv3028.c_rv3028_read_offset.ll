; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_read_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rv3028_data = type { i32 }

@RV3028_OFFSET = common dso_local global i32 0, align 4
@RV3028_BACKUP = common dso_local global i32 0, align 4
@OFFSET_STEP_PPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*)* @rv3028_read_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_read_offset(%struct.device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rv3028_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.rv3028_data* %11, %struct.rv3028_data** %6, align 8
  %12 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %13 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RV3028_OFFSET, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 1
  %24 = call i32 @sign_extend32(i32 %23, i32 8)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %26 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RV3028_BACKUP, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 7
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @OFFSET_STEP_PPT, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i64 @DIV_ROUND_CLOSEST(i32 %41, i32 1000)
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %32, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
