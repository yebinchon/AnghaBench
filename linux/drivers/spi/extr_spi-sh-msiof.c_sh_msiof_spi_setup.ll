; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, i32 }
%struct.sh_msiof_spi_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@MDR1_SYNCMD_MASK = common dso_local global i32 0, align 4
@MDR1_SYNCMD_SPI = common dso_local global i32 0, align 4
@MDR1_SYNCAC_SHIFT = common dso_local global i32 0, align 4
@TMDR1 = common dso_local global i32 0, align 4
@MDR1_TRMD = common dso_local global i32 0, align 4
@TMDR1_PCON = common dso_local global i32 0, align 4
@RMDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @sh_msiof_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.sh_msiof_spi_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.sh_msiof_spi_priv* @spi_controller_get_devdata(i32 %10)
  store %struct.sh_msiof_spi_priv* %11, %struct.sh_msiof_spi_priv** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %18 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @spi_controller_is_slave(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %110

23:                                               ; preds = %16
  %24 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %25 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %30 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SPI_CS_HIGH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = icmp eq i32 %31, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %110

43:                                               ; preds = %28, %23
  %44 = load i32, i32* @MDR1_SYNCMD_MASK, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @MDR1_SYNCMD_SPI, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SPI_CS_HIGH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i32, i32* @MDR1_SYNCAC_SHIFT, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %62

57:                                               ; preds = %43
  %58 = load i32, i32* @MDR1_SYNCAC_SHIFT, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %64 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @pm_runtime_get_sync(i32* %66)
  %68 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %69 = load i32, i32* @TMDR1, align 4
  %70 = call i32 @sh_msiof_read(%struct.sh_msiof_spi_priv* %68, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %75 = load i32, i32* @TMDR1, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @MDR1_TRMD, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @TMDR1_PCON, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %74, i32 %75, i32 %82)
  %84 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %85 = load i32, i32* @RMDR1, align 4
  %86 = call i32 @sh_msiof_read(%struct.sh_msiof_spi_priv* %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  store i32 %89, i32* %7, align 4
  %90 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %91 = load i32, i32* @RMDR1, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %90, i32 %91, i32 %94)
  %96 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %97 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @pm_runtime_put(i32* %99)
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SPI_CS_HIGH, align 4
  %105 = and i32 %103, %104
  %106 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %107 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %109 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %62, %42, %22
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.sh_msiof_spi_priv* @spi_controller_get_devdata(i32) #1

declare dso_local i64 @spi_controller_is_slave(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @sh_msiof_read(%struct.sh_msiof_spi_priv*, i32) #1

declare dso_local i32 @sh_msiof_write(%struct.sh_msiof_spi_priv*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
