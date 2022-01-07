; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.max3421_hcd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@TASK_RUNNING = common dso_local global i64 0, align 8
@ENABLE_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max3421_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.max3421_hcd*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.usb_hcd*
  store %struct.usb_hcd* %9, %struct.usb_hcd** %5, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.spi_device* @to_spi_device(i32 %13)
  store %struct.spi_device* %14, %struct.spi_device** %6, align 8
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %16 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %15)
  store %struct.max3421_hcd* %16, %struct.max3421_hcd** %7, align 8
  %17 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %18 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %23 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TASK_RUNNING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %31 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @wake_up_process(%struct.TYPE_4__* %32)
  br label %34

34:                                               ; preds = %29, %21, %2
  %35 = load i32, i32* @ENABLE_IRQ, align 4
  %36 = load %struct.max3421_hcd*, %struct.max3421_hcd** %7, align 8
  %37 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %36, i32 0, i32 0
  %38 = call i32 @test_and_set_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @disable_irq_nosync(i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @wake_up_process(%struct.TYPE_4__*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
