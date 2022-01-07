; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_beacon_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_beacon_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_rc_evt_beacon = type { i32, i32 }
%struct.uwb_beacon_frame = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"BEACON from %s to %s (ch%u offset %u slot %u MAC %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rc_evt_beacon*, %struct.uwb_beacon_frame*)* @uwb_beacon_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_beacon_print(%struct.uwb_rc* %0, %struct.uwb_rc_evt_beacon* %1, %struct.uwb_beacon_frame* %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rc_evt_beacon*, align 8
  %6 = alloca %struct.uwb_beacon_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_rc_evt_beacon* %1, %struct.uwb_rc_evt_beacon** %5, align 8
  store %struct.uwb_beacon_frame* %2, %struct.uwb_beacon_frame** %6, align 8
  %11 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = trunc i64 %12 to i32
  %22 = load %struct.uwb_beacon_frame*, %struct.uwb_beacon_frame** %6, align 8
  %23 = getelementptr inbounds %struct.uwb_beacon_frame, %struct.uwb_beacon_frame* %22, i32 0, i32 2
  %24 = call i32 @uwb_mac_addr_print(i8* %14, i32 %21, i32* %23)
  %25 = trunc i64 %16 to i32
  %26 = load %struct.uwb_beacon_frame*, %struct.uwb_beacon_frame** %6, align 8
  %27 = getelementptr inbounds %struct.uwb_beacon_frame, %struct.uwb_beacon_frame* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @uwb_dev_addr_print(i8* %17, i32 %25, i32* %28)
  %30 = trunc i64 %19 to i32
  %31 = load %struct.uwb_beacon_frame*, %struct.uwb_beacon_frame** %6, align 8
  %32 = getelementptr inbounds %struct.uwb_beacon_frame, %struct.uwb_beacon_frame* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @uwb_dev_addr_print(i8* %20, i32 %30, i32* %33)
  %35 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %36 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.uwb_rc_evt_beacon*, %struct.uwb_rc_evt_beacon** %5, align 8
  %39 = getelementptr inbounds %struct.uwb_rc_evt_beacon, %struct.uwb_rc_evt_beacon* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uwb_rc_evt_beacon*, %struct.uwb_rc_evt_beacon** %5, align 8
  %42 = getelementptr inbounds %struct.uwb_rc_evt_beacon, %struct.uwb_rc_evt_beacon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uwb_beacon_frame*, %struct.uwb_beacon_frame** %6, align 8
  %45 = getelementptr inbounds %struct.uwb_beacon_frame, %struct.uwb_beacon_frame* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %20, i32 %40, i32 %43, i32 %46, i8* %14)
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uwb_mac_addr_print(i8*, i32, i32*) #2

declare dso_local i32 @uwb_dev_addr_print(i8*, i32, i32*) #2

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
