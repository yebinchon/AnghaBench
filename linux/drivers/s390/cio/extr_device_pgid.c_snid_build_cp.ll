; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_snid_build_cp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_snid_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ccw_request }
%struct.TYPE_3__ = type { i32*, %struct.ccw1* }
%struct.ccw1 = type { i32, i32, i64, i32 }
%struct.ccw_request = type { %struct.ccw1*, i32 }

@CCW_CMD_SENSE_PGID = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @snid_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snid_build_cp(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_request*, align 8
  %4 = alloca %struct.ccw1*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.ccw_request* %9, %struct.ccw_request** %3, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.ccw1*, %struct.ccw1** %15, align 8
  store %struct.ccw1* %16, %struct.ccw1** %4, align 8
  %17 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %18 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pathmask_to_pos(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @CCW_CMD_SENSE_PGID, align 4
  %22 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %23 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = ptrtoint i32* %33 to i64
  %35 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %36 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %38 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %37, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load i32, i32* @CCW_FLAG_SLI, align 4
  %40 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %41 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %43 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %44 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %43, i32 0, i32 0
  store %struct.ccw1* %42, %struct.ccw1** %44, align 8
  ret void
}

declare dso_local i32 @pathmask_to_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
