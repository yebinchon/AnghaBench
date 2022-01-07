; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ds3232 = type { i32 }

@DS3232_REG_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds3232_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3232_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.ds3232*, align 8
  %6 = alloca [7 x i32], align 16
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ds3232* @dev_get_drvdata(%struct.device* %7)
  store %struct.ds3232* %8, %struct.ds3232** %5, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bin2bcd(i32 %11)
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bin2bcd(i32 %16)
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bin2bcd(i32 %21)
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @bin2bcd(i32 %27)
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bin2bcd(i32 %32)
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  store i32 %33, i32* %34, align 16
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @bin2bcd(i32 %38)
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  store i32 %39, i32* %40, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 100
  br i1 %44, label %45, label %55

45:                                               ; preds = %2
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, 128
  store i32 %48, i32* %46, align 4
  %49 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 100
  %53 = call i32 @bin2bcd(i32 %52)
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  store i32 %53, i32* %54, align 8
  br label %61

55:                                               ; preds = %2
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bin2bcd(i32 %58)
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  store i32 %59, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %45
  %62 = load %struct.ds3232*, %struct.ds3232** %5, align 8
  %63 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DS3232_REG_SECONDS, align 4
  %66 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %67 = call i32 @regmap_bulk_write(i32 %64, i32 %65, i32* %66, i32 7)
  ret i32 %67
}

declare dso_local %struct.ds3232* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
