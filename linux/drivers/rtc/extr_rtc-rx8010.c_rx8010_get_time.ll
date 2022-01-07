; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rx8010_data = type { i32 }

@RX8010_FLAG = common dso_local global i32 0, align 4
@RX8010_FLAG_VLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Frequency stop detected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RX8010_SEC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@RX8010_MIN = common dso_local global i64 0, align 8
@RX8010_HOUR = common dso_local global i64 0, align 8
@RX8010_MDAY = common dso_local global i64 0, align 8
@RX8010_MONTH = common dso_local global i64 0, align 8
@RX8010_YEAR = common dso_local global i64 0, align 8
@RX8010_WDAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rx8010_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rx8010_data*, align 8
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rx8010_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.rx8010_data* %11, %struct.rx8010_data** %6, align 8
  %12 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %13 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RX8010_FLAG, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @RX8010_FLAG_VLF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %115

31:                                               ; preds = %21
  %32 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %33 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @RX8010_SEC, align 8
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %37 = call i32 @i2c_smbus_read_i2c_block_data(i32 %34, i64 %35, i32 7, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 7
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  store i32 %49, i32* %3, align 4
  br label %115

50:                                               ; preds = %31
  %51 = load i64, i64* @RX8010_SEC, align 8
  %52 = load i64, i64* @RX8010_SEC, align 8
  %53 = sub i64 %51, %52
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 127
  %57 = call i8* @bcd2bin(i32 %56)
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @RX8010_MIN, align 8
  %61 = load i64, i64* @RX8010_SEC, align 8
  %62 = sub i64 %60, %61
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 127
  %66 = call i8* @bcd2bin(i32 %65)
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @RX8010_HOUR, align 8
  %70 = load i64, i64* @RX8010_SEC, align 8
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 63
  %75 = call i8* @bcd2bin(i32 %74)
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i64, i64* @RX8010_MDAY, align 8
  %79 = load i64, i64* @RX8010_SEC, align 8
  %80 = sub i64 %78, %79
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 63
  %84 = call i8* @bcd2bin(i32 %83)
  %85 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @RX8010_MONTH, align 8
  %88 = load i64, i64* @RX8010_SEC, align 8
  %89 = sub i64 %87, %88
  %90 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 31
  %93 = call i8* @bcd2bin(i32 %92)
  %94 = getelementptr i8, i8* %93, i64 -1
  %95 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* @RX8010_YEAR, align 8
  %98 = load i64, i64* @RX8010_SEC, align 8
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @bcd2bin(i32 %101)
  %103 = getelementptr i8, i8* %102, i64 100
  %104 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* @RX8010_WDAY, align 8
  %107 = load i64, i64* @RX8010_SEC, align 8
  %108 = sub i64 %106, %107
  %109 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 127
  %112 = call i32 @ffs(i32 %111)
  %113 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %50, %48, %26, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.rx8010_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i64, i32, i32*) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
