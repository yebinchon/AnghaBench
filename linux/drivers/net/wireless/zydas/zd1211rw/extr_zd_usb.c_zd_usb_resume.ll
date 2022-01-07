; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32, i64 }
%struct.zd_mac = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Device resume failed with error code %d. Retrying...\0A\00", align 1
@ZD_DEVICE_RUNNING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to restore settings, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*)* @zd_usb_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd_usb_resume(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca %struct.zd_mac*, align 8
  %4 = alloca i32, align 4
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %5 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %6 = call %struct.zd_mac* @zd_usb_to_mac(%struct.zd_usb* %5)
  store %struct.zd_mac* %6, %struct.zd_mac** %3, align 8
  %7 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %8 = call i32 @zd_usb_dev(%struct.zd_usb* %7)
  %9 = call i32 @dev_dbg_f(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %11 = call i32 @zd_usb_to_hw(%struct.zd_usb* %10)
  %12 = call i32 @zd_op_start(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %17 = call i32 @zd_usb_dev(%struct.zd_usb* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %21 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i32, i32* @ZD_DEVICE_RUNNING, align 4
  %26 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %27 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %26, i32 0, i32 1
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %31 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_queue_reset_device(i32 %32)
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %42 = call i32 @zd_restore_settings(%struct.zd_mac* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %47 = call i32 @zd_usb_dev(%struct.zd_usb* %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %29, %45, %50, %34
  ret void
}

declare dso_local %struct.zd_mac* @zd_usb_to_mac(%struct.zd_usb*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @zd_op_start(i32) #1

declare dso_local i32 @zd_usb_to_hw(%struct.zd_usb*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_queue_reset_device(i32) #1

declare dso_local i32 @zd_restore_settings(%struct.zd_mac*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
