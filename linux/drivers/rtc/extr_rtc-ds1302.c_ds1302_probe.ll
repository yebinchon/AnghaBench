; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1302.c_ds1302_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1302.c_ds1302_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.rtc_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad word length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"speed is too high\0A\00", align 1
@SPI_CPHA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"bad mode\0A\00", align 1
@RTC_ADDR_CTRL = common dso_local global i32 0, align 4
@RTC_CMD_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"control register read error %d\0A\00", align 1
@RTC_CMD_WRITE_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"junk in control register\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RTC_CMD_WRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"control register write error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"error %d reading control register\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to detect chip\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ds1302\00", align 1
@ds1302_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"error %d registering rtc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ds1302_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1302_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 8
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 3
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %173

24:                                               ; preds = %13, %1
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 2000000
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 3
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %173

35:                                               ; preds = %24
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SPI_CPHA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 3
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %173

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @RTC_ADDR_CTRL, align 4
  %52 = shl i32 %51, 1
  %53 = load i32, i32* @RTC_CMD_READ, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %57 = call i32 @spi_write_then_read(%struct.spi_device* %55, i32* %5, i32 4, i32* %56, i32 1)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 3
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %173

66:                                               ; preds = %50
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = load i32, i32* @RTC_CMD_WRITE_DISABLE, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %66
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %76 = call i32 @spi_write_then_read(%struct.spi_device* %74, i32* %5, i32 4, i32* %75, i32 1)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 3
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %173

85:                                               ; preds = %73
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = load i32, i32* @RTC_CMD_WRITE_DISABLE, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %94 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %93, i32 0, i32 3
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %173

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %66
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %153

103:                                              ; preds = %99
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32* %104, i32** %7, align 8
  %105 = load i32, i32* @RTC_ADDR_CTRL, align 4
  %106 = shl i32 %105, 1
  %107 = load i32, i32* @RTC_CMD_WRITE, align 4
  %108 = or i32 %106, %107
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32, i32* @RTC_CMD_WRITE_DISABLE, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %116 = call i32 @spi_write_then_read(%struct.spi_device* %114, i32* %115, i32 2, i32* null, i32 0)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %103
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 3
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %173

125:                                              ; preds = %103
  %126 = load i32, i32* @RTC_ADDR_CTRL, align 4
  %127 = shl i32 %126, 1
  %128 = load i32, i32* @RTC_CMD_READ, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %5, align 4
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %132 = call i32 @spi_write_then_read(%struct.spi_device* %130, i32* %5, i32 4, i32* %131, i32 1)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %125
  %136 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %137 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %136, i32 0, i32 3
  %138 = load i32, i32* %8, align 4
  %139 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %173

141:                                              ; preds = %125
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = load i32, i32* @RTC_CMD_WRITE_DISABLE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %148 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %147, i32 0, i32 3
  %149 = call i32 (i32*, i8*, ...) @dev_err(i32* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %173

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %99
  %154 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = call i32 @spi_set_drvdata(%struct.spi_device* %154, %struct.spi_device* %155)
  %157 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %158 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %157, i32 0, i32 3
  %159 = load i32, i32* @THIS_MODULE, align 4
  %160 = call %struct.rtc_device* @devm_rtc_device_register(i32* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* @ds1302_rtc_ops, i32 %159)
  store %struct.rtc_device* %160, %struct.rtc_device** %4, align 8
  %161 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %162 = call i64 @IS_ERR(%struct.rtc_device* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %153
  %165 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %166 = call i32 @PTR_ERR(%struct.rtc_device* %165)
  store i32 %166, i32* %8, align 4
  %167 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %168 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %167, i32 0, i32 3
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %173

172:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %164, %146, %135, %119, %92, %79, %60, %42, %29, %18
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.spi_device*) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
