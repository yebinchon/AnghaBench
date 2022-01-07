; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_host_transfer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_host_transfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.max3421_hcd = type { i32, i32, i32*, %struct.urb* }
%struct.urb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.max3421_ep* }
%struct.max3421_ep = type { i32, i64, i64 }

@MAX3421_HI_HXFRDN_BIT = common dso_local global i32 0, align 4
@MAX3421_HI_RCVDAV_BIT = common dso_local global i32 0, align 4
@MAX3421_REG_HRSL = common dso_local global i32 0, align 4
@MAX3421_HRSL_RESULT_MASK = common dso_local global i64 0, align 8
@MAX3421_HRSL_OK = common dso_local global i64 0, align 8
@PIPE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @max3421_host_transfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3421_host_transfer_done(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.max3421_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.max3421_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %10 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %9)
  store %struct.max3421_hcd* %10, %struct.max3421_hcd** %3, align 8
  %11 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %11, i32 0, i32 3
  %13 = load %struct.urb*, %struct.urb** %12, align 8
  store %struct.urb* %13, %struct.urb** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @MAX3421_HI_HXFRDN_BIT, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = load i32, i32* @MAX3421_HI_RCVDAV_BIT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = or i32 %15, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %25 = load i32, i32* @MAX3421_REG_HRSL, align 4
  %26 = call i64 @spi_rd8(%struct.usb_hcd* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @MAX3421_HRSL_RESULT_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %6, align 8
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.max3421_ep*, %struct.max3421_ep** %33, align 8
  store %struct.max3421_ep* %34, %struct.max3421_ep** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @MAX3421_HRSL_OK, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @max3421_handle_error(%struct.usb_hcd* %42, i64 %43)
  br label %104

45:                                               ; preds = %1
  %46 = load %struct.max3421_ep*, %struct.max3421_ep** %5, align 8
  %47 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.max3421_ep*, %struct.max3421_ep** %5, align 8
  %49 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.max3421_ep*, %struct.max3421_ep** %5, align 8
  %51 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %94 [
    i32 130, label %53
    i32 128, label %65
    i32 129, label %93
  ]

53:                                               ; preds = %45
  %54 = load %struct.urb*, %struct.urb** %4, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.max3421_ep*, %struct.max3421_ep** %5, align 8
  %60 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %59, i32 0, i32 0
  store i32 128, i32* %60, align 8
  br label %64

61:                                               ; preds = %53
  %62 = load %struct.max3421_ep*, %struct.max3421_ep** %5, align 8
  %63 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %62, i32 0, i32 0
  store i32 129, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  br label %94

65:                                               ; preds = %45
  %66 = load %struct.urb*, %struct.urb** %4, align 8
  %67 = call i32 @usb_urb_dir_in(%struct.urb* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %71 = load %struct.urb*, %struct.urb** %4, align 8
  %72 = call i32 @max3421_transfer_in_done(%struct.usb_hcd* %70, %struct.urb* %71)
  store i32 %72, i32* %8, align 4
  br label %77

73:                                               ; preds = %65
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %75 = load %struct.urb*, %struct.urb** %4, align 8
  %76 = call i32 @max3421_transfer_out_done(%struct.usb_hcd* %74, %struct.urb* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.urb*, %struct.urb** %4, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @usb_pipetype(i32 %83)
  %85 = load i32, i32* @PIPE_CONTROL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  %88 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %89 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.max3421_ep*, %struct.max3421_ep** %5, align 8
  %91 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %90, i32 0, i32 0
  store i32 129, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %80, %77
  br label %94

93:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %45, %93, %92, %64
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %100 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %104

101:                                              ; preds = %94
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %103 = call i32 @max3421_next_transfer(%struct.usb_hcd* %102, i32 0)
  br label %104

104:                                              ; preds = %41, %101, %97
  ret void
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @spi_rd8(%struct.usb_hcd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @max3421_handle_error(%struct.usb_hcd*, i64) #1

declare dso_local i32 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @max3421_transfer_in_done(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @max3421_transfer_out_done(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @max3421_next_transfer(%struct.usb_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
