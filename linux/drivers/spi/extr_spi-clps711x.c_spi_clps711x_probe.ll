; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-clps711x.c_spi_clps711x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-clps711x.c_spi_clps711x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.spi_clps711x_data = type { i32, i32, i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@spi_clps711x_prepare_message = common dso_local global i32 0, align 4
@spi_clps711x_transfer_one = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cirrus,ep7209-syscon3\00", align 1
@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON3_ADCCON = common dso_local global i32 0, align 4
@spi_clps711x_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_clps711x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_clps711x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_clps711x_data*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @platform_get_irq(%struct.platform_device* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %131

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__* %16, i32 12)
  store %struct.spi_master* %17, %struct.spi_master** %5, align 8
  %18 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %19 = icmp ne %struct.spi_master* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %131

23:                                               ; preds = %14
  %24 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %25 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* @SPI_CPHA, align 4
  %29 = load i32, i32* @SPI_CS_HIGH, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = call i32 @SPI_BPW_RANGE_MASK(i32 1, i32 8)
  %34 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %41 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @spi_clps711x_prepare_message, align 4
  %44 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %45 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @spi_clps711x_transfer_one, align 4
  %47 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %50 = call %struct.spi_clps711x_data* @spi_master_get_devdata(%struct.spi_master* %49)
  store %struct.spi_clps711x_data* %50, %struct.spi_clps711x_data** %4, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @devm_clk_get(%struct.TYPE_8__* %52, i32* null)
  %54 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %55 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %57 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %23
  %62 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %63 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %7, align 4
  br label %127

66:                                               ; preds = %23
  %67 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %69 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %71 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %77 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %7, align 4
  br label %127

80:                                               ; preds = %66
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %81, i32 0)
  %83 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %84 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %86 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %92 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %7, align 4
  br label %127

95:                                               ; preds = %80
  %96 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %97 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SYSCON_OFFSET, align 4
  %100 = load i32, i32* @SYSCON3_ADCCON, align 4
  %101 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %100, i32 0)
  %102 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %4, align 8
  %103 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @readl(i32 %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @spi_clps711x_isr, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_name(%struct.TYPE_8__* %111)
  %113 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %114 = call i32 @devm_request_irq(%struct.TYPE_8__* %107, i32 %108, i32 %109, i32 0, i32 %112, %struct.spi_master* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %95
  br label %127

118:                                              ; preds = %95
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %122 = call i32 @devm_spi_register_master(%struct.TYPE_8__* %120, %struct.spi_master* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %131

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %117, %90, %75, %61
  %128 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %129 = call i32 @spi_master_put(%struct.spi_master* %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %125, %20, %12
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local %struct.spi_clps711x_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_8__*, i32, i32, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_8__*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
