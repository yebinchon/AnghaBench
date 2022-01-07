; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_driver_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_driver_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_fr_pkg_driver_ready_response = type { i32 }
%struct.icm_pkg_driver_ready = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICM_DRIVER_READY = common dso_local global i32 0, align 4
@ICM_TIMEOUT = common dso_local global i32 0, align 4
@ICM_FR_SLEVEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, i32*, i64*, i32*)* @icm_fr_driver_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_fr_driver_ready(%struct.tb* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.icm_fr_pkg_driver_ready_response, align 4
  %11 = alloca %struct.icm_pkg_driver_ready, align 4
  %12 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = getelementptr inbounds %struct.icm_pkg_driver_ready, %struct.icm_pkg_driver_ready* %11, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @ICM_DRIVER_READY, align 4
  store i32 %15, i32* %14, align 4
  %16 = call i32 @memset(%struct.icm_fr_pkg_driver_ready_response* %10, i32 0, i32 4)
  %17 = load %struct.tb*, %struct.tb** %6, align 8
  %18 = load i32, i32* @ICM_TIMEOUT, align 4
  %19 = call i32 @icm_request(%struct.tb* %17, %struct.icm_pkg_driver_ready* %11, i32 4, %struct.icm_fr_pkg_driver_ready_response* %10, i32 4, i32 1, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.icm_fr_pkg_driver_ready_response, %struct.icm_fr_pkg_driver_ready_response* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ICM_FR_SLEVEL_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %24
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.icm_fr_pkg_driver_ready_response*, i32, i32) #1

declare dso_local i32 @icm_request(%struct.tb*, %struct.icm_pkg_driver_ready*, i32, %struct.icm_fr_pkg_driver_ready_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
