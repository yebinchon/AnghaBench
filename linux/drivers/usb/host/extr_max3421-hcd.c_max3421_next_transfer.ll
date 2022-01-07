; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_next_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_next_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.max3421_hcd = type { i32, %struct.urb* }
%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.max3421_ep* }
%struct.max3421_ep = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX3421_HXFR_HS_OUT = common dso_local global i32 0, align 4
@MAX3421_HXFR_HS_IN = common dso_local global i32 0, align 4
@MAX3421_REG_HXFR = common dso_local global i32 0, align 4
@MAX3421_HI_HXFRDN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, i32)* @max3421_next_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3421_next_transfer(%struct.usb_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.max3421_ep*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %9)
  store %struct.max3421_hcd* %10, %struct.max3421_hcd** %5, align 8
  %11 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %12 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %11, i32 0, i32 1
  %13 = load %struct.urb*, %struct.urb** %12, align 8
  store %struct.urb* %13, %struct.urb** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.urb*, %struct.urb** %6, align 8
  %17 = icmp ne %struct.urb* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.urb*, %struct.urb** %6, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.max3421_ep*, %struct.max3421_ep** %23, align 8
  store %struct.max3421_ep* %24, %struct.max3421_ep** %7, align 8
  %25 = load %struct.max3421_ep*, %struct.max3421_ep** %7, align 8
  %26 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %55 [
    i32 130, label %28
    i32 128, label %32
    i32 129, label %46
  ]

28:                                               ; preds = %19
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = call i32 @max3421_ctrl_setup(%struct.usb_hcd* %29, %struct.urb* %30)
  store i32 %31, i32* %8, align 4
  br label %55

32:                                               ; preds = %19
  %33 = load %struct.urb*, %struct.urb** %6, align 8
  %34 = call i32 @usb_urb_dir_in(%struct.urb* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call i32 @max3421_transfer_in(%struct.usb_hcd* %37, %struct.urb* %38)
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %32
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @max3421_transfer_out(%struct.usb_hcd* %41, %struct.urb* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %36
  br label %55

46:                                               ; preds = %19
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = call i32 @usb_urb_dir_in(%struct.urb* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @MAX3421_HXFR_HS_OUT, align 4
  store i32 %51, i32* %8, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @MAX3421_HXFR_HS_IN, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %19, %54, %45, %28
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %70

59:                                               ; preds = %55
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %61 = load i32, i32* @MAX3421_REG_HXFR, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @spi_wr8(%struct.usb_hcd* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @MAX3421_HI_HXFRDN_BIT, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %67 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %59, %58, %18
  ret void
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @max3421_ctrl_setup(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @max3421_transfer_in(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @max3421_transfer_out(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spi_wr8(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
