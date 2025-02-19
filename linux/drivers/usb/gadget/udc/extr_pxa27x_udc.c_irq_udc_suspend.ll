; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_irq_udc_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_irq_udc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32 }

@UDCISR1 = common dso_local global i32 0, align 4
@UDCISR1_IRSU = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*)* @irq_udc_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_udc_suspend(%struct.pxa_udc* %0) #0 {
  %2 = alloca %struct.pxa_udc*, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %2, align 8
  %3 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %4 = load i32, i32* @UDCISR1, align 4
  %5 = load i32, i32* @UDCISR1_IRSU, align 4
  %6 = call i32 @udc_writel(%struct.pxa_udc* %3, i32 %4, i32 %5)
  %7 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %8 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %13 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %20 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %25 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_6__*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %32 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %34, align 8
  %36 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %37 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %36, i32 0, i32 0
  %38 = call i32 %35(%struct.TYPE_6__* %37)
  br label %39

39:                                               ; preds = %30, %23, %18, %1
  %40 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %41 = call i32 @ep0_idle(%struct.pxa_udc* %40)
  ret void
}

declare dso_local i32 @udc_writel(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @ep0_idle(%struct.pxa_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
