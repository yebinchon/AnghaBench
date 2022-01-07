; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_time_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_time_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powercap_zone = type { i32 }
%struct.rapl_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TIME_WINDOW1 = common dso_local global i32 0, align 4
@TIME_WINDOW2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powercap_zone*, i32, i32)* @set_time_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_time_window(%struct.powercap_zone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.powercap_zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rapl_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.powercap_zone* %0, %struct.powercap_zone** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 (...) @get_online_cpus()
  %11 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %12 = call %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone* %11)
  store %struct.rapl_domain* %12, %struct.rapl_domain** %7, align 8
  %13 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @contraint_to_pl(%struct.rapl_domain* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %8, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %22 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %39 [
    i32 129, label %29
    i32 128, label %34
  ]

29:                                               ; preds = %20
  %30 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %31 = load i32, i32* @TIME_WINDOW1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %30, i32 %31, i32 %32)
  br label %42

34:                                               ; preds = %20
  %35 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %36 = load i32, i32* @TIME_WINDOW2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %35, i32 %36, i32 %37)
  br label %42

39:                                               ; preds = %20
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %34, %29
  br label %43

43:                                               ; preds = %42, %18
  %44 = call i32 (...) @put_online_cpus()
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone*) #1

declare dso_local i32 @contraint_to_pl(%struct.rapl_domain*, i32) #1

declare dso_local i32 @rapl_write_data_raw(%struct.rapl_domain*, i32, i32) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
