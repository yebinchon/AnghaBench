; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.mpc8xxx_spi = type { %struct.fsl_spi_reg* }
%struct.fsl_spi_reg = type { i32 }
%struct.spi_mpc8xxx_cs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPMODE_CP_BEGIN_EDGECLK = common dso_local global i32 0, align 4
@SPMODE_CI_INACTIVEHIGH = common dso_local global i32 0, align 4
@SPMODE_REV = common dso_local global i32 0, align 4
@SPMODE_LOOP = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @fsl_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mpc8xxx_spi*, align 8
  %5 = alloca %struct.fsl_spi_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_mpc8xxx_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.spi_mpc8xxx_cs* @spi_get_ctldata(%struct.spi_device* %9)
  store %struct.spi_mpc8xxx_cs* %10, %struct.spi_mpc8xxx_cs** %8, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %126

18:                                               ; preds = %1
  %19 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %20 = icmp ne %struct.spi_mpc8xxx_cs* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.spi_mpc8xxx_cs* @kzalloc(i32 4, i32 %22)
  store %struct.spi_mpc8xxx_cs* %23, %struct.spi_mpc8xxx_cs** %8, align 8
  %24 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %25 = icmp ne %struct.spi_mpc8xxx_cs* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %126

29:                                               ; preds = %21
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %32 = call i32 @spi_set_ctldata(%struct.spi_device* %30, %struct.spi_mpc8xxx_cs* %31)
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(i32 %36)
  store %struct.mpc8xxx_spi* %37, %struct.mpc8xxx_spi** %4, align 8
  %38 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %4, align 8
  %39 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %38, i32 0, i32 0
  %40 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %39, align 8
  store %struct.fsl_spi_reg* %40, %struct.fsl_spi_reg** %5, align 8
  %41 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %42 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %5, align 8
  %45 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %44, i32 0, i32 0
  %46 = call i32 @mpc8xxx_spi_read_reg(i32* %45)
  %47 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %48 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SPMODE_CP_BEGIN_EDGECLK, align 4
  %50 = load i32, i32* @SPMODE_CI_INACTIVEHIGH, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SPMODE_REV, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SPMODE_LOOP, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %58 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SPI_CPHA, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %33
  %68 = load i32, i32* @SPMODE_CP_BEGIN_EDGECLK, align 4
  %69 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %70 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %33
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SPI_CPOL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @SPMODE_CI_INACTIVEHIGH, align 4
  %82 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %83 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SPI_LSB_FIRST, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* @SPMODE_REV, align 4
  %95 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %96 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SPI_LOOP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @SPMODE_LOOP, align 4
  %108 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %109 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = call i32 @fsl_spi_setup_transfer(%struct.spi_device* %113, i32* null)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %120 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %126

122:                                              ; preds = %112
  %123 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %124 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %125 = call i32 @fsl_spi_chipselect(%struct.spi_device* %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %117, %26, %15
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.spi_mpc8xxx_cs* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.spi_mpc8xxx_cs* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.spi_mpc8xxx_cs*) #1

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @mpc8xxx_spi_read_reg(i32*) #1

declare dso_local i32 @fsl_spi_setup_transfer(%struct.spi_device*, i32*) #1

declare dso_local i32 @fsl_spi_chipselect(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
