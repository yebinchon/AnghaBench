; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_calc_rammap_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_calc_rammap_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@usb3_calc_rammap_val.max_packet_array = internal constant [5 x i32] [i32 8, i32 16, i32 32, i32 64, i32 512], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*, %struct.usb_endpoint_descriptor*)* @usb3_calc_rammap_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_calc_rammap_val(%struct.renesas_usb3_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %7 = call i32 @PN_RAMMAP_MPKT(i32 1024)
  store i32 %7, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @usb3_calc_rammap_val.max_packet_array, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %14 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %13)
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* @usb3_calc_rammap_val.max_packet_array, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %14, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* @usb3_calc_rammap_val.max_packet_array, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PN_RAMMAP_MPKT(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %32 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %33, %34
  ret i32 %35
}

declare dso_local i32 @PN_RAMMAP_MPKT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
