; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_driver_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_driver_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_tr_pkg_driver_ready_response = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.icm_pkg_driver_ready = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ICM_DRIVER_READY = common dso_local global i32 0, align 4
@ICM_TR_INFO_SLEVEL_MASK = common dso_local global i32 0, align 4
@ICM_TR_INFO_BOOT_ACL_MASK = common dso_local global i64 0, align 8
@ICM_TR_INFO_BOOT_ACL_SHIFT = common dso_local global i64 0, align 8
@ICM_TR_FLAGS_RTD3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, i32*, i64*, i32*)* @icm_tr_driver_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_tr_driver_ready(%struct.tb* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.icm_tr_pkg_driver_ready_response, align 4
  %11 = alloca %struct.icm_pkg_driver_ready, align 4
  %12 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = getelementptr inbounds %struct.icm_pkg_driver_ready, %struct.icm_pkg_driver_ready* %11, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* @ICM_DRIVER_READY, align 4
  store i32 %15, i32* %14, align 4
  %16 = call i32 @memset(%struct.icm_tr_pkg_driver_ready_response* %10, i32 0, i32 8)
  %17 = load %struct.tb*, %struct.tb** %6, align 8
  %18 = call i32 @icm_request(%struct.tb* %17, %struct.icm_pkg_driver_ready* %11, i32 4, %struct.icm_tr_pkg_driver_ready_response* %10, i32 8, i32 1, i32 20000)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %59

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.icm_tr_pkg_driver_ready_response, %struct.icm_tr_pkg_driver_ready_response* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ICM_TR_INFO_SLEVEL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i64*, i64** %8, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.icm_tr_pkg_driver_ready_response, %struct.icm_tr_pkg_driver_ready_response* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @ICM_TR_INFO_BOOT_ACL_MASK, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* @ICM_TR_INFO_BOOT_ACL_SHIFT, align 8
  %42 = lshr i64 %40, %41
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.icm_tr_pkg_driver_ready_response, %struct.icm_tr_pkg_driver_ready_response* %10, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ICM_TR_FLAGS_RTD3, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %47, %44
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.icm_tr_pkg_driver_ready_response*, i32, i32) #1

declare dso_local i32 @icm_request(%struct.tb*, %struct.icm_pkg_driver_ready*, i32, %struct.icm_tr_pkg_driver_ready_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
