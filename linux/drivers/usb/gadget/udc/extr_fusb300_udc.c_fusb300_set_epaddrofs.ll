; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_set_epaddrofs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_fusb300_set_epaddrofs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb300 = type { i32, i64 }
%struct.fusb300_ep_info = type { i32, i32 }

@FUSB300_EPSET2_ADDROFS_MSK = common dso_local global i32 0, align 4
@FUSB300_FIFO_ENTRY_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fusb300*, i64)* @fusb300_set_epaddrofs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fusb300_set_epaddrofs(%struct.fusb300* %0, i64 %1) #0 {
  %3 = alloca %struct.fusb300_ep_info, align 4
  %4 = alloca %struct.fusb300*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.fusb300_ep_info* %3 to i64*
  store i64 %1, i64* %6, align 4
  store %struct.fusb300* %0, %struct.fusb300** %4, align 8
  %7 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %8 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @FUSB300_OFFSET_EPSET2(i32 %11)
  %13 = add nsw i64 %9, %12
  %14 = call i32 @ioread32(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @FUSB300_EPSET2_ADDROFS_MSK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %20 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @FUSB300_EPSET2_ADDROFS(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %27 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @FUSB300_OFFSET_EPSET2(i32 %30)
  %32 = add nsw i64 %28, %31
  %33 = call i32 @iowrite32(i32 %25, i64 %32)
  %34 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  %38 = load i32, i32* @FUSB300_FIFO_ENTRY_NUM, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %41 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @FUSB300_OFFSET_EPSET2(i32) #1

declare dso_local i32 @FUSB300_EPSET2_ADDROFS(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
