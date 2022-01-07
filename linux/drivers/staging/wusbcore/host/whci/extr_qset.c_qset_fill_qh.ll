; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_fill_qh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_fill_qh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.whc_qset = type { i32, i32, %struct.TYPE_12__, i8*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.urb = type { i32, %struct.TYPE_8__*, %struct.usb_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device = type { i32, %struct.wusb_dev* }
%struct.wusb_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.usb_wireless_ep_comp_descriptor = type { i32, i32 }

@UWB_PHY_RATE_53 = common dso_local global i64 0, align 8
@QH_INFO1_DIR_OUT = common dso_local global i32 0, align 4
@QH_INFO1_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whc*, %struct.whc_qset*, %struct.urb*)* @qset_fill_qh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qset_fill_qh(%struct.whc* %0, %struct.whc_qset* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.whc*, align 8
  %5 = alloca %struct.whc_qset*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.wusb_dev*, align 8
  %9 = alloca %struct.usb_wireless_ep_comp_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.whc* %0, %struct.whc** %4, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 2
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %7, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = load %struct.wusb_dev*, %struct.wusb_dev** %17, align 8
  store %struct.wusb_dev* %18, %struct.wusb_dev** %8, align 8
  %19 = load %struct.urb*, %struct.urb** %6, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @usb_pipeout(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le16_to_cpu(i32 %28)
  %30 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %31 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %33 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %32, i32 0, i32 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.usb_wireless_ep_comp_descriptor*
  store %struct.usb_wireless_ep_comp_descriptor* %37, %struct.usb_wireless_ep_comp_descriptor** %9, align 8
  %38 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %9, align 8
  %39 = icmp ne %struct.usb_wireless_ep_comp_descriptor* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %3
  %41 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %9, align 8
  %42 = getelementptr inbounds %struct.usb_wireless_ep_comp_descriptor, %struct.usb_wireless_ep_comp_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %45 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %9, align 8
  %47 = getelementptr inbounds %struct.usb_wireless_ep_comp_descriptor, %struct.usb_wireless_ep_comp_descriptor* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %50 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %56

51:                                               ; preds = %3
  %52 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %53 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %52, i32 0, i32 0
  store i32 2, i32* %53, align 8
  %54 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %55 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %40
  %57 = load %struct.urb*, %struct.urb** %6, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @usb_pipecontrol(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* @UWB_PHY_RATE_53, align 8
  store i64 %63, i64* %11, align 8
  br label %86

64:                                               ; preds = %56
  %65 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %66 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i64 @fls(i8* %71)
  %73 = sub nsw i64 %72, 1
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.whc*, %struct.whc** %4, align 8
  %76 = getelementptr inbounds %struct.whc, %struct.whc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %74, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load %struct.whc*, %struct.whc** %4, align 8
  %82 = getelementptr inbounds %struct.whc, %struct.whc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %80, %64
  br label %86

86:                                               ; preds = %85, %62
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @usb_pipeendpoint(i32 %89)
  %91 = call i32 @QH_INFO1_EP(i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @QH_INFO1_DIR_OUT, align 4
  br label %98

96:                                               ; preds = %86
  %97 = load i32, i32* @QH_INFO1_DIR_IN, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = or i32 %91, %99
  %101 = load %struct.urb*, %struct.urb** %6, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @usb_pipe_to_qh_type(i32 %103)
  %105 = or i32 %100, %104
  %106 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @wusb_port_no_to_idx(i32 %108)
  %110 = call i32 @QH_INFO1_DEV_INFO_IDX(i32 %109)
  %111 = or i32 %105, %110
  %112 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %113 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @QH_INFO1_MAX_PKT_LEN(i8* %114)
  %116 = or i32 %111, %115
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %119 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %122 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @QH_INFO2_BURST(i32 %123)
  %125 = call i32 @QH_INFO2_DBP(i32 0)
  %126 = or i32 %124, %125
  %127 = call i32 @QH_INFO2_MAX_COUNT(i32 3)
  %128 = or i32 %126, %127
  %129 = call i32 @QH_INFO2_MAX_RETRY(i32 3)
  %130 = or i32 %128, %129
  %131 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %132 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @QH_INFO2_MAX_SEQ(i32 %134)
  %136 = or i32 %130, %135
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %139 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  store i8* %137, i8** %140, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @QH_INFO3_TX_RATE(i64 %141)
  %143 = call i32 @QH_INFO3_TX_PWR(i32 0)
  %144 = or i32 %142, %143
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %147 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i8* %145, i8** %148, align 8
  %149 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %150 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 1, %151
  %153 = sub nsw i32 %152, 1
  %154 = call i8* @cpu_to_le32(i32 %153)
  %155 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %156 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  ret void
}

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i64 @fls(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QH_INFO1_EP(i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_pipe_to_qh_type(i32) #1

declare dso_local i32 @QH_INFO1_DEV_INFO_IDX(i32) #1

declare dso_local i32 @wusb_port_no_to_idx(i32) #1

declare dso_local i32 @QH_INFO1_MAX_PKT_LEN(i8*) #1

declare dso_local i32 @QH_INFO2_BURST(i32) #1

declare dso_local i32 @QH_INFO2_DBP(i32) #1

declare dso_local i32 @QH_INFO2_MAX_COUNT(i32) #1

declare dso_local i32 @QH_INFO2_MAX_RETRY(i32) #1

declare dso_local i32 @QH_INFO2_MAX_SEQ(i32) #1

declare dso_local i32 @QH_INFO3_TX_RATE(i64) #1

declare dso_local i32 @QH_INFO3_TX_PWR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
