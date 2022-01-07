; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_set_ep_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_set_ep_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb300 = type { i64 }

@FUSB300_EPSET1_ACTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fusb300*, i32)* @fusb300_set_ep_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fusb300_set_ep_active(%struct.fusb300* %0, i32 %1) #0 {
  %3 = alloca %struct.fusb300*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fusb300* %0, %struct.fusb300** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %7 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @FUSB300_OFFSET_EPSET1(i32 %9)
  %11 = add nsw i64 %8, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @FUSB300_EPSET1_ACTEN, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %18 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @FUSB300_OFFSET_EPSET1(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @iowrite32(i32 %16, i64 %22)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @FUSB300_OFFSET_EPSET1(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
