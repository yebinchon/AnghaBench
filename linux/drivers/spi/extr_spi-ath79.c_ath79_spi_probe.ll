; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ath79.c_ath79_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ath79.c_ath79_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ath79_spi = type { i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.spi_master*, i32, i32*, i32 }
%struct.ath79_spi_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate spi master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@spi_bitbang_setup = common dso_local global i32 0, align 4
@spi_bitbang_cleanup = common dso_local global i32 0, align 4
@ath79_spi_chipselect = common dso_local global i32 0, align 4
@ath79_spi_txrx_mode0 = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@MHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH79_SPI_RRW_DELAY_FACTOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"register read/write delay is %u nsecs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath79_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath79_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.ath79_spi*, align 8
  %6 = alloca %struct.ath79_spi_platform_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__* %10, i32 48)
  store %struct.spi_master* %11, %struct.spi_master** %4, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %13 = icmp eq %struct.spi_master* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %166

20:                                               ; preds = %1
  %21 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %22 = call %struct.ath79_spi* @spi_master_get_devdata(%struct.spi_master* %21)
  store %struct.ath79_spi* %22, %struct.ath79_spi** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %28 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.ath79_spi* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.ath79_spi_platform_data* @dev_get_platdata(%struct.TYPE_10__* %34)
  store %struct.ath79_spi_platform_data* %35, %struct.ath79_spi_platform_data** %6, align 8
  %36 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %37 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = call i32 @SPI_BPW_RANGE_MASK(i32 1, i32 32)
  %39 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %40 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @spi_bitbang_setup, align 4
  %42 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %43 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @spi_bitbang_cleanup, align 4
  %45 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %46 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ath79_spi_platform_data*, %struct.ath79_spi_platform_data** %6, align 8
  %48 = icmp ne %struct.ath79_spi_platform_data* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %20
  %50 = load %struct.ath79_spi_platform_data*, %struct.ath79_spi_platform_data** %6, align 8
  %51 = getelementptr inbounds %struct.ath79_spi_platform_data, %struct.ath79_spi_platform_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %54 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ath79_spi_platform_data*, %struct.ath79_spi_platform_data** %6, align 8
  %56 = getelementptr inbounds %struct.ath79_spi_platform_data, %struct.ath79_spi_platform_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %59 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %20
  %61 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %62 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %63 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.spi_master* %61, %struct.spi_master** %64, align 8
  %65 = load i32, i32* @ath79_spi_chipselect, align 4
  %66 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %67 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @ath79_spi_txrx_mode0, align 4
  %70 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %71 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @SPI_MODE_0, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* @SPI_CS_HIGH, align 4
  %77 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %78 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %80, i32 0)
  %82 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %83 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %85 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %60
  %90 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %91 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %8, align 4
  br label %159

94:                                               ; preds = %60
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @devm_clk_get(%struct.TYPE_10__* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %99 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %101 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %107 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %8, align 4
  br label %159

110:                                              ; preds = %94
  %111 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %112 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @clk_prepare_enable(i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %159

118:                                              ; preds = %110
  %119 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %120 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @clk_get_rate(i32 %121)
  %123 = load i32, i32* @MHZ, align 4
  %124 = call i64 @DIV_ROUND_UP(i32 %122, i32 %123)
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %154

130:                                              ; preds = %118
  %131 = load i64, i64* @ATH79_SPI_RRW_DELAY_FACTOR, align 8
  %132 = load i64, i64* %7, align 8
  %133 = udiv i64 %131, %132
  %134 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %135 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %139 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @dev_dbg(%struct.TYPE_10__* %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %140)
  %142 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %143 = call i32 @ath79_spi_enable(%struct.ath79_spi* %142)
  %144 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %145 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %144, i32 0, i32 1
  %146 = call i32 @spi_bitbang_start(%struct.TYPE_9__* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %130
  br label %151

150:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %166

151:                                              ; preds = %149
  %152 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %153 = call i32 @ath79_spi_disable(%struct.ath79_spi* %152)
  br label %154

154:                                              ; preds = %151, %127
  %155 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %156 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @clk_disable_unprepare(i32 %157)
  br label %159

159:                                              ; preds = %154, %117, %105, %89
  %160 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %161 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.spi_master*, %struct.spi_master** %162, align 8
  %164 = call i32 @spi_master_put(%struct.spi_master* %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %159, %150, %14
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.ath79_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ath79_spi*) #1

declare dso_local %struct.ath79_spi_platform_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @ath79_spi_enable(%struct.ath79_spi*) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_9__*) #1

declare dso_local i32 @ath79_spi_disable(%struct.ath79_spi*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
