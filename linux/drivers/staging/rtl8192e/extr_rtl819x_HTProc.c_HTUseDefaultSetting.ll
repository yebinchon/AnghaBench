; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTUseDefaultSetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTUseDefaultSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.rt_hi_throughput* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rt_hi_throughput = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@MCS_FILTER_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTUseDefaultSetting(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca %struct.rt_hi_throughput*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %4 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %5 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %4, i32 0, i32 6
  %6 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  store %struct.rt_hi_throughput* %6, %struct.rt_hi_throughput** %3, align 8
  %7 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %8 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %7, i32 0, i32 18
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %96

11:                                               ; preds = %1
  %12 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %13 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %15 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %14, i32 0, i32 16
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %18 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %17, i32 0, i32 17
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %20 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %23 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %25 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %28 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %27, i32 0, i32 13
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %30 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %33 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IW_MODE_ADHOC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %11
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %41 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %39, %11
  %50 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %51 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %54 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %56 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %59 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %61 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %64 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %66 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %69 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %71 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %74 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %80 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @HTFilterMCSRate(%struct.rtllib_device* %75, i32 %78, i32 %81)
  %83 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %85 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MCS_FILTER_ALL, align 4
  %88 = call i32 @HTGetHighestMCSRate(%struct.rtllib_device* %83, i32 %86, i32 %87)
  %89 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %90 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %92 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %95 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %99

96:                                               ; preds = %1
  %97 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %98 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %49
  ret void
}

declare dso_local i32 @HTFilterMCSRate(%struct.rtllib_device*, i32, i32) #1

declare dso_local i32 @HTGetHighestMCSRate(%struct.rtllib_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
