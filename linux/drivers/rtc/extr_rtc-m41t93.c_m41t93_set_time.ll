; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t93.c_m41t93_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t93.c_m41t93_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"unsupported date (before 2000-01-01).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M41T93_REG_FLAGS = common dso_local global i64 0, align 8
@M41T93_FLAG_OF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"OF bit is set, resetting.\0A\00", align 1
@M41T93_REG_ST_SEC = common dso_local global i64 0, align 8
@M41T93_FLAG_ST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"OF bit is still set, kickstarting clock.\0A\00", align 1
@M41T93_REG_SSEC = common dso_local global i64 0, align 8
@M41T93_REG_MIN = common dso_local global i64 0, align 8
@M41T93_REG_CENT_HOUR = common dso_local global i64 0, align 8
@M41T93_REG_DAY = common dso_local global i64 0, align 8
@M41T93_REG_WDAY = common dso_local global i64 0, align 8
@M41T93_REG_MON = common dso_local global i64 0, align 8
@M41T93_REG_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m41t93_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t93_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [9 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.spi_device* @to_spi_device(%struct.device* %11)
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 36, i1 false)
  %14 = bitcast i8* %13 to <{ i32, [8 x i32] }>*
  %15 = getelementptr inbounds <{ i32, [8 x i32] }>, <{ i32, [8 x i32] }>* %14, i32 0, i32 0
  store i32 128, i32* %15, align 16
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1
  store i32* %16, i32** %9, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 100
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %175

50:                                               ; preds = %2
  %51 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %52 = load i64, i64* @M41T93_REG_FLAGS, align 8
  %53 = call i32 @spi_w8r8(%struct.spi_device* %51, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %175

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @M41T93_FLAG_OF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %109

63:                                               ; preds = %58
  %64 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %68 = load i64, i64* @M41T93_REG_FLAGS, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @M41T93_FLAG_OF, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @m41t93_set_reg(%struct.spi_device* %67, i64 %68, i32 %72)
  %74 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %75 = load i64, i64* @M41T93_REG_FLAGS, align 8
  %76 = call i32 @spi_w8r8(%struct.spi_device* %74, i64 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %175

81:                                               ; preds = %63
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @M41T93_FLAG_OF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %81
  %87 = load i64, i64* @M41T93_REG_ST_SEC, align 8
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @M41T93_FLAG_ST, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 0
  %94 = call i32 @dev_warn(i32* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %96 = load i64, i64* @M41T93_REG_ST_SEC, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @m41t93_set_reg(%struct.spi_device* %95, i64 %96, i32 %97)
  %99 = load i32, i32* @M41T93_FLAG_ST, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %104 = load i64, i64* @M41T93_REG_ST_SEC, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @m41t93_set_reg(%struct.spi_device* %103, i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %86, %81
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %58
  %110 = load i32*, i32** %9, align 8
  %111 = load i64, i64* @M41T93_REG_SSEC, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 0, i32* %112, align 4
  %113 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bin2bcd(i32 %115)
  %117 = load i32*, i32** %9, align 8
  %118 = load i64, i64* @M41T93_REG_ST_SEC, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %116, i32* %119, align 4
  %120 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @bin2bcd(i32 %122)
  %124 = load i32*, i32** %9, align 8
  %125 = load i64, i64* @M41T93_REG_MIN, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %123, i32* %126, align 4
  %127 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @bin2bcd(i32 %129)
  %131 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %132 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 100
  %135 = sub nsw i32 %134, 1
  %136 = shl i32 %135, 6
  %137 = or i32 %130, %136
  %138 = load i32*, i32** %9, align 8
  %139 = load i64, i64* @M41T93_REG_CENT_HOUR, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @bin2bcd(i32 %143)
  %145 = load i32*, i32** %9, align 8
  %146 = load i64, i64* @M41T93_REG_DAY, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 %144, i32* %147, align 4
  %148 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %149 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @bin2bcd(i32 %151)
  %153 = load i32*, i32** %9, align 8
  %154 = load i64, i64* @M41T93_REG_WDAY, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %157 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32 @bin2bcd(i32 %159)
  %161 = load i32*, i32** %9, align 8
  %162 = load i64, i64* @M41T93_REG_MON, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32 %160, i32* %163, align 4
  %164 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %165 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = srem i32 %166, 100
  %168 = call i32 @bin2bcd(i32 %167)
  %169 = load i32*, i32** %9, align 8
  %170 = load i64, i64* @M41T93_REG_YEAR, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %168, i32* %171, align 4
  %172 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %173 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %174 = call i32 @spi_write(%struct.spi_device* %172, i32* %173, i32 36)
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %109, %79, %56, %44
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i64) #1

declare dso_local i32 @m41t93_set_reg(%struct.spi_device*, i64, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
