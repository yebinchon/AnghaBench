; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_eps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_eps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { %struct.TYPE_4__, %struct.xusb_ep* }
%struct.TYPE_4__ = type { i32 }
%struct.xusb_ep = type { i64, i32, i64, i64, i64, i64, i32*, %struct.xusb_udc*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@XUSB_MAX_ENDPOINTS = common dso_local global i64 0, align 8
@EPNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ep%d\00", align 1
@xusb_ep_ops = common dso_local global i32 0, align 4
@ep0name = common dso_local global i32 0, align 4
@EP0_MAX_PACKET = common dso_local global i16 0, align 2
@xusb_ep0_ops = common dso_local global i32 0, align 4
@XUSB_EP0_CONFIG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_udc*)* @xudc_eps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_eps_init(%struct.xusb_udc* %0) #0 {
  %2 = alloca %struct.xusb_udc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xusb_ep*, align 8
  store %struct.xusb_udc* %0, %struct.xusb_udc** %2, align 8
  %5 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %6 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %110, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @XUSB_MAX_ENDPOINTS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %113

13:                                               ; preds = %9
  %14 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %15 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %14, i32 0, i32 1
  %16 = load %struct.xusb_ep*, %struct.xusb_ep** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %16, i64 %17
  store %struct.xusb_ep* %18, %struct.xusb_ep** %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %13
  %22 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %23 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %26 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %24, i32* %27)
  %29 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %30 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %29, i32 0, i32 8
  %31 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %30, i16 zeroext -1)
  %32 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %33 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EPNAME_SIZE, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @snprintf(i32 %34, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %39 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %42 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %45 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32* @xusb_ep_ops, i32** %46, align 8
  %47 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %48 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %52 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %56 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  br label %75

59:                                               ; preds = %13
  %60 = load i32, i32* @ep0name, align 4
  %61 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %62 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %65 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %64, i32 0, i32 8
  %66 = load i16, i16* @EP0_MAX_PACKET, align 2
  %67 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %65, i16 zeroext %66)
  %68 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %69 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32* @xusb_ep0_ops, i32** %70, align 8
  %71 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %72 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %59, %21
  %76 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %77 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  store i32 1, i32* %79, align 8
  %80 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %81 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  store i32 1, i32* %83, align 4
  %84 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %85 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %86 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %85, i32 0, i32 7
  store %struct.xusb_udc* %84, %struct.xusb_udc** %86, align 8
  %87 = load i64, i64* %3, align 8
  %88 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %89 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %91 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %90, i32 0, i32 6
  store i32* null, i32** %91, align 8
  %92 = load i64, i64* @XUSB_EP0_CONFIG_OFFSET, align 8
  %93 = load i64, i64* %3, align 8
  %94 = mul i64 %93, 16
  %95 = add i64 %92, %94
  %96 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %97 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %96, i32 0, i32 5
  store i64 %95, i64* %97, align 8
  %98 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %99 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %101 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %103 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %105 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %106 = call i32 @xudc_epconfig(%struct.xusb_ep* %104, %struct.xusb_udc* %105)
  %107 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %108 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %107, i32 0, i32 1
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  br label %110

110:                                              ; preds = %75
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %3, align 8
  br label %9

113:                                              ; preds = %9
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @xudc_epconfig(%struct.xusb_ep*, %struct.xusb_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
