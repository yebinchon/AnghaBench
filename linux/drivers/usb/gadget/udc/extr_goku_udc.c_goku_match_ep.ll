; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_goku_match_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_goku_match_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_gadget = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_ss_ep_comp_descriptor = type { i32 }
%struct.goku_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_ep }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* @goku_match_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_ep* @goku_match_ep(%struct.usb_gadget* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_ss_ep_comp_descriptor* %2) #0 {
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_ss_ep_comp_descriptor*, align 8
  %8 = alloca %struct.goku_udc*, align 8
  %9 = alloca %struct.usb_ep*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %5, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_ss_ep_comp_descriptor* %2, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %11 = call %struct.goku_udc* @to_goku_udc(%struct.usb_gadget* %10)
  store %struct.goku_udc* %11, %struct.goku_udc** %8, align 8
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %13 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %12)
  switch i32 %13, label %49 [
    i32 128, label %14
    i32 129, label %29
  ]

14:                                               ; preds = %3
  %15 = load %struct.goku_udc*, %struct.goku_udc** %8, align 8
  %16 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.usb_ep* %19, %struct.usb_ep** %9, align 8
  %20 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %21 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %23 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %24 = call i32 @usb_gadget_ep_match_desc(%struct.usb_gadget* %20, %struct.usb_ep* %21, %struct.usb_endpoint_descriptor* %22, %struct.usb_ss_ep_comp_descriptor* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %27, %struct.usb_ep** %4, align 8
  br label %51

28:                                               ; preds = %14
  br label %50

29:                                               ; preds = %3
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %31 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.goku_udc*, %struct.goku_udc** %8, align 8
  %35 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.usb_ep* %38, %struct.usb_ep** %9, align 8
  %39 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %40 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %42 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %43 = call i32 @usb_gadget_ep_match_desc(%struct.usb_gadget* %39, %struct.usb_ep* %40, %struct.usb_endpoint_descriptor* %41, %struct.usb_ss_ep_comp_descriptor* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %46, %struct.usb_ep** %4, align 8
  br label %51

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %29
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %48, %28
  store %struct.usb_ep* null, %struct.usb_ep** %4, align 8
  br label %51

51:                                               ; preds = %50, %45, %26
  %52 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  ret %struct.usb_ep* %52
}

declare dso_local %struct.goku_udc* @to_goku_udc(%struct.usb_gadget*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_gadget_ep_match_desc(%struct.usb_gadget*, %struct.usb_ep*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
