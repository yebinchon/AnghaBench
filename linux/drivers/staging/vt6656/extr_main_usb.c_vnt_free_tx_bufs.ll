; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_free_tx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_free_tx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, %struct.vnt_usb_send_context** }
%struct.vnt_usb_send_context = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @vnt_free_tx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_free_tx_bufs(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca %struct.vnt_usb_send_context*, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  %12 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 1
  %14 = load %struct.vnt_usb_send_context**, %struct.vnt_usb_send_context*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %14, i64 %16
  %18 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %17, align 8
  store %struct.vnt_usb_send_context* %18, %struct.vnt_usb_send_context** %3, align 8
  %19 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %20 = icmp ne %struct.vnt_usb_send_context* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %39

22:                                               ; preds = %11
  %23 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %24 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %29 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @usb_kill_urb(i64 %30)
  %32 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %33 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @usb_free_urb(i64 %34)
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %3, align 8
  %38 = call i32 @kfree(%struct.vnt_usb_send_context* %37)
  br label %39

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @usb_free_urb(i64) #1

declare dso_local i32 @kfree(%struct.vnt_usb_send_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
