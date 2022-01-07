; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chip_desc = type { i32, i32, i64, i32 }
%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ds1307 = type { i64, i32 }

@chips = common dso_local global %struct.chip_desc* null, align 8
@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DS1307_REG_SECS = common dso_local global i64 0, align 8
@DS1307_REG_MIN = common dso_local global i64 0, align 8
@DS1307_REG_HOUR = common dso_local global i64 0, align 8
@DS1307_REG_WDAY = common dso_local global i64 0, align 8
@DS1307_REG_MDAY = common dso_local global i64 0, align 8
@DS1307_REG_MONTH = common dso_local global i64 0, align 8
@DS1307_REG_YEAR = common dso_local global i64 0, align 8
@DS1307_REG_CONTROL = common dso_local global i32 0, align 4
@DS1338_BIT_OSF = common dso_local global i32 0, align 4
@DS1340_REG_FLAG = common dso_local global i32 0, align 4
@DS1340_BIT_OSF = common dso_local global i32 0, align 4
@MCP794XX_BIT_ST = common dso_local global i32 0, align 4
@MCP794XX_BIT_VBATEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s: %7ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@rx_8130 = common dso_local global i32 0, align 4
@RX8130_REG_FLAG = common dso_local global i32 0, align 4
@RX8130_REG_FLAG_VLF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1307_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1307*, align 8
  %7 = alloca %struct.chip_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [7 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ds1307* @dev_get_drvdata(%struct.device* %11)
  store %struct.ds1307* %12, %struct.ds1307** %6, align 8
  %13 = load %struct.chip_desc*, %struct.chip_desc** @chips, align 8
  %14 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %15 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %13, i64 %16
  store %struct.chip_desc* %17, %struct.chip_desc** %7, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 100
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %211

48:                                               ; preds = %2
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 199
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %211

56:                                               ; preds = %48
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bin2bcd(i32 %59)
  %61 = load i64, i64* @DS1307_REG_SECS, align 8
  %62 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %61
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bin2bcd(i32 %65)
  %67 = load i64, i64* @DS1307_REG_MIN, align 8
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %67
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bin2bcd(i32 %71)
  %73 = load i64, i64* @DS1307_REG_HOUR, align 8
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %73
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @bin2bcd(i32 %78)
  %80 = load i64, i64* @DS1307_REG_WDAY, align 8
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %80
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bin2bcd(i32 %84)
  %86 = load i64, i64* @DS1307_REG_MDAY, align 8
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %86
  store i32 %85, i32* %87, align 4
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @bin2bcd(i32 %91)
  %93 = load i64, i64* @DS1307_REG_MONTH, align 8
  %94 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %93
  store i32 %92, i32* %94, align 4
  %95 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 100
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @bin2bcd(i32 %99)
  %101 = load i64, i64* @DS1307_REG_YEAR, align 8
  %102 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %101
  store i32 %100, i32* %102, align 4
  %103 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %104 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %56
  %108 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %109 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %112 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %107, %56
  %118 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 199
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %124 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %129 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %132 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %130
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %127, %122, %117
  %138 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %139 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  switch i64 %140, label %166 [
    i64 131, label %141
    i64 130, label %141
    i64 129, label %148
    i64 128, label %155
  ]

141:                                              ; preds = %137, %137
  %142 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %143 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @DS1307_REG_CONTROL, align 4
  %146 = load i32, i32* @DS1338_BIT_OSF, align 4
  %147 = call i32 @regmap_update_bits(i32 %144, i32 %145, i32 %146, i32 0)
  br label %167

148:                                              ; preds = %137
  %149 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %150 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DS1340_REG_FLAG, align 4
  %153 = load i32, i32* @DS1340_BIT_OSF, align 4
  %154 = call i32 @regmap_update_bits(i32 %151, i32 %152, i32 %153, i32 0)
  br label %167

155:                                              ; preds = %137
  %156 = load i32, i32* @MCP794XX_BIT_ST, align 4
  %157 = load i64, i64* @DS1307_REG_SECS, align 8
  %158 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* @MCP794XX_BIT_VBATEN, align 4
  %162 = load i64, i64* @DS1307_REG_WDAY, align 8
  %163 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %167

166:                                              ; preds = %137
  br label %167

167:                                              ; preds = %166, %155, %148, %141
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %170 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %169)
  %171 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %172 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %175 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %178 = call i32 @regmap_bulk_write(i32 %173, i32 %176, i32* %177, i32 28)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %167
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @dev_err(%struct.device* %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %3, align 4
  br label %211

186:                                              ; preds = %167
  %187 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %188 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @rx_8130, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp eq i64 %189, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %195 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @RX8130_REG_FLAG, align 4
  %198 = load i64, i64* @RX8130_REG_FLAG_VLF, align 8
  %199 = trunc i64 %198 to i32
  %200 = xor i32 %199, -1
  %201 = call i32 @regmap_write(i32 %196, i32 %197, i32 %200)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %193
  %205 = load %struct.device*, %struct.device** %4, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @dev_err(%struct.device* %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %3, align 4
  br label %211

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209, %186
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %210, %204, %181, %53, %45
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.ds1307* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
