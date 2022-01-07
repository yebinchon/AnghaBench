; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ch341_private = type { i8, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CH341_REQ_READ_REG = common dso_local global i32 0, align 4
@CH341_BITS_MODEM_STAT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ch341_private*)* @ch341_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_get_status(%struct.usb_device* %0, %struct.ch341_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ch341_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.ch341_private* %1, %struct.ch341_private** %5, align 8
  store i32 2, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i32 2, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = load i32, i32* @CH341_REQ_READ_REG, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @ch341_control_in(%struct.usb_device* %18, i32 %19, i32 1798, i32 0, i8* %20, i32 2)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %44

25:                                               ; preds = %17
  %26 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %27 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %26, i32 0, i32 1
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = xor i32 %32, -1
  %34 = load i8, i8* @CH341_BITS_MODEM_STAT, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %39 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 4
  %40 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %41 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %40, i32 0, i32 1
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %25, %24
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ch341_control_in(%struct.usb_device*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
