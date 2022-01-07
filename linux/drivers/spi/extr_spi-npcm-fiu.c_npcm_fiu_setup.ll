; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, %struct.spi_controller* }
%struct.spi_controller = type { i32 }
%struct.npcm_fiu_spi = type { i32, i32, %struct.npcm_fiu_chip* }
%struct.npcm_fiu_chip = type { i64, i32, %struct.npcm_fiu_spi* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @npcm_fiu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_fiu_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.npcm_fiu_spi*, align 8
  %5 = alloca %struct.npcm_fiu_chip*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 2
  %8 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  store %struct.spi_controller* %8, %struct.spi_controller** %3, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %10 = call %struct.npcm_fiu_spi* @spi_controller_get_devdata(%struct.spi_controller* %9)
  store %struct.npcm_fiu_spi* %10, %struct.npcm_fiu_spi** %4, align 8
  %11 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %12 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %11, i32 0, i32 2
  %13 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %12, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %13, i64 %16
  store %struct.npcm_fiu_chip* %17, %struct.npcm_fiu_chip** %5, align 8
  %18 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %19 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %5, align 8
  %20 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %19, i32 0, i32 2
  store %struct.npcm_fiu_spi* %18, %struct.npcm_fiu_spi** %20, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %5, align 8
  %25 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %5, align 8
  %30 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %32 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_get_rate(i32 %33)
  %35 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %36 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  ret i32 0
}

declare dso_local %struct.npcm_fiu_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
