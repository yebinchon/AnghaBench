; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_stlck_build_cp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_stlck_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ccw_request }
%struct.TYPE_3__ = type { %struct.ccw1* }
%struct.ccw1 = type { i32, i64, i8*, i32 }
%struct.ccw_request = type { %struct.ccw1* }

@CCW_CMD_STLCK = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i64 0, align 8
@CCW_CMD_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i8*, i8*)* @stlck_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stlck_build_cp(%struct.ccw_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccw_request*, align 8
  %8 = alloca %struct.ccw1*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.ccw_request* %12, %struct.ccw_request** %7, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ccw1*, %struct.ccw1** %18, align 8
  store %struct.ccw1* %19, %struct.ccw1** %8, align 8
  %20 = load i32, i32* @CCW_CMD_STLCK, align 4
  %21 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %22 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %21, i64 0
  %23 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %28 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %27, i64 0
  %29 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %31 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %30, i64 0
  %32 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %31, i32 0, i32 0
  store i32 32, i32* %32, align 8
  %33 = load i64, i64* @CCW_FLAG_CC, align 8
  %34 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %35 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %34, i64 0
  %36 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* @CCW_CMD_RELEASE, align 4
  %38 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %39 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %38, i64 1
  %40 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %45 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %44, i64 1
  %46 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %45, i32 0, i32 2
  store i8* %43, i8** %46, align 8
  %47 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %48 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %47, i64 1
  %49 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %48, i32 0, i32 0
  store i32 32, i32* %49, align 8
  %50 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %51 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %50, i64 1
  %52 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %54 = load %struct.ccw_request*, %struct.ccw_request** %7, align 8
  %55 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %54, i32 0, i32 0
  store %struct.ccw1* %53, %struct.ccw1** %55, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
