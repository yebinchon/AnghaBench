; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel_init.c_sdw_intel_cleanup_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel_init.c_sdw_intel_cleanup_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_intel_ctx = type { i32, %struct.sdw_link_data* }
%struct.sdw_link_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_intel_ctx*)* @sdw_intel_cleanup_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_intel_cleanup_pdev(%struct.sdw_intel_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_intel_ctx*, align 8
  %4 = alloca %struct.sdw_link_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sdw_intel_ctx* %0, %struct.sdw_intel_ctx** %3, align 8
  %6 = load %struct.sdw_intel_ctx*, %struct.sdw_intel_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.sdw_intel_ctx, %struct.sdw_intel_ctx* %6, i32 0, i32 1
  %8 = load %struct.sdw_link_data*, %struct.sdw_link_data** %7, align 8
  store %struct.sdw_link_data* %8, %struct.sdw_link_data** %4, align 8
  %9 = load %struct.sdw_link_data*, %struct.sdw_link_data** %4, align 8
  %10 = icmp ne %struct.sdw_link_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.sdw_intel_ctx*, %struct.sdw_intel_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.sdw_intel_ctx, %struct.sdw_intel_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.sdw_link_data*, %struct.sdw_link_data** %4, align 8
  %21 = getelementptr inbounds %struct.sdw_link_data, %struct.sdw_link_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.sdw_link_data*, %struct.sdw_link_data** %4, align 8
  %26 = getelementptr inbounds %struct.sdw_link_data, %struct.sdw_link_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @platform_device_unregister(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.sdw_link_data*, %struct.sdw_link_data** %4, align 8
  %31 = getelementptr inbounds %struct.sdw_link_data, %struct.sdw_link_data* %30, i32 1
  store %struct.sdw_link_data* %31, %struct.sdw_link_data** %4, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.sdw_intel_ctx*, %struct.sdw_intel_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.sdw_intel_ctx, %struct.sdw_intel_ctx* %36, i32 0, i32 1
  %38 = load %struct.sdw_link_data*, %struct.sdw_link_data** %37, align 8
  %39 = call i32 @kfree(%struct.sdw_link_data* %38)
  %40 = load %struct.sdw_intel_ctx*, %struct.sdw_intel_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.sdw_intel_ctx, %struct.sdw_intel_ctx* %40, i32 0, i32 1
  store %struct.sdw_link_data* null, %struct.sdw_link_data** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @platform_device_unregister(i64) #1

declare dso_local i32 @kfree(%struct.sdw_link_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
