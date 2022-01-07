; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_query_HTCapShortGI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_query_HTCapShortGI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.rt_hi_throughput* }
%struct.rt_hi_throughput = type { i32, i64, i64, i64, i32, i32 }
%struct.cb_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, %struct.cb_desc*)* @rtllib_query_HTCapShortGI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_query_HTCapShortGI(%struct.rtllib_device* %0, %struct.cb_desc* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca %struct.cb_desc*, align 8
  %5 = alloca %struct.rt_hi_throughput*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store %struct.cb_desc* %1, %struct.cb_desc** %4, align 8
  %6 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %7 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %6, i32 0, i32 0
  %8 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  store %struct.rt_hi_throughput* %8, %struct.rt_hi_throughput** %5, align 8
  %9 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %10 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %12 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %17 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %56

21:                                               ; preds = %15
  %22 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %23 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %28 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %56

29:                                               ; preds = %21
  %30 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %31 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %36 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %41 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %56

42:                                               ; preds = %34, %29
  %43 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %44 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %49 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %54 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %47, %42
  br label %56

56:                                               ; preds = %20, %26, %55, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
