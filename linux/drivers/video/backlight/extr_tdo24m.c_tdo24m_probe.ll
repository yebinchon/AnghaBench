; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tdo24m.c_tdo24m_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tdo24m.c_tdo24m_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.tdo24m = type { i32, i32, i32, i32*, %struct.spi_transfer, %struct.spi_message, i32, i32, %struct.spi_device* }
%struct.spi_transfer = type { i32*, i64 }
%struct.spi_message = type { i32 }
%struct.tdo24m_platform_data = type { i32 }

@SPI_MODE_3 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@MODE_VGA = common dso_local global i32 0, align 4
@TDO24M_SPI_BUFF_SIZE = common dso_local global i32 0, align 4
@tdo24m_adj_mode = common dso_local global i32 0, align 4
@tdo35s_adj_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unsupported model\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"tdo24m\00", align 1
@tdo24m_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tdo24m_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdo24m_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tdo24m*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.tdo24m_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = call %struct.tdo24m_platform_data* @dev_get_platdata(i32* %11)
  store %struct.tdo24m_platform_data* %12, %struct.tdo24m_platform_data** %7, align 8
  %13 = load %struct.tdo24m_platform_data*, %struct.tdo24m_platform_data** %7, align 8
  %14 = icmp ne %struct.tdo24m_platform_data* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.tdo24m_platform_data*, %struct.tdo24m_platform_data** %7, align 8
  %17 = getelementptr inbounds %struct.tdo24m_platform_data, %struct.tdo24m_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  br label %20

19:                                               ; preds = %1
  store i32 129, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  store i32 8, i32* %22, align 4
  %23 = load i32, i32* @SPI_MODE_3, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = call i32 @spi_setup(%struct.spi_device* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %136

32:                                               ; preds = %20
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kzalloc(i32* %34, i32 64, i32 %35)
  %37 = bitcast i8* %36 to %struct.tdo24m*
  store %struct.tdo24m* %37, %struct.tdo24m** %4, align 8
  %38 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %39 = icmp ne %struct.tdo24m* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %136

43:                                               ; preds = %32
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %46 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %45, i32 0, i32 8
  store %struct.spi_device* %44, %struct.spi_device** %46, align 8
  %47 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %48 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %49 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MODE_VGA, align 4
  %51 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %52 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 1
  %55 = load i32, i32* @TDO24M_SPI_BUFF_SIZE, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @devm_kzalloc(i32* %54, i32 %55, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %60 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %62 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %43
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %136

68:                                               ; preds = %43
  %69 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %70 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %69, i32 0, i32 5
  store %struct.spi_message* %70, %struct.spi_message** %5, align 8
  %71 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %72 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %71, i32 0, i32 4
  store %struct.spi_transfer* %72, %struct.spi_transfer** %6, align 8
  %73 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %74 = call i32 @spi_message_init(%struct.spi_message* %73)
  %75 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %76 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %78 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %84 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %85 = call i32 @spi_message_add_tail(%struct.spi_transfer* %83, %struct.spi_message* %84)
  %86 = load i32, i32* %8, align 4
  switch i32 %86, label %99 [
    i32 129, label %87
    i32 128, label %93
  ]

87:                                               ; preds = %68
  %88 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %89 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* @tdo24m_adj_mode, align 4
  %91 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %92 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %105

93:                                               ; preds = %68
  %94 = load i32, i32* @tdo35s_adj_mode, align 4
  %95 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %96 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %98 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %105

99:                                               ; preds = %68
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 1
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %136

105:                                              ; preds = %93, %87
  %106 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 1
  %108 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %109 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %108, i32 0, i32 1
  %110 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %111 = call i32 @devm_lcd_device_register(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %109, %struct.tdo24m* %110, i32* @tdo24m_ops)
  %112 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %113 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %115 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @IS_ERR(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %105
  %120 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %121 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @PTR_ERR(i32 %122)
  store i32 %123, i32* %2, align 4
  br label %136

124:                                              ; preds = %105
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %127 = call i32 @spi_set_drvdata(%struct.spi_device* %125, %struct.tdo24m* %126)
  %128 = load %struct.tdo24m*, %struct.tdo24m** %4, align 8
  %129 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %130 = call i32 @tdo24m_power(%struct.tdo24m* %128, i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %133, %119, %99, %65, %40, %30
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.tdo24m_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_lcd_device_register(i32*, i8*, i32*, %struct.tdo24m*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.tdo24m*) #1

declare dso_local i32 @tdo24m_power(%struct.tdo24m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
