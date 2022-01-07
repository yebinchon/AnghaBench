; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t93.c_m41t93_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t93.c_m41t93_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }

@M41T93_REG_ALM_HOUR_HT = common dso_local global i32 0, align 4
@M41T93_FLAG_HT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HT bit is set, reenable clock update.\0A\00", align 1
@M41T93_REG_FLAGS = common dso_local global i32 0, align 4
@M41T93_FLAG_OF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"OF bit is set, write time to restart.\0A\00", align 1
@M41T93_FLAG_BL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"BL bit is set, replace battery.\0A\00", align 1
@M41T93_REG_ST_SEC = common dso_local global i64 0, align 8
@M41T93_REG_MIN = common dso_local global i64 0, align 8
@M41T93_REG_CENT_HOUR = common dso_local global i64 0, align 8
@M41T93_REG_DAY = common dso_local global i64 0, align 8
@M41T93_REG_MON = common dso_local global i64 0, align 8
@M41T93_REG_WDAY = common dso_local global i64 0, align 8
@M41T93_REG_YEAR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m41t93_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t93_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.spi_device* @to_spi_device(%struct.device* %12)
  store %struct.spi_device* %13, %struct.spi_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %15 = load i32, i32* @M41T93_REG_ALM_HOUR_HT, align 4
  %16 = call i32 @spi_w8r8(%struct.spi_device* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %154

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @M41T93_FLAG_HT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.device*
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %32 = load i32, i32* @M41T93_REG_ALM_HOUR_HT, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @M41T93_FLAG_HT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @m41t93_set_reg(%struct.spi_device* %31, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %26, %21
  %39 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %40 = load i32, i32* @M41T93_REG_FLAGS, align 4
  %41 = call i32 @spi_w8r8(%struct.spi_device* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %154

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @M41T93_FLAG_OF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @M41T93_FLAG_BL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = call i32 @dev_warn(i32* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %69 = call i32 @spi_write_then_read(%struct.spi_device* %67, i32* %7, i32 1, i32* %68, i32 32)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %154

74:                                               ; preds = %66
  %75 = load i64, i64* @M41T93_REG_ST_SEC, align 8
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @bcd2bin(i32 %77)
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* @M41T93_REG_MIN, align 8
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @bcd2bin(i32 %83)
  %85 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @M41T93_REG_CENT_HOUR, align 8
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 63
  %91 = call i8* @bcd2bin(i32 %90)
  %92 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %93 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* @M41T93_REG_DAY, align 8
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @bcd2bin(i32 %96)
  %98 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load i64, i64* @M41T93_REG_MON, align 8
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @bcd2bin(i32 %102)
  %104 = getelementptr i8, i8* %103, i64 -1
  %105 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* @M41T93_REG_WDAY, align 8
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 15
  %111 = call i8* @bcd2bin(i32 %110)
  %112 = getelementptr i8, i8* %111, i64 -1
  %113 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load i64, i64* @M41T93_REG_CENT_HOUR, align 8
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 6
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  %120 = load i64, i64* @M41T93_REG_YEAR, align 8
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @bcd2bin(i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 %124, 100
  %126 = sext i32 %125 to i64
  %127 = getelementptr i8, i8* %123, i64 %126
  %128 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %129 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %132 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %131, i32 0, i32 6
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %144 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %147 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %150 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %130, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %133, i8* %136, i8* %139, i8* %142, i8* %145, i8* %148, i8* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %74, %72, %44, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @m41t93_set_reg(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
