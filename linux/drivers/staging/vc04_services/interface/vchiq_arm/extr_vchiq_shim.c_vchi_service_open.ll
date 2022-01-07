; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_shim.c_vchi_service_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_shim.c_vchi_service_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_creation = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.shim_service = type { i32 }
%struct.vchiq_service_params = type { i32, i32, %struct.shim_service*, i32, i32 }

@shim_callback = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchi_service_open(i32 %0, %struct.service_creation* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.service_creation*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shim_service*, align 8
  %9 = alloca %struct.vchiq_service_params, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.service_creation* %1, %struct.service_creation** %5, align 8
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.service_creation*, %struct.service_creation** %5, align 8
  %14 = call %struct.shim_service* @service_alloc(i32 %12, %struct.service_creation* %13)
  store %struct.shim_service* %14, %struct.shim_service** %8, align 8
  %15 = load %struct.shim_service*, %struct.shim_service** %8, align 8
  %16 = bitcast %struct.shim_service* %15 to i32*
  %17 = load i32**, i32*** %6, align 8
  store i32* %16, i32** %17, align 8
  %18 = load %struct.shim_service*, %struct.shim_service** %8, align 8
  %19 = icmp ne %struct.shim_service* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %3
  %21 = call i32 @memset(%struct.vchiq_service_params* %9, i32 0, i32 24)
  %22 = load %struct.service_creation*, %struct.service_creation** %5, align 8
  %23 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vchiq_service_params, %struct.vchiq_service_params* %9, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @shim_callback, align 4
  %27 = getelementptr inbounds %struct.vchiq_service_params, %struct.vchiq_service_params* %9, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load %struct.shim_service*, %struct.shim_service** %8, align 8
  %29 = getelementptr inbounds %struct.vchiq_service_params, %struct.vchiq_service_params* %9, i32 0, i32 2
  store %struct.shim_service* %28, %struct.shim_service** %29, align 8
  %30 = load %struct.service_creation*, %struct.service_creation** %5, align 8
  %31 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.vchiq_service_params, %struct.vchiq_service_params* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.service_creation*, %struct.service_creation** %5, align 8
  %36 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.vchiq_service_params, %struct.vchiq_service_params* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.shim_service*, %struct.shim_service** %8, align 8
  %42 = getelementptr inbounds %struct.shim_service, %struct.shim_service* %41, i32 0, i32 0
  %43 = call i64 @vchiq_open_service(i32 %40, %struct.vchiq_service_params* %9, i32* %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %20
  %48 = load %struct.shim_service*, %struct.shim_service** %8, align 8
  %49 = call i32 @service_free(%struct.shim_service* %48)
  store %struct.shim_service* null, %struct.shim_service** %8, align 8
  %50 = load i32**, i32*** %6, align 8
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %47, %20
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.shim_service*, %struct.shim_service** %8, align 8
  %54 = icmp ne %struct.shim_service* %53, null
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 -1
  ret i32 %56
}

declare dso_local %struct.shim_service* @service_alloc(i32, %struct.service_creation*) #1

declare dso_local i32 @memset(%struct.vchiq_service_params*, i32, i32) #1

declare dso_local i64 @vchiq_open_service(i32, %struct.vchiq_service_params*, i32*) #1

declare dso_local i32 @service_free(%struct.shim_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
