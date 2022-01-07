; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301-omap.c_isp1301_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301-omap.c_isp1301_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.isp1301 = type { i32, i32, i32 }

@ISP1301_INTERRUPT_FALLING = common dso_local global i32 0, align 4
@ISP1301_INTERRUPT_RISING = common dso_local global i32 0, align 4
@WORK_STOP = common dso_local global i32 0, align 4
@the_transceiver = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @isp1301_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1301_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.isp1301*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.isp1301* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.isp1301* %5, %struct.isp1301** %3, align 8
  %6 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %7 = load i32, i32* @ISP1301_INTERRUPT_FALLING, align 4
  %8 = call i32 @isp1301_clear_bits(%struct.isp1301* %6, i32 %7, i32 -1)
  %9 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %10 = load i32, i32* @ISP1301_INTERRUPT_RISING, align 4
  %11 = call i32 @isp1301_clear_bits(%struct.isp1301* %9, i32 %10, i32 -1)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.isp1301* %15)
  %17 = call i64 (...) @machine_is_omap_h2()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @gpio_free(i32 2)
  br label %21

21:                                               ; preds = %19, %1
  %22 = load i32, i32* @WORK_STOP, align 4
  %23 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %24 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %23, i32 0, i32 2
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %27 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %26, i32 0, i32 1
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %30 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %29, i32 0, i32 0
  %31 = call i32 @flush_work(i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @put_device(i32* %33)
  store i32* null, i32** @the_transceiver, align 8
  ret i32 0
}

declare dso_local %struct.isp1301* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @isp1301_clear_bits(%struct.isp1301*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.isp1301*) #1

declare dso_local i64 @machine_is_omap_h2(...) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
