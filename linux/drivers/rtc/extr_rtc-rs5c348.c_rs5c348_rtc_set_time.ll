; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }
%struct.rs5c348_plat_data = type { i64 }

@RS5C348_REG_CTL2 = common dso_local global i32 0, align 4
@RS5C348_BIT_XSTP = common dso_local global i32 0, align 4
@RS5C348_REG_SECS = common dso_local global i64 0, align 8
@RS5C348_REG_MINS = common dso_local global i64 0, align 8
@RS5C348_REG_HOURS = common dso_local global i64 0, align 8
@RS5C348_BIT_PM = common dso_local global i32 0, align 4
@RS5C348_REG_WDAY = common dso_local global i64 0, align 8
@RS5C348_REG_DAY = common dso_local global i64 0, align 8
@RS5C348_BIT_Y2K = common dso_local global i32 0, align 4
@RS5C348_REG_MONTH = common dso_local global i64 0, align 8
@RS5C348_REG_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rs5c348_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c348_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.rs5c348_plat_data*, align 8
  %8 = alloca [12 x i32], align 16
  %9 = alloca i32*, align 8
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
  br label %149

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @RS5C348_BIT_XSTP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %31 = call i32 @RS5C348_CMD_W(i32 %30)
  %32 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %35 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %36 = call i32 @spi_write_then_read(%struct.spi_device* %34, i32* %35, i32 2, i32* null, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %149

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %24
  %43 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32* %43, i32** %9, align 8
  %44 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %45 = call i32 @RS5C348_CMD_R(i32 %44)
  %46 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32 %45, i32* %46, align 16
  %47 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %49 = call i32 @RS5C348_CMD_R(i32 %48)
  %50 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %51, align 4
  %52 = load i64, i64* @RS5C348_REG_SECS, align 8
  %53 = call i32 @RS5C348_CMD_MW(i64 %52)
  %54 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 4
  store i32 %53, i32* %54, align 16
  %55 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 5
  store i32* %55, i32** %9, align 8
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bin2bcd(i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* @RS5C348_REG_SECS, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bin2bcd(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* @RS5C348_REG_MINS, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %7, align 8
  %71 = getelementptr inbounds %struct.rs5c348_plat_data, %struct.rs5c348_plat_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %42
  %75 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bin2bcd(i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  br label %103

82:                                               ; preds = %42
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 11
  %87 = srem i32 %86, 12
  %88 = add nsw i32 %87, 1
  %89 = call i32 @bin2bcd(i32 %88)
  %90 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 12
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @RS5C348_BIT_PM, align 4
  br label %97

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = or i32 %89, %98
  %100 = load i32*, i32** %9, align 8
  %101 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %74
  %104 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bin2bcd(i32 %106)
  %108 = load i32*, i32** %9, align 8
  %109 = load i64, i64* @RS5C348_REG_WDAY, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %107, i32* %110, align 4
  %111 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @bin2bcd(i32 %113)
  %115 = load i32*, i32** %9, align 8
  %116 = load i64, i64* @RS5C348_REG_DAY, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 @bin2bcd(i32 %121)
  %123 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %124 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %125, 100
  br i1 %126, label %127, label %129

127:                                              ; preds = %103
  %128 = load i32, i32* @RS5C348_BIT_Y2K, align 4
  br label %130

129:                                              ; preds = %103
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  %132 = or i32 %122, %131
  %133 = load i32*, i32** %9, align 8
  %134 = load i64, i64* @RS5C348_REG_MONTH, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %137 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = srem i32 %138, 100
  %140 = call i32 @bin2bcd(i32 %139)
  %141 = load i32*, i32** %9, align 8
  %142 = load i64, i64* @RS5C348_REG_YEAR, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %140, i32* %143, align 4
  %144 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %145 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %146 = call i32 @spi_write_then_read(%struct.spi_device* %144, i32* %145, i32 48, i32* null, i32 0)
  store i32 %146, i32* %10, align 4
  %147 = call i32 @udelay(i32 62)
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %130, %39, %22
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.rs5c348_plat_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @RS5C348_CMD_R(i32) #1

declare dso_local i32 @RS5C348_CMD_W(i32) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @RS5C348_CMD_MW(i64) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
