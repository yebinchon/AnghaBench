; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-clps711x.c_spi_clps711x_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-clps711x.c_spi_clps711x_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_clps711x_data = type { i32 }

@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON3_ADCCKNSEN = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @spi_clps711x_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_clps711x_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.spi_clps711x_data*, align 8
  %6 = alloca %struct.spi_device*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.spi_clps711x_data* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.spi_clps711x_data* %8, %struct.spi_clps711x_data** %5, align 8
  %9 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %10 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 0
  %11 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %5, align 8
  %13 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SYSCON_OFFSET, align 4
  %16 = load i32, i32* @SYSCON3_ADCCKNSEN, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SPI_CPHA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @SYSCON3_ADCCKNSEN, align 4
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %27)
  ret i32 %28
}

declare dso_local %struct.spi_clps711x_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
