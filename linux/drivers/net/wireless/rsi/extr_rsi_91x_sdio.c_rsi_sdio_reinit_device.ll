; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_sdio_reinit_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_sdio_reinit_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { %struct.TYPE_2__*, %struct.rsi_91x_sdiodev* }
%struct.TYPE_2__ = type { i32* }
%struct.rsi_91x_sdiodev = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@NUM_SOFT_QUEUES = common dso_local global i32 0, align 4
@rsi_handle_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_hw*)* @rsi_sdio_reinit_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_sdio_reinit_device(%struct.rsi_hw* %0) #0 {
  %2 = alloca %struct.rsi_hw*, align 8
  %3 = alloca %struct.rsi_91x_sdiodev*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %2, align 8
  %6 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %7 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %6, i32 0, i32 1
  %8 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  store %struct.rsi_91x_sdiodev* %8, %struct.rsi_91x_sdiodev** %3, align 8
  %9 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %3, align 8
  %10 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %9, i32 0, i32 0
  %11 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  store %struct.sdio_func* %11, %struct.sdio_func** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NUM_SOFT_QUEUES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %18 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @skb_queue_purge(i32* %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %31 = call i32 @sdio_claim_host(%struct.sdio_func* %30)
  %32 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %33 = call i32 @sdio_release_irq(%struct.sdio_func* %32)
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = call i32 @rsi_reset_card(%struct.sdio_func* %34)
  %36 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %37 = call i32 @sdio_enable_func(%struct.sdio_func* %36)
  %38 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %39 = call i32 @rsi_setupcard(%struct.rsi_hw* %38)
  %40 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %41 = call i32 @rsi_init_sdio_slave_regs(%struct.rsi_hw* %40)
  %42 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %43 = load i32, i32* @rsi_handle_interrupt, align 4
  %44 = call i32 @sdio_claim_irq(%struct.sdio_func* %42, i32 %43)
  %45 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %46 = call i32 @rsi_hal_device_init(%struct.rsi_hw* %45)
  %47 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %48 = call i32 @sdio_release_host(%struct.sdio_func* %47)
  ret i32 0
}

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @rsi_reset_card(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @rsi_setupcard(%struct.rsi_hw*) #1

declare dso_local i32 @rsi_init_sdio_slave_regs(%struct.rsi_hw*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @rsi_hal_device_init(%struct.rsi_hw*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
