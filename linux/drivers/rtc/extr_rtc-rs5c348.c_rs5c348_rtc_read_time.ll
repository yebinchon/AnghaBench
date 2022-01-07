; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }
%struct.rs5c348_plat_data = type { i32 }

@RS5C348_REG_CTL2 = common dso_local global i32 0, align 4
@RS5C348_BIT_VDET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"voltage-low detected.\0A\00", align 1
@RS5C348_BIT_XSTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"oscillator-stop detected.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RS5C348_REG_SECS = common dso_local global i64 0, align 8
@RS5C348_SECS_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_MINS = common dso_local global i64 0, align 8
@RS5C348_MINS_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_HOURS = common dso_local global i64 0, align 8
@RS5C348_HOURS_MASK = common dso_local global i32 0, align 4
@RS5C348_BIT_PM = common dso_local global i32 0, align 4
@RS5C348_REG_WDAY = common dso_local global i64 0, align 8
@RS5C348_WDAY_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_DAY = common dso_local global i64 0, align 8
@RS5C348_DAY_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_MONTH = common dso_local global i64 0, align 8
@RS5C348_MONTH_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_YEAR = common dso_local global i64 0, align 8
@RS5C348_BIT_Y2K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rs5c348_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c348_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.rs5c348_plat_data*, align 8
  %8 = alloca [5 x i32], align 16
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.spi_device* @to_spi_device(%struct.device* %11)
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call %struct.rs5c348_plat_data* @dev_get_platdata(i32* %14)
  store %struct.rs5c348_plat_data* %15, %struct.rs5c348_plat_data** %7, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %17 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %18 = call i32 @RS5C348_CMD_R(i32 %17)
  %19 = call i32 @spi_w8r8(%struct.spi_device* %16, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %163

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @RS5C348_BIT_VDET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RS5C348_BIT_XSTP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = call i32 @dev_warn(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %163

44:                                               ; preds = %33
  %45 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %46 = call i32 @RS5C348_CMD_R(i32 %45)
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %50 = call i32 @RS5C348_CMD_R(i32 %49)
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %52, align 4
  %53 = load i64, i64* @RS5C348_REG_SECS, align 8
  %54 = call i32 @RS5C348_CMD_MR(i64 %53)
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %54, i32* %55, align 16
  %56 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %59 = call i32 @spi_write_then_read(%struct.spi_device* %56, i32* %57, i32 20, i32* %58, i32 28)
  store i32 %59, i32* %10, align 4
  %60 = call i32 @udelay(i32 62)
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %163

65:                                               ; preds = %44
  %66 = load i64, i64* @RS5C348_REG_SECS, align 8
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RS5C348_SECS_MASK, align 4
  %70 = and i32 %68, %69
  %71 = call i8* @bcd2bin(i32 %70)
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* @RS5C348_REG_MINS, align 8
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RS5C348_MINS_MASK, align 4
  %78 = and i32 %76, %77
  %79 = call i8* @bcd2bin(i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %83 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RS5C348_HOURS_MASK, align 4
  %86 = and i32 %84, %85
  %87 = call i8* @bcd2bin(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %7, align 8
  %92 = getelementptr inbounds %struct.rs5c348_plat_data, %struct.rs5c348_plat_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %65
  %96 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %97 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RS5C348_BIT_PM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 20
  store i32 %106, i32* %104, align 8
  %107 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = srem i32 %109, 12
  store i32 %110, i32* %108, align 8
  %111 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 12
  store i32 %114, i32* %112, align 8
  br label %120

115:                                              ; preds = %95
  %116 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %117 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = srem i32 %118, 12
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %115, %102
  br label %121

121:                                              ; preds = %120, %65
  %122 = load i64, i64* @RS5C348_REG_WDAY, align 8
  %123 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RS5C348_WDAY_MASK, align 4
  %126 = and i32 %124, %125
  %127 = call i8* @bcd2bin(i32 %126)
  %128 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %129 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  %130 = load i64, i64* @RS5C348_REG_DAY, align 8
  %131 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RS5C348_DAY_MASK, align 4
  %134 = and i32 %132, %133
  %135 = call i8* @bcd2bin(i32 %134)
  %136 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %137 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load i64, i64* @RS5C348_REG_MONTH, align 8
  %139 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @RS5C348_MONTH_MASK, align 4
  %142 = and i32 %140, %141
  %143 = call i8* @bcd2bin(i32 %142)
  %144 = getelementptr i8, i8* %143, i64 -1
  %145 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load i64, i64* @RS5C348_REG_YEAR, align 8
  %148 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @bcd2bin(i32 %149)
  %151 = load i64, i64* @RS5C348_REG_MONTH, align 8
  %152 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @RS5C348_BIT_Y2K, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 100, i32 0
  %159 = sext i32 %158 to i64
  %160 = getelementptr i8, i8* %150, i64 %159
  %161 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %162 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %121, %63, %38, %22
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.rs5c348_plat_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @RS5C348_CMD_R(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @RS5C348_CMD_MR(i64) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
