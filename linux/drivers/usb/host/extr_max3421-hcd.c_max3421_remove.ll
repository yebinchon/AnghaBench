; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3421_hcd = type { i32, %struct.max3421_hcd*, i32 }
%struct.spi_device = type { i32, i32 }
%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@max3421_hcd_list = common dso_local global %struct.max3421_hcd* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"no MAX3421 HCD found for SPI device %p\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max3421_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_remove(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.max3421_hcd*, align 8
  %5 = alloca %struct.max3421_hcd**, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.max3421_hcd* null, %struct.max3421_hcd** %4, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %6, align 8
  store %struct.max3421_hcd** @max3421_hcd_list, %struct.max3421_hcd*** %5, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load %struct.max3421_hcd**, %struct.max3421_hcd*** %5, align 8
  %10 = load %struct.max3421_hcd*, %struct.max3421_hcd** %9, align 8
  %11 = icmp ne %struct.max3421_hcd* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.max3421_hcd**, %struct.max3421_hcd*** %5, align 8
  %14 = load %struct.max3421_hcd*, %struct.max3421_hcd** %13, align 8
  store %struct.max3421_hcd* %14, %struct.max3421_hcd** %4, align 8
  %15 = load %struct.max3421_hcd*, %struct.max3421_hcd** %4, align 8
  %16 = call %struct.usb_hcd* @max3421_to_hcd(%struct.max3421_hcd* %15)
  store %struct.usb_hcd* %16, %struct.usb_hcd** %6, align 8
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = icmp eq i32* %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %30

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.max3421_hcd**, %struct.max3421_hcd*** %5, align 8
  %28 = load %struct.max3421_hcd*, %struct.max3421_hcd** %27, align 8
  %29 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %28, i32 0, i32 1
  store %struct.max3421_hcd** %29, %struct.max3421_hcd*** %5, align 8
  br label %8

30:                                               ; preds = %24, %8
  %31 = load %struct.max3421_hcd*, %struct.max3421_hcd** %4, align 8
  %32 = icmp ne %struct.max3421_hcd* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.spi_device* %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %30
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %42 = call i32 @usb_remove_hcd(%struct.usb_hcd* %41)
  %43 = load %struct.max3421_hcd*, %struct.max3421_hcd** %4, align 8
  %44 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.max3421_hcd*, %struct.max3421_hcd** %4, align 8
  %48 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @kthread_stop(i32 %49)
  %51 = load %struct.max3421_hcd*, %struct.max3421_hcd** %4, align 8
  %52 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %51, i32 0, i32 1
  %53 = load %struct.max3421_hcd*, %struct.max3421_hcd** %52, align 8
  %54 = load %struct.max3421_hcd**, %struct.max3421_hcd*** %5, align 8
  store %struct.max3421_hcd* %53, %struct.max3421_hcd** %54, align 8
  %55 = load %struct.max3421_hcd*, %struct.max3421_hcd** %4, align 8
  %56 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %63 = call i32 @free_irq(i32 %61, %struct.usb_hcd* %62)
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %65 = call i32 @usb_put_hcd(%struct.usb_hcd* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %40, %33
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.usb_hcd* @max3421_to_hcd(%struct.max3421_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.spi_device*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
