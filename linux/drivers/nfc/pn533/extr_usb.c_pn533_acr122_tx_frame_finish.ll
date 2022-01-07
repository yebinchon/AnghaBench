; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_acr122_tx_frame_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_acr122_tx_frame_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_acr122_tx_frame = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pn533_acr122_tx_frame_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_acr122_tx_frame_finish(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pn533_acr122_tx_frame*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pn533_acr122_tx_frame*
  store %struct.pn533_acr122_tx_frame* %5, %struct.pn533_acr122_tx_frame** %3, align 8
  %6 = load %struct.pn533_acr122_tx_frame*, %struct.pn533_acr122_tx_frame** %3, align 8
  %7 = getelementptr inbounds %struct.pn533_acr122_tx_frame, %struct.pn533_acr122_tx_frame* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pn533_acr122_tx_frame*, %struct.pn533_acr122_tx_frame** %3, align 8
  %10 = getelementptr inbounds %struct.pn533_acr122_tx_frame, %struct.pn533_acr122_tx_frame* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
