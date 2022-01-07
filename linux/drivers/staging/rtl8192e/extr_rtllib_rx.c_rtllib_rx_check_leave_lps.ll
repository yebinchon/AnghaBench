; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_check_leave_lps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_check_leave_lps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i32, i32, i32 (i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RTLLIB_LINKED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, i64, i64)* @rtllib_rx_check_leave_lps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_rx_check_leave_lps(%struct.rtllib_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %3
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %11 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RTLLIB_LINKED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %17 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %19, %23
  %25 = icmp sgt i32 %24, 8
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %28 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %46

32:                                               ; preds = %26, %15
  %33 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %34 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %33, i32 0, i32 3
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = icmp ne i32 (i32)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 3
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %40(i32 %43)
  br label %45

45:                                               ; preds = %37, %32
  br label %46

46:                                               ; preds = %45, %26
  br label %47

47:                                               ; preds = %46, %9
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
