; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.spi_master = type { i32, %struct.TYPE_8__, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.xlp_spi_priv = type { i32, i32, %struct.clk* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xlp_spi_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to request irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"could not get spi clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not alloc master\0A\00", align 1
@XLP_SPI_MAX_CS = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@xlp_spi_setup = common dso_local global i32 0, align 4
@xlp_spi_transfer_one = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"spi register master failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlp_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.xlp_spi_priv*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.xlp_spi_priv* @devm_kzalloc(%struct.TYPE_9__* %10, i32 16, i32 %11)
  store %struct.xlp_spi_priv* %12, %struct.xlp_spi_priv** %5, align 8
  %13 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %14 = icmp ne %struct.xlp_spi_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %135

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call %struct.clk* @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %22 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %21, i32 0, i32 2
  store %struct.clk* %20, %struct.clk** %22, align 8
  %23 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %24 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %23, i32 0, i32 2
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  %26 = call i64 @IS_ERR(%struct.clk* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %30 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %29, i32 0, i32 2
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  %32 = call i32 @PTR_ERR(%struct.clk* %31)
  store i32 %32, i32* %2, align 4
  br label %135

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %135

40:                                               ; preds = %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @xlp_spi_interrupt, align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %49 = call i32 @devm_request_irq(%struct.TYPE_9__* %42, i32 %43, i32 %44, i32 0, i32 %47, %struct.xlp_spi_priv* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %135

58:                                               ; preds = %40
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call %struct.clk* @devm_clk_get(%struct.TYPE_9__* %60, i32* null)
  store %struct.clk* %61, %struct.clk** %6, align 8
  %62 = load %struct.clk*, %struct.clk** %6, align 8
  %63 = call i64 @IS_ERR(%struct.clk* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.clk*, %struct.clk** %6, align 8
  %70 = call i32 @PTR_ERR(%struct.clk* %69)
  store i32 %70, i32* %2, align 4
  br label %135

71:                                               ; preds = %58
  %72 = load %struct.clk*, %struct.clk** %6, align 8
  %73 = call i32 @clk_get_rate(%struct.clk* %72)
  %74 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %75 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__* %77, i32 0)
  store %struct.spi_master* %78, %struct.spi_master** %4, align 8
  %79 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %80 = icmp ne %struct.spi_master* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %71
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %135

87:                                               ; preds = %71
  %88 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %89 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @XLP_SPI_MAX_CS, align 4
  %91 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %92 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @SPI_CPOL, align 4
  %94 = load i32, i32* @SPI_CPHA, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SPI_CS_HIGH, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %99 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @xlp_spi_setup, align 4
  %101 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %102 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @xlp_spi_transfer_one, align 4
  %104 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %105 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %111 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %114 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %113, i32 0, i32 0
  %115 = call i32 @init_completion(i32* %114)
  %116 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %117 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %118 = call i32 @spi_master_set_devdata(%struct.spi_master* %116, %struct.xlp_spi_priv* %117)
  %119 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %5, align 8
  %120 = call i32 @xlp_spi_sysctl_setup(%struct.xlp_spi_priv* %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %124 = call i32 @devm_spi_register_master(%struct.TYPE_9__* %122, %struct.spi_master* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %87
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %132 = call i32 @spi_master_put(%struct.spi_master* %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %127, %81, %65, %52, %38, %28, %15
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.xlp_spi_priv* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.clk* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i32, %struct.xlp_spi_priv*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_master_set_devdata(%struct.spi_master*, %struct.xlp_spi_priv*) #1

declare dso_local i32 @xlp_spi_sysctl_setup(%struct.xlp_spi_priv*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_9__*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
