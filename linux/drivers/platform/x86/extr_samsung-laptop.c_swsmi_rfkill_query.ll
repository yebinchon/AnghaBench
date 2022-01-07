; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_swsmi_rfkill_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_swsmi_rfkill_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.samsung_rfkill = type { i64, %struct.samsung_laptop* }
%struct.samsung_laptop = type { i32 }
%struct.sabi_data = type { i32* }

@RFKILL_TYPE_WLAN = common dso_local global i64 0, align 8
@WL_STATUS_WLAN = common dso_local global i64 0, align 8
@RFKILL_TYPE_BLUETOOTH = common dso_local global i64 0, align 8
@WL_STATUS_BT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*, i8*)* @swsmi_rfkill_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swsmi_rfkill_query(%struct.rfkill* %0, i8* %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.samsung_rfkill*, align 8
  %6 = alloca %struct.samsung_laptop*, align 8
  %7 = alloca %struct.sabi_data, align 8
  %8 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.samsung_rfkill*
  store %struct.samsung_rfkill* %10, %struct.samsung_rfkill** %5, align 8
  %11 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %5, align 8
  %12 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %11, i32 0, i32 1
  %13 = load %struct.samsung_laptop*, %struct.samsung_laptop** %12, align 8
  store %struct.samsung_laptop* %13, %struct.samsung_laptop** %6, align 8
  %14 = load %struct.samsung_laptop*, %struct.samsung_laptop** %6, align 8
  %15 = call i32 @swsmi_wireless_status(%struct.samsung_laptop* %14, %struct.sabi_data* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %5, align 8
  %21 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RFKILL_TYPE_WLAN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @WL_STATUS_WLAN, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %45

31:                                               ; preds = %19
  %32 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %5, align 8
  %33 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RFKILL_TYPE_BLUETOOTH, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %7, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @WL_STATUS_BT, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %31
  br label %52

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @rfkill_set_sw_state(%struct.rfkill* %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %43, %18
  ret void
}

declare dso_local i32 @swsmi_wireless_status(%struct.samsung_laptop*, %struct.sabi_data*) #1

declare dso_local i32 @rfkill_set_sw_state(%struct.rfkill*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
