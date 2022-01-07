; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_make_service_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_make_service_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 (i64, %struct.vchiq_header*, i32, i8*)* }
%struct.vchiq_header = type opaque
%struct.vchiq_header.0 = type { i32 }

@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%d: callback:%d (%s, %pK, %pK)\00", align 1
@reason_names = common dso_local global i32* null, align 8
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%d: ignoring ERROR from callback to service %x\00", align 1
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vchiq_service*, i64, %struct.vchiq_header.0*, i8*)* @make_service_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_service_callback(%struct.vchiq_service* %0, i64 %1, %struct.vchiq_header.0* %2, i8* %3) #0 {
  %5 = alloca %struct.vchiq_service*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vchiq_header.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.vchiq_service* %0, %struct.vchiq_service** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vchiq_header.0* %2, %struct.vchiq_header.0** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @vchiq_core_log_level, align 4
  %11 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %12 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %17 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** @reason_names, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vchiq_header.0*, %struct.vchiq_header.0** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @vchiq_log_trace(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %22, %struct.vchiq_header.0* %23, i8* %24)
  %26 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %27 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64 (i64, %struct.vchiq_header*, i32, i8*)*, i64 (i64, %struct.vchiq_header*, i32, i8*)** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.vchiq_header.0*, %struct.vchiq_header.0** %7, align 8
  %32 = bitcast %struct.vchiq_header.0* %31 to %struct.vchiq_header*
  %33 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %34 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 %29(i64 %30, %struct.vchiq_header* %32, i32 %35, i8* %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @VCHIQ_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %4
  %42 = load i32, i32* @vchiq_core_log_level, align 4
  %43 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %44 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %49 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @vchiq_log_warning(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %41, %4
  %54 = load i64, i64* %9, align 8
  ret i64 %54
}

declare dso_local i32 @vchiq_log_trace(i32, i8*, i32, i32, i32, %struct.vchiq_header.0*, i8*) #1

declare dso_local i32 @vchiq_log_warning(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
