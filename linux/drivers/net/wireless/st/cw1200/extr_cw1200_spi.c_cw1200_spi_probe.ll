; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, i32 }
%struct.cw1200_platform_data_spi = type { i32, i32, i32, i32, i32 }
%struct.hwbus_priv = type { %struct.cw1200_platform_data_spi*, i32, i32, i32, %struct.spi_device* }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cw1200_wlan_spi: Probe called (CS %d M %d BPW %d CLK %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"spi_on() failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"spi_setup() failed!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't allocate SPI hwbus_priv.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cw1200_spi_hwbus_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cw1200_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.cw1200_platform_data_spi*, align 8
  %5 = alloca %struct.hwbus_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = call %struct.cw1200_platform_data_spi* @dev_get_platdata(i32* %8)
  store %struct.cw1200_platform_data_spi* %9, %struct.cw1200_platform_data_spi** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 52000000
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  store i32 52000000, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1000000
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  store i32 1000000, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %4, align 8
  %27 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %4, align 8
  %32 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  store i32 16, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* @SPI_MODE_0, align 4
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %4, align 8
  %62 = call i64 @cw1200_spi_on(%struct.cw1200_platform_data_spi* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %136

66:                                               ; preds = %44
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = call i64 @spi_setup(%struct.spi_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %136

72:                                               ; preds = %66
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 2
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.hwbus_priv* @devm_kzalloc(i32* %74, i32 32, i32 %75)
  store %struct.hwbus_priv* %76, %struct.hwbus_priv** %5, align 8
  %77 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %78 = icmp ne %struct.hwbus_priv* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %136

83:                                               ; preds = %72
  %84 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %4, align 8
  %85 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %86 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %85, i32 0, i32 0
  store %struct.cw1200_platform_data_spi* %84, %struct.cw1200_platform_data_spi** %86, align 8
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %89 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %88, i32 0, i32 4
  store %struct.spi_device* %87, %struct.spi_device** %89, align 8
  %90 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %91 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %90, i32 0, i32 3
  %92 = call i32 @spin_lock_init(i32* %91)
  %93 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %94 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %95 = call i32 @spi_set_drvdata(%struct.spi_device* %93, %struct.hwbus_priv* %94)
  %96 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %97 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %96, i32 0, i32 2
  %98 = call i32 @init_waitqueue_head(i32* %97)
  %99 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %100 = call i32 @cw1200_spi_irq_subscribe(%struct.hwbus_priv* %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 2
  %104 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %105 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %104, i32 0, i32 1
  %106 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %107 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %106, i32 0, i32 0
  %108 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %107, align 8
  %109 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %112 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %111, i32 0, i32 0
  %113 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %112, align 8
  %114 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %117 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %116, i32 0, i32 0
  %118 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %117, align 8
  %119 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %122 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %121, i32 0, i32 0
  %123 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %122, align 8
  %124 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @cw1200_core_probe(i32* @cw1200_spi_hwbus_ops, %struct.hwbus_priv* %101, i32* %103, i32* %105, i32 %110, i32 %115, i32 %120, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %83
  %130 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %131 = call i32 @cw1200_spi_irq_unsubscribe(%struct.hwbus_priv* %130)
  %132 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %4, align 8
  %133 = call i32 @cw1200_spi_off(%struct.cw1200_platform_data_spi* %132)
  br label %134

134:                                              ; preds = %129, %83
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %79, %70, %64
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.cw1200_platform_data_spi* @dev_get_platdata(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @cw1200_spi_on(%struct.cw1200_platform_data_spi*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.hwbus_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.hwbus_priv*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cw1200_spi_irq_subscribe(%struct.hwbus_priv*) #1

declare dso_local i32 @cw1200_core_probe(i32*, %struct.hwbus_priv*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cw1200_spi_irq_unsubscribe(%struct.hwbus_priv*) #1

declare dso_local i32 @cw1200_spi_off(%struct.cw1200_platform_data_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
