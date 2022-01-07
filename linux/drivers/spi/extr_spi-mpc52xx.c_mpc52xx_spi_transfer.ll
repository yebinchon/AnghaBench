; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32, i32, i64 }
%struct.mpc52xx_spi = type { i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_message*)* @mpc52xx_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_spi_transfer(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.mpc52xx_spi*, align 8
  %6 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mpc52xx_spi* @spi_master_get_devdata(i32 %9)
  store %struct.mpc52xx_spi* %10, %struct.mpc52xx_spi** %5, align 8
  %11 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @EINPROGRESS, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %16 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %5, align 8
  %18 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %17, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %22 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %21, i32 0, i32 0
  %23 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %5, align 8
  %24 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %23, i32 0, i32 2
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  %26 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %5, align 8
  %27 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %5, align 8
  %31 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %30, i32 0, i32 0
  %32 = call i32 @schedule_work(i32* %31)
  ret i32 0
}

declare dso_local %struct.mpc52xx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
