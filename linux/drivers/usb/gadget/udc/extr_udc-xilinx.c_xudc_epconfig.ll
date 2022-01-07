; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_epconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_epconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_ep = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xusb_udc = type { i32, i32 (i32, i64, i32)* }

@XUSB_EP_BUF0COUNT_OFFSET = common dso_local global i64 0, align 8
@XUSB_EP_BUF1COUNT_OFFSET = common dso_local global i64 0, align 8
@XUSB_BUFFREADY_OFFSET = common dso_local global i64 0, align 8
@XUSB_STATUS_EP_BUFF2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_ep*, %struct.xusb_udc*)* @xudc_epconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_epconfig(%struct.xusb_ep* %0, %struct.xusb_udc* %1) #0 {
  %3 = alloca %struct.xusb_ep*, align 8
  %4 = alloca %struct.xusb_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.xusb_ep* %0, %struct.xusb_ep** %3, align 8
  store %struct.xusb_udc* %1, %struct.xusb_udc** %4, align 8
  %6 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %7 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = shl i32 %8, 29
  %10 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %11 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 28
  %14 = or i32 %9, %13
  %15 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %16 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 15
  %20 = or i32 %14, %19
  %21 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %22 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %20, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %26 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %25, i32 0, i32 1
  %27 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %26, align 8
  %28 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %29 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %32 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %27(i32 %30, i64 %33, i32 %34)
  %36 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %37 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %36, i32 0, i32 1
  %38 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %37, align 8
  %39 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %40 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %43 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XUSB_EP_BUF0COUNT_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %48 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %38(i32 %41, i64 %46, i32 %49)
  %51 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %52 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %51, i32 0, i32 1
  %53 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %52, align 8
  %54 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %55 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %58 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XUSB_EP_BUF1COUNT_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %63 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %53(i32 %56, i64 %61, i32 %64)
  %66 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %67 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %2
  %71 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %72 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %71, i32 0, i32 1
  %73 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %72, align 8
  %74 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %75 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @XUSB_BUFFREADY_OFFSET, align 8
  %78 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %79 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 1, %80
  %82 = call i32 %73(i32 %76, i64 %77, i32 %81)
  br label %83

83:                                               ; preds = %70, %2
  %84 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %85 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %90 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %89, i32 0, i32 1
  %91 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %90, align 8
  %92 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %93 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* @XUSB_BUFFREADY_OFFSET, align 8
  %96 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %97 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @XUSB_STATUS_EP_BUFF2_SHIFT, align 4
  %100 = add nsw i32 %98, %99
  %101 = shl i32 1, %100
  %102 = call i32 %91(i32 %94, i64 %95, i32 %101)
  br label %103

103:                                              ; preds = %88, %83
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
