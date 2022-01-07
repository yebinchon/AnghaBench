; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ds1343_priv = type { i32 }

@DS1343_SECONDS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1343_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1343_priv*, align 8
  %7 = alloca [7 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ds1343_priv* @dev_get_drvdata(%struct.device* %9)
  store %struct.ds1343_priv* %10, %struct.ds1343_priv** %6, align 8
  %11 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DS1343_SECONDS_REG, align 4
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %16 = call i32 @regmap_bulk_read(i32 %13, i32 %14, i8* %15, i32 7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call i8* @bcd2bin(i8 zeroext %23)
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = call i8* @bcd2bin(i8 zeroext %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 63
  %36 = trunc i32 %35 to i8
  %37 = call i8* @bcd2bin(i8 zeroext %36)
  %38 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = call i8* @bcd2bin(i8 zeroext %41)
  %43 = getelementptr i8, i8* %42, i64 -1
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 4
  %47 = load i8, i8* %46, align 1
  %48 = call i8* @bcd2bin(i8 zeroext %47)
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 5
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 31
  %55 = trunc i32 %54 to i8
  %56 = call i8* @bcd2bin(i8 zeroext %55)
  %57 = getelementptr i8, i8* %56, i64 -1
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 6
  %61 = load i8, i8* %60, align 1
  %62 = call i8* @bcd2bin(i8 zeroext %61)
  %63 = getelementptr i8, i8* %62, i64 100
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %21, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.ds1343_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
