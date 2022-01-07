; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_init_mlme_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_init_mlme_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, %struct.TYPE_7__, %struct.TYPE_8__, i32*, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__, i64, i32*, i32* }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wlan_network = type { i32 }

@Ndis802_11AutoUnknown = common dso_local global i32 0, align 4
@MAX_BSS_CNT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_init_mlme_priv(%struct._adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wlan_network*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  store %struct.mlme_priv* %9, %struct.mlme_priv** %7, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %11 = bitcast %struct.mlme_priv* %10 to i32*
  %12 = call i32 @memset(i32* %11, i32 0, i32 96)
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = bitcast %struct._adapter* %13 to i32*
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 11
  store i32* %14, i32** %16, align 8
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 10
  store i32* null, i32** %18, align 8
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @Ndis802_11AutoUnknown, align 4
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %23 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 7
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %31, i32 0, i32 6
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %35 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %34, i32 0, i32 2
  %36 = call i32 @_init_queue(%struct.TYPE_8__* %35)
  %37 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %38 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %37, i32 0, i32 5
  %39 = call i32 @_init_queue(%struct.TYPE_8__* %38)
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %41 = call i32 @set_scanned_network_val(%struct.mlme_priv* %40, i32 0)
  %42 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %43 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %42, i32 0, i32 4
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  %45 = load i64, i64* @MAX_BSS_CNT, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32* @kmalloc_array(i64 %45, i32 4, i32 %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %90

53:                                               ; preds = %1
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %56 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = bitcast i32* %57 to %struct.wlan_network*
  store %struct.wlan_network* %58, %struct.wlan_network** %6, align 8
  store i64 0, i64* %4, align 8
  br label %59

59:                                               ; preds = %75, %53
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @MAX_BSS_CNT, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %65 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %64, i32 0, i32 0
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %68 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %67, i32 0, i32 0
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %70 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %68, i32* %71)
  %73 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %74 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %73, i32 1
  store %struct.wlan_network* %74, %struct.wlan_network** %6, align 8
  br label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %4, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %4, align 8
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %80 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %83 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %86 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct._adapter*, %struct._adapter** %3, align 8
  %89 = call i32 @r8712_init_mlme_timer(%struct._adapter* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %78, %50
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_init_queue(%struct.TYPE_8__*) #1

declare dso_local i32 @set_scanned_network_val(%struct.mlme_priv*, i32) #1

declare dso_local i32* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @r8712_init_mlme_timer(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
