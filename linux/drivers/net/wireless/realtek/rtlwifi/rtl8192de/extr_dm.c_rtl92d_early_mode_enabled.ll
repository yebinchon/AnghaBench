; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_early_mode_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_early_mode_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dig_t = type { i32, i32 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@PEER_CISCO = common dso_local global i64 0, align 8
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IOT_PEER = CISCO\0A\00", align 1
@REG_EARLY_MODE_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Early Mode Off\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Early Mode On\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*)* @rtl92d_early_mode_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_early_mode_enabled(%struct.rtl_priv* %0) #0 {
  %2 = alloca %struct.rtl_priv*, align 8
  %3 = alloca %struct.dig_t*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %2, align 8
  %4 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %4, i32 0, i32 1
  store %struct.dig_t* %5, %struct.dig_t** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAC80211_LINKED, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %1
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PEER_CISCO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %12
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %21 = load i32, i32* @COMP_DIG, align 4
  %22 = load i32, i32* @DBG_LOUD, align 4
  %23 = call i32 @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.dig_t*, %struct.dig_t** %3, align 8
  %25 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 50
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.dig_t*, %struct.dig_t** %3, align 8
  %30 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 50
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %35 = load i32, i32* @REG_EARLY_MODE_CONTROL, align 4
  %36 = call i32 @rtl_write_byte(%struct.rtl_priv* %34, i32 %35, i32 0)
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %38 = load i32, i32* @COMP_DIG, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = call i32 @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %60

41:                                               ; preds = %28, %19
  %42 = load %struct.dig_t*, %struct.dig_t** %3, align 8
  %43 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 55
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.dig_t*, %struct.dig_t** %3, align 8
  %48 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 55
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %53 = load i32, i32* @REG_EARLY_MODE_CONTROL, align 4
  %54 = call i32 @rtl_write_byte(%struct.rtl_priv* %52, i32 %53, i32 15)
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %56 = load i32, i32* @COMP_DIG, align 4
  %57 = load i32, i32* @DBG_LOUD, align 4
  %58 = call i32 @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %51, %46, %41
  br label %60

60:                                               ; preds = %59, %33
  br label %76

61:                                               ; preds = %12, %1
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %63 = load i32, i32* @REG_EARLY_MODE_CONTROL, align 4
  %64 = call i32 @rtl_read_byte(%struct.rtl_priv* %62, i32 %63)
  %65 = and i32 %64, 15
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %69 = load i32, i32* @REG_EARLY_MODE_CONTROL, align 4
  %70 = call i32 @rtl_write_byte(%struct.rtl_priv* %68, i32 %69, i32 15)
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %72 = load i32, i32* @COMP_DIG, align 4
  %73 = load i32, i32* @DBG_LOUD, align 4
  %74 = call i32 @RT_TRACE(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %67, %61
  br label %76

76:                                               ; preds = %75, %60
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
