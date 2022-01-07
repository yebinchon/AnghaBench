; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_giveback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_giveback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i64, i64, i32, i32 }
%struct.cdns3_request = type { i32, %struct.TYPE_2__*, %struct.usb_request }
%struct.TYPE_2__ = type { i32 }
%struct.usb_request = type { i32, i64, i64, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@REQUEST_UNALIGNED = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@REQUEST_PENDING = common dso_local global i32 0, align 4
@DEV_VER_V2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns3_gadget_giveback(%struct.cdns3_endpoint* %0, %struct.cdns3_request* %1, i32 %2) #0 {
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca %struct.cdns3_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdns3_device*, align 8
  %8 = alloca %struct.usb_request*, align 8
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %4, align 8
  store %struct.cdns3_request* %1, %struct.cdns3_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %10 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %9, i32 0, i32 2
  %11 = load %struct.cdns3_device*, %struct.cdns3_device** %10, align 8
  store %struct.cdns3_device* %11, %struct.cdns3_device** %7, align 8
  %12 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %13 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %12, i32 0, i32 2
  store %struct.usb_request* %13, %struct.usb_request** %8, align 8
  %14 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %15 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %14, i32 0, i32 4
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %18 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EINPROGRESS, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %29 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %32 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %33 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_gadget_unmap_request_by_dev(i32 %30, %struct.usb_request* %31, i32 %34)
  %36 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %37 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @REQUEST_UNALIGNED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %27
  %43 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %44 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @USB_DIR_OUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %50 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %55 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %58 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %63 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i64 %56, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %53, %48, %42, %27
  %67 = load i32, i32* @REQUEST_PENDING, align 4
  %68 = load i32, i32* @REQUEST_UNALIGNED, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %72 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %76 = call i32 @trace_cdns3_gadget_giveback(%struct.cdns3_request* %75)
  %77 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %78 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DEV_VER_V2, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %66
  %83 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %84 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %85 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %86 = call %struct.usb_request* @cdns3_wa2_gadget_giveback(%struct.cdns3_device* %83, %struct.cdns3_endpoint* %84, %struct.cdns3_request* %85)
  store %struct.usb_request* %86, %struct.usb_request** %8, align 8
  %87 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %88 = icmp ne %struct.usb_request* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %120

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %66
  %92 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %93 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %98 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %97, i32 0, i32 2
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %101 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %100, i32 0, i32 0
  %102 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %103 = call i32 @usb_gadget_giveback_request(i32* %101, %struct.usb_request* %102)
  %104 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %105 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %104, i32 0, i32 2
  %106 = call i32 @spin_lock(i32* %105)
  br label %107

107:                                              ; preds = %96, %91
  %108 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %109 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %112 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %117 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %116, i32 0, i32 0
  %118 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %119 = call i32 @cdns3_gadget_ep_free_request(i32* %117, %struct.usb_request* %118)
  br label %120

120:                                              ; preds = %89, %115, %107
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @usb_gadget_unmap_request_by_dev(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @trace_cdns3_gadget_giveback(%struct.cdns3_request*) #1

declare dso_local %struct.usb_request* @cdns3_wa2_gadget_giveback(%struct.cdns3_device*, %struct.cdns3_endpoint*, %struct.cdns3_request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.usb_request*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cdns3_gadget_ep_free_request(i32*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
