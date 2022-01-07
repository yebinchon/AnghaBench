; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { i32 (i64)*, i32, i64, i32 (i64, i64, i32)* }

@XUSB_IER_OFFSET = common dso_local global i64 0, align 8
@XUSB_STATUS_INTR_EVENT_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_OFFSET = common dso_local global i64 0, align 8
@XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_EP0_BUFF1_COMP_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_EP1_BUFF1_COMP_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_EP1_BUFF2_COMP_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xudc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xudc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xusb_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.xusb_udc*
  store %struct.xusb_udc* %12, %struct.xusb_udc** %5, align 8
  %13 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %14 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %13, i32 0, i32 1
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %18 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %17, i32 0, i32 0
  %19 = load i32 (i64)*, i32 (i64)** %18, align 8
  %20 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %21 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 %19(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @XUSB_STATUS_INTR_EVENT_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %31 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %30, i32 0, i32 3
  %32 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %31, align 8
  %33 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %34 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 %32(i64 %35, i64 %36, i32 %37)
  %39 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %40 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %39, i32 0, i32 0
  %41 = load i32 (i64)*, i32 (i64)** %40, align 8
  %42 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %43 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XUSB_STATUS_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 %41(i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @XUSB_STATUS_INTR_EVENT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @xudc_startup_handler(%struct.xusb_udc* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %2
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %126

61:                                               ; preds = %56
  %62 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %63 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %62, i32 0, i32 0
  %64 = load i32 (i64)*, i32 (i64)** %63, align 8
  %65 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %66 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 %64(i64 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @XUSB_STATUS_INTR_EVENT_MASK, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %75 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %74, i32 0, i32 3
  %76 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %75, align 8
  %77 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %78 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 %76(i64 %79, i64 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @XUSB_STATUS_EP0_BUFF1_COMP_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %61
  %88 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @xudc_ctrl_ep_handler(%struct.xusb_udc* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %61
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %122, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %125

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @XUSB_STATUS_EP1_BUFF1_COMP_MASK, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = shl i32 %97, %99
  %101 = and i32 %96, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @XUSB_STATUS_EP1_BUFF2_COMP_MASK, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 1
  %108 = shl i32 %105, %107
  %109 = and i32 %104, %108
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %103, %95
  %112 = phi i1 [ true, %95 ], [ %110, %103 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @xudc_nonctrl_ep_handler(%struct.xusb_udc* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %92

125:                                              ; preds = %92
  br label %126

126:                                              ; preds = %125, %56
  %127 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %128 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %127, i32 0, i32 1
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %131
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xudc_startup_handler(%struct.xusb_udc*, i32) #1

declare dso_local i32 @xudc_ctrl_ep_handler(%struct.xusb_udc*, i32) #1

declare dso_local i32 @xudc_nonctrl_ep_handler(%struct.xusb_udc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
