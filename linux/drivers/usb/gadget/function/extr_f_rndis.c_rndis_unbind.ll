; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i64, i32 }
%struct.f_rndis = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @rndis_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.f_rndis*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %7 = call %struct.f_rndis* @func_to_rndis(%struct.usb_function* %6)
  store %struct.f_rndis* %7, %struct.f_rndis** %5, align 8
  %8 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %9 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @kfree(i32 %10)
  %12 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %13 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %15 = call i32 @usb_free_all_descriptors(%struct.usb_function* %14)
  %16 = load %struct.f_rndis*, %struct.f_rndis** %5, align 8
  %17 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.f_rndis*, %struct.f_rndis** %5, align 8
  %23 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.f_rndis*, %struct.f_rndis** %5, align 8
  %26 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @usb_ep_free_request(i32 %24, %struct.TYPE_2__* %27)
  ret void
}

declare dso_local %struct.f_rndis* @func_to_rndis(%struct.usb_function*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

declare dso_local i32 @usb_ep_free_request(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
