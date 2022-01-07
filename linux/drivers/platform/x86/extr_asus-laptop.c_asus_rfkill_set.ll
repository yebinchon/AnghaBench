; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_rfkill = type { i64, %struct.asus_laptop* }
%struct.asus_laptop = type { i32 }

@WL_RSTS = common dso_local global i64 0, align 8
@BT_RSTS = common dso_local global i64 0, align 8
@WM_RSTS = common dso_local global i64 0, align 8
@WW_RSTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @asus_rfkill_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_rfkill_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asus_rfkill*, align 8
  %7 = alloca %struct.asus_laptop*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.asus_rfkill*
  store %struct.asus_rfkill* %9, %struct.asus_rfkill** %6, align 8
  %10 = load %struct.asus_rfkill*, %struct.asus_rfkill** %6, align 8
  %11 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %10, i32 0, i32 1
  %12 = load %struct.asus_laptop*, %struct.asus_laptop** %11, align 8
  store %struct.asus_laptop* %12, %struct.asus_laptop** %7, align 8
  %13 = load %struct.asus_rfkill*, %struct.asus_rfkill** %6, align 8
  %14 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WL_RSTS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.asus_laptop*, %struct.asus_laptop** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @asus_wlan_set(%struct.asus_laptop* %19, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %2
  %26 = load %struct.asus_rfkill*, %struct.asus_rfkill** %6, align 8
  %27 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BT_RSTS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.asus_laptop*, %struct.asus_laptop** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @asus_bluetooth_set(%struct.asus_laptop* %32, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %70

38:                                               ; preds = %25
  %39 = load %struct.asus_rfkill*, %struct.asus_rfkill** %6, align 8
  %40 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WM_RSTS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.asus_laptop*, %struct.asus_laptop** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @asus_wimax_set(%struct.asus_laptop* %45, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %70

51:                                               ; preds = %38
  %52 = load %struct.asus_rfkill*, %struct.asus_rfkill** %6, align 8
  %53 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @WW_RSTS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.asus_laptop*, %struct.asus_laptop** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @asus_wwan_set(%struct.asus_laptop* %58, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %57, %44, %31, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @asus_wlan_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_bluetooth_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_wimax_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_wwan_set(%struct.asus_laptop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
