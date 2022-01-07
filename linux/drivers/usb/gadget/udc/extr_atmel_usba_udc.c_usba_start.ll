; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i64, i64 }

@CTRL = common dso_local global i32 0, align 4
@USBA_ENABLE_MASK = common dso_local global i32 0, align 4
@INT_ENB = common dso_local global i32 0, align 4
@INT_CLR = common dso_local global i32 0, align 4
@USBA_END_OF_RESET = common dso_local global i32 0, align 4
@USBA_END_OF_RESUME = common dso_local global i32 0, align 4
@USBA_DET_SUSPEND = common dso_local global i32 0, align 4
@USBA_WAKE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*)* @usba_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_start(%struct.usba_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %3, align 8
  %6 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %7 = call i32 @start_clock(%struct.usba_udc* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %14 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %51

18:                                               ; preds = %12
  %19 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %20 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %24 = call i32 @toggle_bias(%struct.usba_udc* %23, i32 1)
  %25 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %26 = load i32, i32* @CTRL, align 4
  %27 = load i32, i32* @USBA_ENABLE_MASK, align 4
  %28 = call i32 @usba_writel(%struct.usba_udc* %25, i32 %26, i32 %27)
  %29 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %30 = load i32, i32* @INT_ENB, align 4
  %31 = call i32 @usba_writel(%struct.usba_udc* %29, i32 %30, i32 0)
  %32 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %33 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %35 = load i32, i32* @INT_CLR, align 4
  %36 = load i32, i32* @USBA_END_OF_RESET, align 4
  %37 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USBA_WAKE_UP, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @usba_writel(%struct.usba_udc* %34, i32 %35, i32 %42)
  %44 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %45 = load i32, i32* @USBA_END_OF_RESET, align 4
  %46 = call i32 @usba_int_enb_set(%struct.usba_udc* %44, i32 %45)
  %47 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %48 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %47, i32 0, i32 0
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %18, %17, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @start_clock(%struct.usba_udc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @toggle_bias(%struct.usba_udc*, i32) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @usba_int_enb_set(%struct.usba_udc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
