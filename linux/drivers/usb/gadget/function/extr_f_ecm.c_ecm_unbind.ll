; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ecm.c_ecm_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ecm.c_ecm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_ecm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ecm unbind\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @ecm_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecm_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.f_ecm*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %7 = call %struct.f_ecm* @func_to_ecm(%struct.usb_function* %6)
  store %struct.f_ecm* %7, %struct.f_ecm** %5, align 8
  %8 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %9 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DBG(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %13 = call i32 @usb_free_all_descriptors(%struct.usb_function* %12)
  %14 = load %struct.f_ecm*, %struct.f_ecm** %5, align 8
  %15 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.f_ecm*, %struct.f_ecm** %5, align 8
  %21 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.f_ecm*, %struct.f_ecm** %5, align 8
  %24 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @usb_ep_free_request(i32 %22, %struct.TYPE_2__* %25)
  ret void
}

declare dso_local %struct.f_ecm* @func_to_ecm(%struct.usb_function*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_ep_free_request(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
