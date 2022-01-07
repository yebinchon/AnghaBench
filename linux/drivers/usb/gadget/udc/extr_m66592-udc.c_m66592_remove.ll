; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_m66592-udc.c_m66592_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_m66592-udc.c_m66592_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.m66592 = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @m66592_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m66592_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.m66592*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.m66592* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.m66592* %5, %struct.m66592** %3, align 8
  %6 = load %struct.m66592*, %struct.m66592** %3, align 8
  %7 = getelementptr inbounds %struct.m66592, %struct.m66592* %6, i32 0, i32 6
  %8 = call i32 @usb_del_gadget_udc(i32* %7)
  %9 = load %struct.m66592*, %struct.m66592** %3, align 8
  %10 = getelementptr inbounds %struct.m66592, %struct.m66592* %9, i32 0, i32 5
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load %struct.m66592*, %struct.m66592** %3, align 8
  %13 = getelementptr inbounds %struct.m66592, %struct.m66592* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @iounmap(i32 %14)
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = call i32 @platform_get_irq(%struct.platform_device* %16, i32 0)
  %18 = load %struct.m66592*, %struct.m66592** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.m66592* %18)
  %20 = load %struct.m66592*, %struct.m66592** %3, align 8
  %21 = getelementptr inbounds %struct.m66592, %struct.m66592* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.m66592*, %struct.m66592** %3, align 8
  %26 = getelementptr inbounds %struct.m66592, %struct.m66592* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @m66592_free_request(i32* %24, i32 %27)
  %29 = load %struct.m66592*, %struct.m66592** %3, align 8
  %30 = getelementptr inbounds %struct.m66592, %struct.m66592* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load %struct.m66592*, %struct.m66592** %3, align 8
  %37 = getelementptr inbounds %struct.m66592, %struct.m66592* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_disable(i32 %38)
  %40 = load %struct.m66592*, %struct.m66592** %3, align 8
  %41 = getelementptr inbounds %struct.m66592, %struct.m66592* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_put(i32 %42)
  br label %44

44:                                               ; preds = %35, %1
  %45 = load %struct.m66592*, %struct.m66592** %3, align 8
  %46 = call i32 @kfree(%struct.m66592* %45)
  ret i32 0
}

declare dso_local %struct.m66592* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_irq(i32, %struct.m66592*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @m66592_free_request(i32*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.m66592*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
