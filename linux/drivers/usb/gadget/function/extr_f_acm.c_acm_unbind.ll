; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_acm = type { i64, i32 }

@acm_string_defs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @acm_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.f_acm*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %7 = call %struct.f_acm* @func_to_acm(%struct.usb_function* %6)
  store %struct.f_acm* %7, %struct.f_acm** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acm_string_defs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %12 = call i32 @usb_free_all_descriptors(%struct.usb_function* %11)
  %13 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %14 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %19 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %22 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @gs_free_req(i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.f_acm* @func_to_acm(%struct.usb_function*) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

declare dso_local i32 @gs_free_req(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
