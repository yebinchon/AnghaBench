; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_hidg_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_hidg_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_hidg = type { i32, i32 }

@hidg_class = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @hidg_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidg_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.f_hidg*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %7 = call %struct.f_hidg* @func_to_hidg(%struct.usb_function* %6)
  store %struct.f_hidg* %7, %struct.f_hidg** %5, align 8
  %8 = load i32, i32* @hidg_class, align 4
  %9 = load i32, i32* @major, align 4
  %10 = load %struct.f_hidg*, %struct.f_hidg** %5, align 8
  %11 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MKDEV(i32 %9, i32 %12)
  %14 = call i32 @device_destroy(i32 %8, i32 %13)
  %15 = load %struct.f_hidg*, %struct.f_hidg** %5, align 8
  %16 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %15, i32 0, i32 0
  %17 = call i32 @cdev_del(i32* %16)
  %18 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %19 = call i32 @usb_free_all_descriptors(%struct.usb_function* %18)
  ret void
}

declare dso_local %struct.f_hidg* @func_to_hidg(%struct.usb_function*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
