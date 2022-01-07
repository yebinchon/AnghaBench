; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_process_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_process_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.dwc2_hsotg_ep** }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.dwc2_hsotg_ep = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"ctrl Type=%02x, Req=%02x, V=%04x, I=%04x, L=%04x\0A\00", align 1
@DWC2_EP0_STATUS_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@DWC2_EP0_DATA_IN = common dso_local global i32 0, align 4
@DWC2_EP0_DATA_OUT = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@DCFG = common dso_local global i32 0, align 4
@DCFG_DEVADDR_MASK = common dso_local global i32 0, align 4
@DCFG_DEVADDR_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"new address %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"driver->setup() ret %d\0A\00", align 1
@USB_GADGET_DELAYED_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.usb_ctrlrequest*)* @dwc2_hsotg_process_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hsotg_process_control(%struct.dwc2_hsotg* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.dwc2_hsotg_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 7
  %10 = load %struct.dwc2_hsotg_ep**, %struct.dwc2_hsotg_ep*** %9, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %10, i64 0
  %12 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %11, align 8
  store %struct.dwc2_hsotg_ep* %12, %struct.dwc2_hsotg_ep** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i64 %30)
  %32 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %38 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @DWC2_EP0_STATUS_IN, align 4
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %41 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  br label %62

42:                                               ; preds = %2
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @USB_DIR_IN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @DWC2_EP0_DATA_IN, align 4
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %54 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  br label %61

55:                                               ; preds = %42
  %56 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %57 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* @DWC2_EP0_DATA_OUT, align 4
  %59 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %60 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %64 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @USB_TYPE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %117

70:                                               ; preds = %62
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %72 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %116 [
    i32 129, label %74
    i32 130, label %108
    i32 131, label %112
    i32 128, label %112
  ]

74:                                               ; preds = %70
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %76 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %78 = load i32, i32* @DCFG, align 4
  %79 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @DCFG_DEVADDR_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %85 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load i32, i32* @DCFG_DEVADDR_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* @DCFG_DEVADDR_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @DCFG, align 4
  %97 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %94, i32 %95, i32 %96)
  %98 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %99 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %102 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_info(i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %106 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %107 = call i32 @dwc2_hsotg_send_reply(%struct.dwc2_hsotg* %105, %struct.dwc2_hsotg_ep* %106, i32* null, i32 0)
  store i32 %107, i32* %6, align 4
  br label %165

108:                                              ; preds = %70
  %109 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %110 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %111 = call i32 @dwc2_hsotg_process_req_status(%struct.dwc2_hsotg* %109, %struct.usb_ctrlrequest* %110)
  store i32 %111, i32* %6, align 4
  br label %116

112:                                              ; preds = %70, %70
  %113 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %114 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %115 = call i32 @dwc2_hsotg_process_req_feature(%struct.dwc2_hsotg* %113, %struct.usb_ctrlrequest* %114)
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %70, %112, %108
  br label %117

117:                                              ; preds = %116, %62
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %122 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %121, i32 0, i32 5
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = icmp ne %struct.TYPE_2__* %123, null
  br i1 %124, label %125, label %150

125:                                              ; preds = %120
  %126 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %127 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %126, i32 0, i32 3
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %130 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %129, i32 0, i32 5
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %132, align 8
  %134 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %135 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %134, i32 0, i32 4
  %136 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %137 = call i32 %133(i32* %135, %struct.usb_ctrlrequest* %136)
  store i32 %137, i32* %6, align 4
  %138 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %139 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %138, i32 0, i32 3
  %140 = call i32 @spin_lock(i32* %139)
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %125
  %144 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %145 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %143, %125
  br label %150

150:                                              ; preds = %149, %120, %117
  %151 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %152 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @USB_GADGET_DELAYED_STATUS, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %158 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %150
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %164 = call i32 @dwc2_hsotg_stall_ep0(%struct.dwc2_hsotg* %163)
  br label %165

165:                                              ; preds = %74, %162, %159
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hsotg_send_reply(%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*, i32*, i32) #1

declare dso_local i32 @dwc2_hsotg_process_req_status(%struct.dwc2_hsotg*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @dwc2_hsotg_process_req_feature(%struct.dwc2_hsotg*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dwc2_hsotg_stall_ep0(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
