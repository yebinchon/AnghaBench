; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTUpdateDefaultSetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTUpdateDefaultSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64, i64, %struct.rt_hi_throughput* }
%struct.rt_hi_throughput = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTUpdateDefaultSetting(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca %struct.rt_hi_throughput*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %4 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %5 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %4, i32 0, i32 3
  %6 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  store %struct.rt_hi_throughput* %6, %struct.rt_hi_throughput** %3, align 8
  %7 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %8 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %10 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %12 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %11, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %14 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %16 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %21 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %20, i32 0, i32 4
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %24 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %23, i32 0, i32 4
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %27 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %26, i32 0, i32 5
  store i64 7935, i64* %27, align 8
  %28 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %29 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %28, i32 0, i32 14
  store i64 0, i64* %29, align 8
  %30 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %31 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %30, i32 0, i32 6
  store i32 1, i32* %31, align 8
  %32 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %33 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %32, i32 0, i32 7
  store i32 2, i32* %33, align 4
  %34 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %35 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %34, i32 0, i32 13
  store i64 0, i64* %35, align 8
  %36 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %37 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %36, i32 0, i32 8
  store i32 3, i32* %37, align 8
  %38 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %39 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %44 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %43, i32 0, i32 8
  store i32 3, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %25
  %46 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %47 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %53 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %52, i32 0, i32 9
  store i32 1, i32* %53, align 4
  %54 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %55 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %54, i32 0, i32 10
  store i32 1, i32* %55, align 8
  %56 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %57 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %56, i32 0, i32 11
  store i32 64, i32* %57, align 4
  %58 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %59 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %58, i32 0, i32 12
  store i32 30, i32* %59, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
