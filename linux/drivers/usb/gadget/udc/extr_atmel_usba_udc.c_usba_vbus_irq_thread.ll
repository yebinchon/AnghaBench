; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_vbus_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_vbus_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usba_vbus_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_vbus_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usba_udc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.usba_udc*
  store %struct.usba_udc* %8, %struct.usba_udc** %5, align 8
  %9 = call i32 @udelay(i32 10)
  %10 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %11 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %14 = call i32 @vbus_is_present(%struct.usba_udc* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %17 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %25 = call i32 @usba_start(%struct.usba_udc* %24)
  br label %47

26:                                               ; preds = %20
  %27 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %28 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %30 = call i32 @usba_stop(%struct.usba_udc* %29)
  %31 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %32 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32*)*, i32 (i32*)** %34, align 8
  %36 = icmp ne i32 (i32*)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %39 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32*)*, i32 (i32*)** %41, align 8
  %43 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %44 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %43, i32 0, i32 3
  %45 = call i32 %42(i32* %44)
  br label %46

46:                                               ; preds = %37, %26
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %50 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %2
  %52 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %53 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %52, i32 0, i32 2
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vbus_is_present(%struct.usba_udc*) #1

declare dso_local i32 @usba_start(%struct.usba_udc*) #1

declare dso_local i32 @usba_stop(%struct.usba_udc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
