; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_fw_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_fw_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i64, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@COMP_ERR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Firmware callback routine entered!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Loading alternative firmware %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Selected firmware is not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Firmware is too big!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*, i32)* @rtl_fw_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_fw_do_work(%struct.firmware* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %11, %struct.ieee80211_hw** %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %8, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %15 = load i32, i32* @COMP_ERR, align 4
  %16 = load i32, i32* @DBG_LOUD, align 4
  %17 = call i32 @RT_TRACE(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 4
  %20 = call i32 @complete(i32* %19)
  %21 = load %struct.firmware*, %struct.firmware** %4, align 8
  %22 = icmp ne %struct.firmware* %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %3
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %23
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @request_firmware(%struct.firmware** %4, i64 %35, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  br label %56

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %23
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %110

55:                                               ; preds = %3
  br label %56

56:                                               ; preds = %55, %49
  %57 = load %struct.firmware*, %struct.firmware** %4, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.firmware*, %struct.firmware** %4, align 8
  %67 = call i32 @release_firmware(%struct.firmware* %66)
  br label %110

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %73 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.firmware*, %struct.firmware** %4, align 8
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.firmware*, %struct.firmware** %4, align 8
  %80 = getelementptr inbounds %struct.firmware, %struct.firmware* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memcpy(i32 %75, i32 %78, i64 %81)
  %83 = load %struct.firmware*, %struct.firmware** %4, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  br label %107

89:                                               ; preds = %68
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %91 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.firmware*, %struct.firmware** %4, align 8
  %95 = getelementptr inbounds %struct.firmware, %struct.firmware* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.firmware*, %struct.firmware** %4, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @memcpy(i32 %93, i32 %96, i64 %99)
  %101 = load %struct.firmware*, %struct.firmware** %4, align 8
  %102 = getelementptr inbounds %struct.firmware, %struct.firmware* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %105 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %89, %71
  %108 = load %struct.firmware*, %struct.firmware** %4, align 8
  %109 = call i32 @release_firmware(%struct.firmware* %108)
  br label %110

110:                                              ; preds = %107, %64, %51
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
