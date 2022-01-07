; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.r8a66597 = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.usb_hcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @r8a66597_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a66597_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.r8a66597* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.r8a66597* %6, %struct.r8a66597** %3, align 8
  %7 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %8 = call %struct.usb_hcd* @r8a66597_to_hcd(%struct.r8a66597* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %4, align 8
  %9 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %10 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %9, i32 0, i32 3
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = call i32 @usb_remove_hcd(%struct.usb_hcd* %12)
  %14 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %15 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @iounmap(i32 %16)
  %18 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %19 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %26 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_put(i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %31 = call i32 @usb_put_hcd(%struct.usb_hcd* %30)
  ret i32 0
}

declare dso_local %struct.r8a66597* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.usb_hcd* @r8a66597_to_hcd(%struct.r8a66597*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
