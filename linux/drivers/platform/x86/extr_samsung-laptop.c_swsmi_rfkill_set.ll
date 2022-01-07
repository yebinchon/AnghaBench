; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_swsmi_rfkill_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_swsmi_rfkill_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_rfkill = type { i64, %struct.samsung_laptop* }
%struct.samsung_laptop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sabi_commands }
%struct.sabi_commands = type { i32 }
%struct.sabi_data = type { i32* }

@RFKILL_TYPE_WLAN = common dso_local global i64 0, align 8
@WL_STATUS_WLAN = common dso_local global i64 0, align 8
@RFKILL_TYPE_BLUETOOTH = common dso_local global i64 0, align 8
@WL_STATUS_BT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @swsmi_rfkill_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swsmi_rfkill_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.samsung_rfkill*, align 8
  %7 = alloca %struct.samsung_laptop*, align 8
  %8 = alloca %struct.sabi_commands*, align 8
  %9 = alloca %struct.sabi_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.samsung_rfkill*
  store %struct.samsung_rfkill* %13, %struct.samsung_rfkill** %6, align 8
  %14 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %6, align 8
  %15 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %14, i32 0, i32 1
  %16 = load %struct.samsung_laptop*, %struct.samsung_laptop** %15, align 8
  store %struct.samsung_laptop* %16, %struct.samsung_laptop** %7, align 8
  %17 = load %struct.samsung_laptop*, %struct.samsung_laptop** %7, align 8
  %18 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.sabi_commands* %20, %struct.sabi_commands** %8, align 8
  %21 = load %struct.samsung_laptop*, %struct.samsung_laptop** %7, align 8
  %22 = call i32 @swsmi_wireless_status(%struct.samsung_laptop* %21, %struct.sabi_data* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %9, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %9, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %6, align 8
  %49 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RFKILL_TYPE_WLAN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %9, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @WL_STATUS_WLAN, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %57, i32* %61, align 4
  br label %78

62:                                               ; preds = %47
  %63 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %6, align 8
  %64 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RFKILL_TYPE_BLUETOOTH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %9, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @WL_STATUS_BT, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %62
  br label %78

78:                                               ; preds = %77, %53
  %79 = load %struct.samsung_laptop*, %struct.samsung_laptop** %7, align 8
  %80 = load %struct.sabi_commands*, %struct.sabi_commands** %8, align 8
  %81 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sabi_command(%struct.samsung_laptop* %79, i32 %82, %struct.sabi_data* %9, %struct.sabi_data* %9)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @swsmi_wireless_status(%struct.samsung_laptop*, %struct.sabi_data*) #1

declare dso_local i32 @sabi_command(%struct.samsung_laptop*, i32, %struct.sabi_data*, %struct.sabi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
