; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.h_mt7601u_urb_has_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.h_mt7601u_urb_has_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*)* @mt7601u_urb_has_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_urb_has_error(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %3 = load %struct.urb*, %struct.urb** %2, align 8
  %4 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ECONNRESET, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ESHUTDOWN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br label %28

28:                                               ; preds = %21, %14, %7, %1
  %29 = phi i1 [ false, %14 ], [ false, %7 ], [ false, %1 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
