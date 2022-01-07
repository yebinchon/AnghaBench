; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_enable_fifo_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_enable_fifo_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb300_ep = type { i64, %struct.fusb300* }
%struct.fusb300 = type { i32 }

@FUSB300_OFFSET_IGER0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't enable_fifo_int ep0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb300_ep*)* @enable_fifo_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_fifo_int(%struct.fusb300_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fusb300_ep*, align 8
  %4 = alloca %struct.fusb300*, align 8
  store %struct.fusb300_ep* %0, %struct.fusb300_ep** %3, align 8
  %5 = load %struct.fusb300_ep*, %struct.fusb300_ep** %3, align 8
  %6 = getelementptr inbounds %struct.fusb300_ep, %struct.fusb300_ep* %5, i32 0, i32 1
  %7 = load %struct.fusb300*, %struct.fusb300** %6, align 8
  store %struct.fusb300* %7, %struct.fusb300** %4, align 8
  %8 = load %struct.fusb300_ep*, %struct.fusb300_ep** %3, align 8
  %9 = getelementptr inbounds %struct.fusb300_ep, %struct.fusb300_ep* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %14 = load i32, i32* @FUSB300_OFFSET_IGER0, align 4
  %15 = load %struct.fusb300_ep*, %struct.fusb300_ep** %3, align 8
  %16 = getelementptr inbounds %struct.fusb300_ep, %struct.fusb300_ep* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @FUSB300_IGER0_EEPn_FIFO_INT(i64 %17)
  %19 = call i32 @fusb300_enable_bit(%struct.fusb300* %13, i32 %14, i32 %18)
  br label %24

20:                                               ; preds = %1
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @fusb300_enable_bit(%struct.fusb300*, i32, i32) #1

declare dso_local i32 @FUSB300_IGER0_EEPn_FIFO_INT(i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
