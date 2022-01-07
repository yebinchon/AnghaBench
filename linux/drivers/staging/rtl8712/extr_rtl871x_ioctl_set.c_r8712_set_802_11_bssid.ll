; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_set_802_11_bssid(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct._adapter*, %struct._adapter** %4, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.mlme_priv* %10, %struct.mlme_priv** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @is_zero_ether_addr(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @is_broadcast_ether_addr(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %101

20:                                               ; preds = %14
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %26 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %27 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @check_fwstate(%struct.mlme_priv* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %33 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %34 = call i32 @check_fwstate(%struct.mlme_priv* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %94

35:                                               ; preds = %20
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %37 = load i32, i32* @_FW_LINKED, align 4
  %38 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @check_fwstate(%struct.mlme_priv* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %35
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %44 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcmp(i32* %46, i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %53 = load i32, i32* @WIFI_STATION_STATE, align 4
  %54 = call i32 @check_fwstate(%struct.mlme_priv* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %94

57:                                               ; preds = %51
  br label %83

58:                                               ; preds = %42
  %59 = load %struct._adapter*, %struct._adapter** %4, align 8
  %60 = call i32 @r8712_disassoc_cmd(%struct._adapter* %59)
  %61 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %62 = load i32, i32* @_FW_LINKED, align 4
  %63 = call i32 @check_fwstate(%struct.mlme_priv* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct._adapter*, %struct._adapter** %4, align 8
  %67 = call i32 @r8712_ind_disconnect(%struct._adapter* %66)
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct._adapter*, %struct._adapter** %4, align 8
  %70 = call i32 @r8712_free_assoc_resources(%struct._adapter* %69)
  %71 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %72 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %73 = call i32 @check_fwstate(%struct.mlme_priv* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %77 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %78 = call i32 @_clr_fwstate_(%struct.mlme_priv* %76, i32 %77)
  %79 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %80 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %81 = call i32 @set_fwstate(%struct.mlme_priv* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83, %35
  %85 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %86 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %85, i32 0, i32 2
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32* %86, i32* %87, i32 %88)
  %90 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %91 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = load %struct._adapter*, %struct._adapter** %4, align 8
  %93 = call i32 @do_join(%struct._adapter* %92)
  store i32 %93, i32* %7, align 4
  br label %95

94:                                               ; preds = %56, %31
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %97 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %96, i32 0, i32 1
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %18
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @r8712_disassoc_cmd(%struct._adapter*) #1

declare dso_local i32 @r8712_ind_disconnect(%struct._adapter*) #1

declare dso_local i32 @r8712_free_assoc_resources(%struct._adapter*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @do_join(%struct._adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
