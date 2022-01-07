; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32*, i32 }

@__const.rtl8192_init.queuetopipe = private unnamed_addr constant [9 x i32] [i32 3, i32 2, i32 1, i32 0, i32 4, i32 4, i32 0, i32 4, i32 4], align 16
@.str = private unnamed_addr constant [27 x i8] c"Reading EEPROM info failed\00", align 1
@watch_dog_timer_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Endopoints initialization failed\00", align 1
@ENOMEM = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @rtl8192_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @rtl8192_init(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [9 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %4, align 8
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 2
  %11 = call i32 @memset(i32* %10, i32 0, i32 4)
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @memset(i32* %14, i32 0, i32 9)
  %16 = bitcast [9 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([9 x i32]* @__const.rtl8192_init.queuetopipe to i8*), i64 36, i1 false)
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %21 = call i32 @memcpy(i32* %19, i32* %20, i32 9)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @rtl8192_init_priv_variable(%struct.net_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %2, align 2
  br label %63

29:                                               ; preds = %1
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %31 = call i32 @rtl8192_init_priv_lock(%struct.r8192_priv* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @rtl8192_init_priv_task(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @rtl8192_get_eeprom_size(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @rtl8192_read_eeprom_info(%struct.net_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = call i32 @DMESG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %2, align 2
  br label %63

44:                                               ; preds = %29
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @rtl8192_get_channel_map(%struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @init_hal_dm(%struct.net_device* %47)
  %49 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %50 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %49, i32 0, i32 0
  %51 = load i32, i32* @watch_dog_timer_callback, align 4
  %52 = call i32 @timer_setup(i32* %50, i32 %51, i32 0)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i64 @rtl8192_usb_initendpoints(%struct.net_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = call i32 @DMESG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i16, i16* @ENOMEM, align 2
  %59 = sext i16 %58 to i32
  %60 = sub nsw i32 0, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %2, align 2
  br label %63

62:                                               ; preds = %44
  store i16 0, i16* %2, align 2
  br label %63

63:                                               ; preds = %62, %56, %40, %26
  %64 = load i16, i16* %2, align 2
  ret i16 %64
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtl8192_init_priv_variable(%struct.net_device*) #1

declare dso_local i32 @rtl8192_init_priv_lock(%struct.r8192_priv*) #1

declare dso_local i32 @rtl8192_init_priv_task(%struct.net_device*) #1

declare dso_local i32 @rtl8192_get_eeprom_size(%struct.net_device*) #1

declare dso_local i32 @rtl8192_read_eeprom_info(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*) #1

declare dso_local i32 @rtl8192_get_channel_map(%struct.net_device*) #1

declare dso_local i32 @init_hal_dm(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i64 @rtl8192_usb_initendpoints(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
