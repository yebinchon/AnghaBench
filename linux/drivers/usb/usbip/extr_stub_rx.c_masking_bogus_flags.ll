; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_masking_bogus_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_masking_bogus_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, i32, %struct.usb_device*, i32, i64 }
%struct.usb_device = type { i64, %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_STATE_UNAUTHENTICATED = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@URB_NO_INTERRUPT = common dso_local global i32 0, align 4
@URB_DIR_MASK = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @masking_bogus_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @masking_bogus_flags(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = icmp ne %struct.urb* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %11, %1
  br label %130

22:                                               ; preds = %16
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 3
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %4, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = icmp ne %struct.usb_device* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @USB_STATE_UNAUTHENTICATED, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %130

35:                                               ; preds = %28
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @usb_pipein(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 2
  %44 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %43, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 1
  %48 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi %struct.usb_host_endpoint** [ %44, %41 ], [ %48, %45 ]
  %51 = load %struct.urb*, %struct.urb** %2, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @usb_pipeendpoint(i32 %53)
  %55 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %50, i64 %54
  %56 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %55, align 8
  store %struct.usb_host_endpoint* %56, %struct.usb_host_endpoint** %5, align 8
  %57 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %58 = icmp ne %struct.usb_host_endpoint* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %130

60:                                               ; preds = %49
  %61 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %62 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %61, i32 0, i32 0
  %63 = call i32 @usb_endpoint_type(i32* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load %struct.urb*, %struct.urb** %2, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %71, %struct.usb_ctrlrequest** %8, align 8
  %72 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %73 = icmp ne %struct.usb_ctrlrequest* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %130

75:                                               ; preds = %67
  %76 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %77 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @USB_DIR_IN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %84 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %82, %75
  %89 = phi i1 [ true, %75 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %6, align 4
  br label %95

91:                                               ; preds = %60
  %92 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %93 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %92, i32 0, i32 0
  %94 = call i32 @usb_endpoint_dir_out(i32* %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %97 = load i32, i32* @URB_NO_INTERRUPT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @URB_DIR_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @URB_FREE_BUFFER, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %3, align 4
  switch i32 %103, label %112 [
    i32 129, label %104
    i32 128, label %120
  ]

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* @URB_ZERO_PACKET, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %95, %111
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %115, %112
  br label %124

120:                                              ; preds = %95
  %121 = load i32, i32* @URB_ISO_ASAP, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %119
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.urb*, %struct.urb** %2, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %74, %59, %34, %21
  ret void
}

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_endpoint_type(i32*) #1

declare dso_local i32 @usb_endpoint_dir_out(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
