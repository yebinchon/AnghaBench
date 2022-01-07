; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_get_sta_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_get_sta_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_servq = type { i32 }
%struct._adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.hw_xmit* }
%struct.__queue = type { i32 }
%struct.hw_xmit = type { i32 }
%struct.sta_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tx_servq* (%struct._adapter*, %struct.__queue**, %struct.sta_info*, i32)* @get_sta_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tx_servq* @get_sta_pending(%struct._adapter* %0, %struct.__queue** %1, %struct.sta_info* %2, i32 %3) #0 {
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %struct.__queue**, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_servq*, align 8
  %10 = alloca %struct.hw_xmit*, align 8
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store %struct.__queue** %1, %struct.__queue*** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct._adapter*, %struct._adapter** %5, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = load %struct.hw_xmit*, %struct.hw_xmit** %13, align 8
  store %struct.hw_xmit* %14, %struct.hw_xmit** %10, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %56 [
    i32 1, label %16
    i32 2, label %16
    i32 4, label %29
    i32 5, label %29
    i32 6, label %42
    i32 7, label %42
    i32 0, label %55
    i32 3, label %55
  ]

16:                                               ; preds = %4, %4
  %17 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store %struct.tx_servq* %19, %struct.tx_servq** %9, align 8
  %20 = load %struct._adapter*, %struct._adapter** %5, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.__queue**, %struct.__queue*** %6, align 8
  store %struct.__queue* %22, %struct.__queue** %23, align 8
  %24 = load %struct.hw_xmit*, %struct.hw_xmit** %10, align 8
  %25 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %24, i64 3
  %26 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %69

29:                                               ; preds = %4, %4
  %30 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store %struct.tx_servq* %32, %struct.tx_servq** %9, align 8
  %33 = load %struct._adapter*, %struct._adapter** %5, align 8
  %34 = getelementptr inbounds %struct._adapter, %struct._adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.__queue**, %struct.__queue*** %6, align 8
  store %struct.__queue* %35, %struct.__queue** %36, align 8
  %37 = load %struct.hw_xmit*, %struct.hw_xmit** %10, align 8
  %38 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %37, i64 1
  %39 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %69

42:                                               ; preds = %4, %4
  %43 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store %struct.tx_servq* %45, %struct.tx_servq** %9, align 8
  %46 = load %struct._adapter*, %struct._adapter** %5, align 8
  %47 = getelementptr inbounds %struct._adapter, %struct._adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.__queue**, %struct.__queue*** %6, align 8
  store %struct.__queue* %48, %struct.__queue** %49, align 8
  %50 = load %struct.hw_xmit*, %struct.hw_xmit** %10, align 8
  %51 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %50, i64 0
  %52 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %69

55:                                               ; preds = %4, %4
  br label %56

56:                                               ; preds = %4, %55
  %57 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.tx_servq* %59, %struct.tx_servq** %9, align 8
  %60 = load %struct._adapter*, %struct._adapter** %5, align 8
  %61 = getelementptr inbounds %struct._adapter, %struct._adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.__queue**, %struct.__queue*** %6, align 8
  store %struct.__queue* %62, %struct.__queue** %63, align 8
  %64 = load %struct.hw_xmit*, %struct.hw_xmit** %10, align 8
  %65 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %64, i64 2
  %66 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %56, %42, %29, %16
  %70 = load %struct.tx_servq*, %struct.tx_servq** %9, align 8
  ret %struct.tx_servq* %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
