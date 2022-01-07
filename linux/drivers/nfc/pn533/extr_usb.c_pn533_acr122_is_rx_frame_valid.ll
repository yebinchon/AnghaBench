; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_acr122_is_rx_frame_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_acr122_is_rx_frame_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32 }
%struct.pn533_acr122_rx_frame = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pn533*)* @pn533_acr122_is_rx_frame_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_acr122_is_rx_frame_valid(i8* %0, %struct.pn533* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pn533*, align 8
  %6 = alloca %struct.pn533_acr122_rx_frame*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pn533* %1, %struct.pn533** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pn533_acr122_rx_frame*
  store %struct.pn533_acr122_rx_frame* %8, %struct.pn533_acr122_rx_frame** %6, align 8
  %9 = load %struct.pn533_acr122_rx_frame*, %struct.pn533_acr122_rx_frame** %6, align 8
  %10 = getelementptr inbounds %struct.pn533_acr122_rx_frame, %struct.pn533_acr122_rx_frame* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 131
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.pn533_acr122_rx_frame*, %struct.pn533_acr122_rx_frame** %6, align 8
  %17 = getelementptr inbounds %struct.pn533_acr122_rx_frame, %struct.pn533_acr122_rx_frame* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %15
  %23 = load %struct.pn533_acr122_rx_frame*, %struct.pn533_acr122_rx_frame** %6, align 8
  %24 = getelementptr inbounds %struct.pn533_acr122_rx_frame, %struct.pn533_acr122_rx_frame* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.pn533_acr122_rx_frame*, %struct.pn533_acr122_rx_frame** %6, align 8
  %27 = getelementptr inbounds %struct.pn533_acr122_rx_frame, %struct.pn533_acr122_rx_frame* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 99
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %21, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
