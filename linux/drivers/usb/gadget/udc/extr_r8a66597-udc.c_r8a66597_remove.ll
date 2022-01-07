; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.r8a66597 = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @r8a66597_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a66597_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.r8a66597*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.r8a66597* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.r8a66597* %5, %struct.r8a66597** %3, align 8
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %6, i32 0, i32 5
  %8 = call i32 @usb_del_gadget_udc(i32* %7)
  %9 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %10 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %9, i32 0, i32 4
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %13 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %18 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @r8a66597_free_request(i32* %16, i32 %19)
  %21 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %22 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %29 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  br label %32

32:                                               ; preds = %27, %1
  ret i32 0
}

declare dso_local %struct.r8a66597* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @r8a66597_free_request(i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
