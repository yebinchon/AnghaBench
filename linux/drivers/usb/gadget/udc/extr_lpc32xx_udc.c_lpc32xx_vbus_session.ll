; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_vbus_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_vbus_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.lpc32xx_udc = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @lpc32xx_vbus_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_vbus_session(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpc32xx_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call %struct.lpc32xx_udc* @to_udc(%struct.usb_gadget* %7)
  store %struct.lpc32xx_udc* %8, %struct.lpc32xx_udc** %6, align 8
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %19 = call i32 @udc_clk_set(%struct.lpc32xx_udc* %18, i32 1)
  %20 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %21 = call i32 @udc_enable(%struct.lpc32xx_udc* %20)
  %22 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pullup(%struct.lpc32xx_udc* %22, i32 %23)
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %27 = call i32 @stop_activity(%struct.lpc32xx_udc* %26)
  %28 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %29 = call i32 @pullup(%struct.lpc32xx_udc* %28, i32 0)
  %30 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %35 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %34, i32 0, i32 1
  %36 = call i64 @atomic_read(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %42, i32 0, i32 1
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @wait_event_interruptible(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %38, %25
  %49 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %50 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %54 = call i32 @udc_clk_set(%struct.lpc32xx_udc* %53, i32 0)
  br label %55

55:                                               ; preds = %48, %17
  %56 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %57 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %56, i32 0, i32 0
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret i32 0
}

declare dso_local %struct.lpc32xx_udc* @to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @udc_clk_set(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_enable(%struct.lpc32xx_udc*) #1

declare dso_local i32 @pullup(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @stop_activity(%struct.lpc32xx_udc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
