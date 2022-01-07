; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_device_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_device_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cdns3 = type { %struct.cdns3_device* }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cdns3_device_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_device_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca %struct.cdns3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cdns3*
  store %struct.cdns3* %10, %struct.cdns3** %6, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.cdns3*, %struct.cdns3** %6, align 8
  %13 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %12, i32 0, i32 0
  %14 = load %struct.cdns3_device*, %struct.cdns3_device** %13, align 8
  store %struct.cdns3_device* %14, %struct.cdns3_device** %5, align 8
  %15 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %16 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = call i32 @readl(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %26 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = call i32 @readl(i32* %28)
  %30 = and i32 %24, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %33 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = call i32 @writel(i32 %31, i32* %35)
  %37 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %22, %2
  %39 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %40 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @readl(i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %48 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @writel(i32 0, i32* %50)
  %52 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %38
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
