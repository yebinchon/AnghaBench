; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_createbss_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_createbss_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.cmd_priv }
%struct.TYPE_5__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque
%struct.TYPE_4__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i8*, i32, i64, i32*, i32, i32 }

@LED_CTL_START_TO_LINK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_CreateBss_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_createbss_cmd(%struct._adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca %struct.cmd_priv*, align 8
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 2
  store %struct.cmd_priv* %8, %struct.cmd_priv** %5, align 8
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.wlan_bssid_ex* %11, %struct.wlan_bssid_ex** %6, align 8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %14, align 8
  %16 = load %struct._adapter*, %struct._adapter** %3, align 8
  %17 = bitcast %struct._adapter* %16 to %struct._adapter.0*
  %18 = load i32, i32* @LED_CTL_START_TO_LINK, align 4
  %19 = call i32 %15(%struct._adapter.0* %17, i32 %18)
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.cmd_obj* @kmalloc(i32 40, i32 %20)
  store %struct.cmd_obj* %21, %struct.cmd_obj** %4, align 8
  %22 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %23 = icmp ne %struct.cmd_obj* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %1
  %28 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %29 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %28, i32 0, i32 5
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load i32, i32* @_CreateBss_CMD_, align 4
  %32 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %33 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %35 = bitcast %struct.wlan_bssid_ex* %34 to i8*
  %36 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %37 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %39 = call i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %38)
  %40 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %41 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %43 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %45 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %47 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %50 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %52 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %55 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %57 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %61 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.cmd_priv*, %struct.cmd_priv** %5, align 8
  %64 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %65 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %63, %struct.cmd_obj* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %27, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.cmd_obj* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
