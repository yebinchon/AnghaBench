; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i64, i32 }
%struct.f_ncm = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ncm unbind\0A\00", align 1
@ncm_string_defs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @ncm_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncm_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.f_ncm*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %7 = call %struct.f_ncm* @func_to_ncm(%struct.usb_function* %6)
  store %struct.f_ncm* %7, %struct.f_ncm** %5, align 8
  %8 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %9 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DBG(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.f_ncm*, %struct.f_ncm** %5, align 8
  %13 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %12, i32 0, i32 2
  %14 = call i32 @hrtimer_cancel(i32* %13)
  %15 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %16 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kfree(i32 %17)
  %19 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %20 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ncm_string_defs, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %25 = call i32 @usb_free_all_descriptors(%struct.usb_function* %24)
  %26 = load %struct.f_ncm*, %struct.f_ncm** %5, align 8
  %27 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.f_ncm*, %struct.f_ncm** %5, align 8
  %33 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.f_ncm*, %struct.f_ncm** %5, align 8
  %36 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @usb_ep_free_request(i32 %34, %struct.TYPE_3__* %37)
  ret void
}

declare dso_local %struct.f_ncm* @func_to_ncm(%struct.usb_function*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

declare dso_local i32 @usb_ep_free_request(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
