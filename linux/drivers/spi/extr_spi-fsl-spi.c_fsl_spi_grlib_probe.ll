; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_grlib_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_grlib_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_spi_platform_data = type { i32 }
%struct.spi_master = type { i64 }
%struct.mpc8xxx_spi = type { i32, i64, i32, %struct.fsl_spi_reg* }
%struct.fsl_spi_reg = type { i32, i32 }

@fsl_spi_grlib_set_shifts = common dso_local global i32 0, align 4
@fsl_spi_grlib_cs_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @fsl_spi_grlib_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_spi_grlib_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.fsl_spi_platform_data*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.mpc8xxx_spi*, align 8
  %6 = alloca %struct.fsl_spi_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device* %9)
  store %struct.fsl_spi_platform_data* %10, %struct.fsl_spi_platform_data** %3, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call %struct.spi_master* @dev_get_drvdata(%struct.device* %11)
  store %struct.spi_master* %12, %struct.spi_master** %4, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %14 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(%struct.spi_master* %13)
  store %struct.mpc8xxx_spi* %14, %struct.mpc8xxx_spi** %5, align 8
  %15 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %16 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %15, i32 0, i32 3
  %17 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %16, align 8
  store %struct.fsl_spi_reg* %17, %struct.fsl_spi_reg** %6, align 8
  %18 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %6, align 8
  %19 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %18, i32 0, i32 1
  %20 = call i32 @mpc8xxx_spi_read_reg(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @fsl_spi_grlib_set_shifts, align 4
  %22 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %23 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @SPCAP_MAXWLEN(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %32 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %35 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @SPCAP_SSEN(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @SPCAP_SSSZ(i32 %40)
  %42 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %43 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %6, align 8
  %45 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %44, i32 0, i32 0
  %46 = call i32 @mpc8xxx_spi_write_reg(i32* %45, i32 -1)
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %49 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %52 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @fsl_spi_grlib_cs_control, align 4
  %54 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.spi_master* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @mpc8xxx_spi_read_reg(i32*) #1

declare dso_local i32 @SPCAP_MAXWLEN(i32) #1

declare dso_local i64 @SPCAP_SSEN(i32) #1

declare dso_local i64 @SPCAP_SSSZ(i32) #1

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
