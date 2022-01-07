; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_transfer_out_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_transfer_out_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i64, i64, i32, i32, i32 }
%struct.max3421_hcd = type { i64 }

@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*)* @max3421_transfer_out_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_transfer_out_done(%struct.usb_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.max3421_hcd*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %9 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %8)
  store %struct.max3421_hcd* %9, %struct.max3421_hcd** %6, align 8
  %10 = load %struct.max3421_hcd*, %struct.max3421_hcd** %6, align 8
  %11 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @URB_ZERO_PACKET, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @usb_maxpacket(i32 %35, i32 %38, i32 1)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.max3421_hcd*, %struct.max3421_hcd** %6, align 8
  %41 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %48

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %25
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %45, %24
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i64 @usb_maxpacket(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
