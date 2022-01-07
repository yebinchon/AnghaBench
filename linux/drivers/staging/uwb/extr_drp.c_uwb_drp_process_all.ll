; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rc_evt_drp = type { i8* }
%struct.uwb_dev = type { i32 }
%struct.uwb_ie_hdr = type { i32 }
%struct.uwb_ie_drp_avail = type { i32 }
%struct.uwb_ie_drp = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"unexpected IE in DRP notification\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%d octets remaining in DRP notification\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rc_evt_drp*, i64, %struct.uwb_dev*)* @uwb_drp_process_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_all(%struct.uwb_rc* %0, %struct.uwb_rc_evt_drp* %1, i64 %2, %struct.uwb_dev* %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.uwb_rc_evt_drp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.uwb_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.uwb_ie_hdr*, align 8
  %11 = alloca i8*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store %struct.uwb_rc_evt_drp* %1, %struct.uwb_rc_evt_drp** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.uwb_dev* %3, %struct.uwb_dev** %8, align 8
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %13 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %6, align 8
  %16 = getelementptr inbounds %struct.uwb_rc_evt_drp, %struct.uwb_rc_evt_drp* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %43, %4
  %19 = call %struct.uwb_ie_hdr* @uwb_ie_next(i8** %11, i64* %7)
  store %struct.uwb_ie_hdr* %19, %struct.uwb_ie_hdr** %10, align 8
  %20 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %10, align 8
  %21 = icmp ne %struct.uwb_ie_hdr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %44

23:                                               ; preds = %18
  %24 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %10, align 8
  %25 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %40 [
    i32 128, label %27
    i32 129, label %33
  ]

27:                                               ; preds = %23
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %29 = load %struct.uwb_dev*, %struct.uwb_dev** %8, align 8
  %30 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %10, align 8
  %31 = bitcast %struct.uwb_ie_hdr* %30 to %struct.uwb_ie_drp_avail*
  %32 = call i32 @uwb_drp_availability_process(%struct.uwb_rc* %28, %struct.uwb_dev* %29, %struct.uwb_ie_drp_avail* %31)
  br label %43

33:                                               ; preds = %23
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %35 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %6, align 8
  %36 = load %struct.uwb_dev*, %struct.uwb_dev** %8, align 8
  %37 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %10, align 8
  %38 = bitcast %struct.uwb_ie_hdr* %37 to %struct.uwb_ie_drp*
  %39 = call i32 @uwb_drp_process(%struct.uwb_rc* %34, %struct.uwb_rc_evt_drp* %35, %struct.uwb_dev* %36, %struct.uwb_ie_drp* %38)
  br label %43

40:                                               ; preds = %23
  %41 = load %struct.device*, %struct.device** %9, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33, %27
  br label %18

44:                                               ; preds = %22
  %45 = load i64, i64* %7, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  ret void
}

declare dso_local %struct.uwb_ie_hdr* @uwb_ie_next(i8**, i64*) #1

declare dso_local i32 @uwb_drp_availability_process(%struct.uwb_rc*, %struct.uwb_dev*, %struct.uwb_ie_drp_avail*) #1

declare dso_local i32 @uwb_drp_process(%struct.uwb_rc*, %struct.uwb_rc_evt_drp*, %struct.uwb_dev*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
