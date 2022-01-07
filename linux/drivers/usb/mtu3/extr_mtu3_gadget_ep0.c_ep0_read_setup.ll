; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget_ep0.c_ep0_read_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget_ep0.c_ep0_read_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.mtu3_request = type { i32 }

@U3D_EP0CSR = common dso_local global i32 0, align 4
@EP0_W1C_BITS = common dso_local global i32 0, align 4
@U3D_RXCOUNT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SETUP req%02x.%02x v%04x i%04x l%04x\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@EP0_SETUPPKTRDY = common dso_local global i32 0, align 4
@EP0_DPHTX = common dso_local global i32 0, align 4
@MU3D_EP0_STATE_TX = common dso_local global i32 0, align 4
@MU3D_EP0_STATE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3*, %struct.usb_ctrlrequest*)* @ep0_read_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_read_setup(%struct.mtu3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.mtu3*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.mtu3_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %8 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %9 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @U3D_EP0CSR, align 4
  %12 = call i32 @mtu3_readl(i32 %10, i32 %11)
  %13 = load i32, i32* @EP0_W1C_BITS, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %16 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @U3D_RXCOUNT0, align 4
  %19 = call i32 @mtu3_readl(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %21 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %24 = bitcast %struct.usb_ctrlrequest* %23 to i32*
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ep0_read_fifo(i32 %22, i32* %24, i32 %25)
  %27 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %28 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %34 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %37 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le16_to_cpu(i32 %38)
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le16_to_cpu(i32 %42)
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i64 %39, i64 %43, i64 %47)
  %49 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %50 = call %struct.mtu3_request* @next_ep0_request(%struct.mtu3* %49)
  store %struct.mtu3_request* %50, %struct.mtu3_request** %5, align 8
  %51 = load %struct.mtu3_request*, %struct.mtu3_request** %5, align 8
  %52 = icmp ne %struct.mtu3_request* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %2
  %54 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %55 = load %struct.mtu3_request*, %struct.mtu3_request** %5, align 8
  %56 = getelementptr inbounds %struct.mtu3_request, %struct.mtu3_request* %55, i32 0, i32 0
  %57 = call i32 @ep0_req_giveback(%struct.mtu3* %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %2
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %102

65:                                               ; preds = %58
  %66 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %67 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @USB_DIR_IN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %74 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @U3D_EP0CSR, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @EP0_SETUPPKTRDY, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @EP0_DPHTX, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @mtu3_writel(i32 %75, i32 %76, i32 %81)
  %83 = load i32, i32* @MU3D_EP0_STATE_TX, align 4
  %84 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %85 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %101

86:                                               ; preds = %65
  %87 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %88 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @U3D_EP0CSR, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @EP0_SETUPPKTRDY, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @EP0_DPHTX, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = call i32 @mtu3_writel(i32 %89, i32 %90, i32 %96)
  %98 = load i32, i32* @MU3D_EP0_STATE_RX, align 4
  %99 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %100 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %86, %72
  br label %102

102:                                              ; preds = %101, %64
  ret void
}

declare dso_local i32 @mtu3_readl(i32, i32) #1

declare dso_local i32 @ep0_read_fifo(i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.mtu3_request* @next_ep0_request(%struct.mtu3*) #1

declare dso_local i32 @ep0_req_giveback(%struct.mtu3*, i32*) #1

declare dso_local i32 @mtu3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
