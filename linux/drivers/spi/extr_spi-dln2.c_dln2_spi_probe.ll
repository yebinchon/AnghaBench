; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dln2_spi = type { i32, i32, i32, %struct.platform_device*, %struct.spi_master*, i32 }
%struct.dln2_platform_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DLN2_SPI_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to disable SPI module\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get number of CS pins\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to read bus min/max freqs\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to read supported frame sizes\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to enable CS pins\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@dln2_spi_prepare_message = common dso_local global i32 0, align 4
@dln2_spi_transfer_one = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to enable SPI module\0A\00", align 1
@DLN2_RPM_AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to register master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dln2_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.dln2_spi*, align 8
  %6 = alloca %struct.dln2_platform_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.dln2_platform_data* @dev_get_platdata(%struct.device* %10)
  store %struct.dln2_platform_data* %11, %struct.dln2_platform_data** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.spi_master* @spi_alloc_master(%struct.device* %15, i32 40)
  store %struct.spi_master* %16, %struct.spi_master** %4, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %18 = icmp ne %struct.spi_master* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %187

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.spi_master* %24)
  %26 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %27 = call %struct.dln2_spi* @spi_master_get_devdata(%struct.spi_master* %26)
  store %struct.dln2_spi* %27, %struct.dln2_spi** %5, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @DLN2_SPI_BUF_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @devm_kmalloc(%struct.device* %29, i32 %30, i32 %31)
  %33 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %34 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %36 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %183

42:                                               ; preds = %22
  %43 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %44 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %45 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %44, i32 0, i32 4
  store %struct.spi_master* %43, %struct.spi_master** %45, align 8
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %50 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %49, i32 0, i32 4
  %51 = load %struct.spi_master*, %struct.spi_master** %50, align 8
  %52 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %56 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %55, i32 0, i32 3
  store %struct.platform_device* %54, %struct.platform_device** %56, align 8
  %57 = load %struct.dln2_platform_data*, %struct.dln2_platform_data** %6, align 8
  %58 = getelementptr inbounds %struct.dln2_platform_data, %struct.dln2_platform_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %61 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %63 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %62, i32 0, i32 0
  store i32 255, i32* %63, align 8
  %64 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %65 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %64, i32 0, i32 1
  store i32 255, i32* %65, align 4
  %66 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %67 = call i32 @dln2_spi_enable(%struct.dln2_spi* %66, i32 0)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %42
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %183

74:                                               ; preds = %42
  %75 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %76 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %77 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %76, i32 0, i32 8
  %78 = call i32 @dln2_spi_get_cs_num(%struct.dln2_spi* %75, i32* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %183

85:                                               ; preds = %74
  %86 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %87 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %88 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %87, i32 0, i32 7
  %89 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %90 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %89, i32 0, i32 6
  %91 = call i32 @dln2_spi_get_speed_range(%struct.dln2_spi* %86, i32* %88, i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %183

98:                                               ; preds = %85
  %99 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %100 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %101 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %100, i32 0, i32 5
  %102 = call i32 @dln2_spi_get_supported_frame_sizes(%struct.dln2_spi* %99, i32* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %183

109:                                              ; preds = %98
  %110 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %111 = call i32 @dln2_spi_cs_enable_all(%struct.dln2_spi* %110, i32 1)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %183

118:                                              ; preds = %109
  %119 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %120 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 4
  %121 = load i32, i32* @SPI_CPOL, align 4
  %122 = load i32, i32* @SPI_CPHA, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %125 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @dln2_spi_prepare_message, align 4
  %127 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %128 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @dln2_spi_transfer_one, align 4
  %130 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %131 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %133 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  %134 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %135 = call i32 @dln2_spi_enable(%struct.dln2_spi* %134, i32 1)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %118
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %183

142:                                              ; preds = %118
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load i32, i32* @DLN2_RPM_AUTOSUSPEND_TIMEOUT, align 4
  %146 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %144, i32 %145)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @pm_runtime_use_autosuspend(%struct.device* %148)
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @pm_runtime_set_active(%struct.device* %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @pm_runtime_enable(%struct.device* %154)
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %159 = call i32 @devm_spi_register_master(%struct.device* %157, %struct.spi_master* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %142
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %168

166:                                              ; preds = %142
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %2, align 4
  br label %187

168:                                              ; preds = %162
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32 @pm_runtime_disable(%struct.device* %170)
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i32 @pm_runtime_set_suspended(%struct.device* %173)
  %175 = load %struct.dln2_spi*, %struct.dln2_spi** %5, align 8
  %176 = call i32 @dln2_spi_enable(%struct.dln2_spi* %175, i32 0)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @dev_err(%struct.device* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %182

182:                                              ; preds = %178, %168
  br label %183

183:                                              ; preds = %182, %138, %114, %105, %94, %81, %70, %39
  %184 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %185 = call i32 @spi_master_put(%struct.spi_master* %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %166, %19
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.dln2_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.dln2_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dln2_spi_enable(%struct.dln2_spi*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dln2_spi_get_cs_num(%struct.dln2_spi*, i32*) #1

declare dso_local i32 @dln2_spi_get_speed_range(%struct.dln2_spi*, i32*, i32*) #1

declare dso_local i32 @dln2_spi_get_supported_frame_sizes(%struct.dln2_spi*, i32*) #1

declare dso_local i32 @dln2_spi_cs_enable_all(%struct.dln2_spi*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @devm_spi_register_master(%struct.device*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
