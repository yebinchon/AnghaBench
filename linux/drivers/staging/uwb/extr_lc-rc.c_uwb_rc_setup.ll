; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_uwb_rc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_uwb_rc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"cannot setup UWB radio: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot setup UWB MAC address: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot assign UWB DevAddr: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot setup IE subsystem: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cannot setup reservation subsystem: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*)* @uwb_rc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_setup(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %10 = call i32 @uwb_radio_setup(%struct.uwb_rc* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %19 = call i32 @uwb_rc_mac_addr_setup(%struct.uwb_rc* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %28 = call i32 @uwb_rc_dev_addr_assign(%struct.uwb_rc* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %60

35:                                               ; preds = %26
  %36 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %37 = call i32 @uwb_rc_ie_setup(%struct.uwb_rc* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %59

44:                                               ; preds = %35
  %45 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %46 = call i32 @uwb_rsv_setup(%struct.uwb_rc* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %55 = call i32 @uwb_dbg_add_rc(%struct.uwb_rc* %54)
  store i32 0, i32* %2, align 4
  br label %62

56:                                               ; preds = %49
  %57 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %58 = call i32 @uwb_rc_ie_release(%struct.uwb_rc* %57)
  br label %59

59:                                               ; preds = %56, %40
  br label %60

60:                                               ; preds = %59, %31, %22, %13
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @uwb_radio_setup(%struct.uwb_rc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @uwb_rc_mac_addr_setup(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rc_dev_addr_assign(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rc_ie_setup(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rsv_setup(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_dbg_add_rc(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rc_ie_release(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
