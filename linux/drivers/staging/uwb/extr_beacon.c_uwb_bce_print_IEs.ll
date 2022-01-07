; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_bce_print_IEs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_bce_print_IEs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev = type { i32 }
%struct.uwb_beca_e = type { i32, %struct.uwb_rc_evt_beacon* }
%struct.uwb_rc_evt_beacon = type { i32, i64 }
%struct.uwb_beacon_frame = type { i64 }
%struct.uwb_ie_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_bce_print_IEs(%struct.uwb_dev* %0, %struct.uwb_beca_e* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.uwb_dev*, align 8
  %6 = alloca %struct.uwb_beca_e*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uwb_rc_evt_beacon*, align 8
  %11 = alloca %struct.uwb_beacon_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.uwb_ie_hdr*, align 8
  store %struct.uwb_dev* %0, %struct.uwb_dev** %5, align 8
  store %struct.uwb_beca_e* %1, %struct.uwb_beca_e** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %6, align 8
  %15 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %6, align 8
  %18 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %17, i32 0, i32 1
  %19 = load %struct.uwb_rc_evt_beacon*, %struct.uwb_rc_evt_beacon** %18, align 8
  store %struct.uwb_rc_evt_beacon* %19, %struct.uwb_rc_evt_beacon** %10, align 8
  %20 = load %struct.uwb_rc_evt_beacon*, %struct.uwb_rc_evt_beacon** %10, align 8
  %21 = icmp ne %struct.uwb_rc_evt_beacon* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %4
  %23 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %6, align 8
  %24 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %23, i32 0, i32 1
  %25 = load %struct.uwb_rc_evt_beacon*, %struct.uwb_rc_evt_beacon** %24, align 8
  %26 = getelementptr inbounds %struct.uwb_rc_evt_beacon, %struct.uwb_rc_evt_beacon* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.uwb_beacon_frame*
  store %struct.uwb_beacon_frame* %28, %struct.uwb_beacon_frame** %11, align 8
  %29 = load %struct.uwb_rc_evt_beacon*, %struct.uwb_rc_evt_beacon** %10, align 8
  %30 = getelementptr inbounds %struct.uwb_rc_evt_beacon, %struct.uwb_rc_evt_beacon* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.uwb_beacon_frame*, %struct.uwb_beacon_frame** %11, align 8
  %36 = getelementptr inbounds %struct.uwb_beacon_frame, %struct.uwb_beacon_frame* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.uwb_ie_hdr*
  store %struct.uwb_ie_hdr* %38, %struct.uwb_ie_hdr** %13, align 8
  %39 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %13, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @uwb_ie_dump_hex(%struct.uwb_ie_hdr* %39, i32 %40, i8* %41, i64 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %22, %4
  %45 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %6, align 8
  %46 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uwb_ie_dump_hex(%struct.uwb_ie_hdr*, i32, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
