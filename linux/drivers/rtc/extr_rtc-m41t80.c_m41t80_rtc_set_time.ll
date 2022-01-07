; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.i2c_client = type { i32 }
%struct.m41t80_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M41T80_REG_SSEC = common dso_local global i64 0, align 8
@M41T80_REG_SEC = common dso_local global i64 0, align 8
@M41T80_REG_MIN = common dso_local global i64 0, align 8
@M41T80_REG_HOUR = common dso_local global i64 0, align 8
@M41T80_REG_DAY = common dso_local global i64 0, align 8
@M41T80_REG_MON = common dso_local global i64 0, align 8
@M41T80_REG_YEAR = common dso_local global i64 0, align 8
@M41T80_REG_WDAY = common dso_local global i64 0, align 8
@M41T80_FEATURE_SQ_ALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to write to date registers\0A\00", align 1
@M41T80_REG_FLAGS = common dso_local global i64 0, align 8
@M41T80_FLAGS_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to write flags register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m41t80_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.m41t80_data*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.m41t80_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.m41t80_data* %15, %struct.m41t80_data** %7, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 100
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 199
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %134

28:                                               ; preds = %20
  %29 = load i64, i64* @M41T80_REG_SSEC, align 8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call zeroext i8 @bin2bcd(i32 %33)
  %35 = load i64, i64* @M41T80_REG_SEC, align 8
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %35
  store i8 %34, i8* %36, align 1
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call zeroext i8 @bin2bcd(i32 %39)
  %41 = load i64, i64* @M41T80_REG_MIN, align 8
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %41
  store i8 %40, i8* %42, align 1
  %43 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call zeroext i8 @bin2bcd(i32 %45)
  %47 = load i64, i64* @M41T80_REG_HOUR, align 8
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %47
  store i8 %46, i8* %48, align 1
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call zeroext i8 @bin2bcd(i32 %51)
  %53 = load i64, i64* @M41T80_REG_DAY, align 8
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %53
  store i8 %52, i8* %54, align 1
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = call zeroext i8 @bin2bcd(i32 %58)
  %60 = load i64, i64* @M41T80_REG_MON, align 8
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %60
  store i8 %59, i8* %61, align 1
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 100
  %66 = call zeroext i8 @bin2bcd(i32 %65)
  %67 = load i64, i64* @M41T80_REG_YEAR, align 8
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %67
  store i8 %66, i8* %68, align 1
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 6
  %71 = load i8, i8* %70, align 4
  %72 = load i64, i64* @M41T80_REG_WDAY, align 8
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %72
  store i8 %71, i8* %73, align 1
  %74 = load %struct.m41t80_data*, %struct.m41t80_data** %7, align 8
  %75 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @M41T80_FEATURE_SQ_ALT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %28
  %81 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %82 = load i64, i64* @M41T80_REG_WDAY, align 8
  %83 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %81, i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %134

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, 240
  %91 = load i64, i64* @M41T80_REG_WDAY, align 8
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %94, %90
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %97

97:                                               ; preds = %88, %28
  %98 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %99 = load i64, i64* @M41T80_REG_SSEC, align 8
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %101 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %98, i64 %99, i32 8, i8* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %134

109:                                              ; preds = %97
  %110 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %111 = load i64, i64* @M41T80_REG_FLAGS, align 8
  %112 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %110, i64 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %134

117:                                              ; preds = %109
  %118 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %119 = load i64, i64* @M41T80_REG_FLAGS, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @M41T80_FLAGS_OF, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %118, i64 %119, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %134

132:                                              ; preds = %117
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %127, %115, %104, %86, %25
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.m41t80_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i64) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i64, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
