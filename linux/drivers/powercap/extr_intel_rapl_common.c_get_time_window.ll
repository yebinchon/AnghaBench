; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_get_time_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_get_time_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powercap_zone = type { i32 }
%struct.rapl_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TIME_WINDOW1 = common dso_local global i32 0, align 4
@TIME_WINDOW2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powercap_zone*, i32, i32*)* @get_time_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_time_window(%struct.powercap_zone* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powercap_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rapl_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.powercap_zone* %0, %struct.powercap_zone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @get_online_cpus()
  %13 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %14 = call %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone* %13)
  store %struct.rapl_domain* %14, %struct.rapl_domain** %8, align 8
  %15 = load %struct.rapl_domain*, %struct.rapl_domain** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @contraint_to_pl(%struct.rapl_domain* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %10, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.rapl_domain*, %struct.rapl_domain** %8, align 8
  %24 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %39 [
    i32 129, label %31
    i32 128, label %35
  ]

31:                                               ; preds = %22
  %32 = load %struct.rapl_domain*, %struct.rapl_domain** %8, align 8
  %33 = load i32, i32* @TIME_WINDOW1, align 4
  %34 = call i32 @rapl_read_data_raw(%struct.rapl_domain* %32, i32 %33, i32 1, i32* %9)
  store i32 %34, i32* %10, align 4
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.rapl_domain*, %struct.rapl_domain** %8, align 8
  %37 = load i32, i32* @TIME_WINDOW2, align 4
  %38 = call i32 @rapl_read_data_raw(%struct.rapl_domain* %36, i32 %37, i32 1, i32* %9)
  store i32 %38, i32* %10, align 4
  br label %43

39:                                               ; preds = %22
  %40 = call i32 (...) @put_online_cpus()
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %35, %31
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %20
  %51 = call i32 (...) @put_online_cpus()
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %39
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone*) #1

declare dso_local i32 @contraint_to_pl(%struct.rapl_domain*, i32) #1

declare dso_local i32 @rapl_read_data_raw(%struct.rapl_domain*, i32, i32, i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
