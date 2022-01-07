; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.sun6i_spi = type { i32 }

@SUN6I_TFR_CTL_REG = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_CS_MASK = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_CS_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @sun6i_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun6i_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sun6i_spi* @spi_master_get_devdata(i32 %9)
  store %struct.sun6i_spi* %10, %struct.sun6i_spi** %5, align 8
  %11 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %12 = load i32, i32* @SUN6I_TFR_CTL_REG, align 4
  %13 = call i32 @sun6i_spi_read(%struct.sun6i_spi* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @SUN6I_TFR_CTL_CS_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SUN6I_TFR_CTL_CS(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @SUN6I_TFR_CTL_CS_LEVEL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @SUN6I_TFR_CTL_CS_LEVEL, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %37 = load i32, i32* @SUN6I_TFR_CTL_REG, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local %struct.sun6i_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @sun6i_spi_read(%struct.sun6i_spi*, i32) #1

declare dso_local i32 @SUN6I_TFR_CTL_CS(i32) #1

declare dso_local i32 @sun6i_spi_write(%struct.sun6i_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
