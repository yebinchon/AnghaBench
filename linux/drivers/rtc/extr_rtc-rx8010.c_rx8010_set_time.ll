; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rx8010_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RX8010_CTRL = common dso_local global i32 0, align 4
@RX8010_CTRL_STOP = common dso_local global i32 0, align 4
@RX8010_SEC = common dso_local global i64 0, align 8
@RX8010_MIN = common dso_local global i64 0, align 8
@RX8010_HOUR = common dso_local global i64 0, align 8
@RX8010_MDAY = common dso_local global i64 0, align 8
@RX8010_MONTH = common dso_local global i64 0, align 8
@RX8010_YEAR = common dso_local global i64 0, align 8
@RX8010_WDAY = common dso_local global i64 0, align 8
@RX8010_FLAG = common dso_local global i32 0, align 4
@RX8010_FLAG_VLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rx8010_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rx8010_data*, align 8
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rx8010_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.rx8010_data* %12, %struct.rx8010_data** %6, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 199
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %178

25:                                               ; preds = %17
  %26 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %27 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RX8010_CTRL, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %178

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @RX8010_CTRL_STOP, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %40 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %42 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RX8010_CTRL, align 4
  %45 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %46 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_write_byte_data(i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %178

53:                                               ; preds = %35
  %54 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bin2bcd(i32 %56)
  %58 = load i64, i64* @RX8010_SEC, align 8
  %59 = load i64, i64* @RX8010_SEC, align 8
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bin2bcd(i32 %64)
  %66 = load i64, i64* @RX8010_MIN, align 8
  %67 = load i64, i64* @RX8010_SEC, align 8
  %68 = sub i64 %66, %67
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bin2bcd(i32 %72)
  %74 = load i64, i64* @RX8010_HOUR, align 8
  %75 = load i64, i64* @RX8010_SEC, align 8
  %76 = sub i64 %74, %75
  %77 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bin2bcd(i32 %80)
  %82 = load i64, i64* @RX8010_MDAY, align 8
  %83 = load i64, i64* @RX8010_SEC, align 8
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @bin2bcd(i32 %89)
  %91 = load i64, i64* @RX8010_MONTH, align 8
  %92 = load i64, i64* @RX8010_SEC, align 8
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %93
  store i32 %90, i32* %94, align 4
  %95 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 100
  %99 = call i32 @bin2bcd(i32 %98)
  %100 = load i64, i64* @RX8010_YEAR, align 8
  %101 = load i64, i64* @RX8010_SEC, align 8
  %102 = sub i64 %100, %101
  %103 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 1, %106
  %108 = call i32 @bin2bcd(i32 %107)
  %109 = load i64, i64* @RX8010_WDAY, align 8
  %110 = load i64, i64* @RX8010_SEC, align 8
  %111 = sub i64 %109, %110
  %112 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %114 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @RX8010_SEC, align 8
  %117 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %118 = call i32 @i2c_smbus_write_i2c_block_data(i32 %115, i64 %116, i32 7, i32* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %53
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %178

123:                                              ; preds = %53
  %124 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %125 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RX8010_CTRL, align 4
  %128 = call i32 @i2c_smbus_read_byte_data(i32 %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %178

133:                                              ; preds = %123
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @RX8010_CTRL_STOP, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %139 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %141 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @RX8010_CTRL, align 4
  %144 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %145 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @i2c_smbus_write_byte_data(i32 %142, i32 %143, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %133
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %3, align 4
  br label %178

152:                                              ; preds = %133
  %153 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %154 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RX8010_FLAG, align 4
  %157 = call i32 @i2c_smbus_read_byte_data(i32 %155, i32 %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %178

162:                                              ; preds = %152
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @RX8010_FLAG_VLF, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %169 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @RX8010_FLAG, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @RX8010_FLAG_VLF, align 4
  %174 = xor i32 %173, -1
  %175 = and i32 %172, %174
  %176 = call i32 @i2c_smbus_write_byte_data(i32 %170, i32 %171, i32 %175)
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %167, %162
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %160, %150, %131, %121, %51, %33, %22
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.rx8010_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
