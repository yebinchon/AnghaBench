; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_6__, %struct.spi_mpc8xxx_cs*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.fsl_spi_platform_data* }
%struct.fsl_spi_platform_data = type { i32 (%struct.spi_device*, i32)* }
%struct.spi_mpc8xxx_cs = type { i32, i32, i32, i32 }
%struct.mpc8xxx_spi = type { i32, i32, i32, i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@BITBANG_CS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @fsl_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc8xxx_spi*, align 8
  %6 = alloca %struct.fsl_spi_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_mpc8xxx_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(i32 %11)
  store %struct.mpc8xxx_spi* %12, %struct.mpc8xxx_spi** %5, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SPI_CS_HIGH, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %19, align 8
  store %struct.spi_mpc8xxx_cs* %20, %struct.spi_mpc8xxx_cs** %8, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %27, align 8
  store %struct.fsl_spi_platform_data* %28, %struct.fsl_spi_platform_data** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %6, align 8
  %34 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %33, i32 0, i32 0
  %35 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.spi_device*, i32)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %6, align 8
  %39 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %38, i32 0, i32 0
  %40 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %39, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 %40(%struct.spi_device* %41, i32 %45)
  br label %47

47:                                               ; preds = %37, %32
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @BITBANG_CS_ACTIVE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %54 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %57 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %59 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %62 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %64 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %67 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %8, align 8
  %69 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %72 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = call i32 @fsl_spi_change_mode(%struct.spi_device* %73)
  %75 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %6, align 8
  %76 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %75, i32 0, i32 0
  %77 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %76, align 8
  %78 = icmp ne i32 (%struct.spi_device*, i32)* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %52
  %80 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %6, align 8
  %81 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %80, i32 0, i32 0
  %82 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %81, align 8
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 %82(%struct.spi_device* %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %52
  br label %87

87:                                               ; preds = %86, %48
  ret void
}

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @fsl_spi_change_mode(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
