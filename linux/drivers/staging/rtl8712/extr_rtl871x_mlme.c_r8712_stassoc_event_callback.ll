; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_stassoc_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_stassoc_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.mlme_priv }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlme_priv = type { i32 }
%struct.sta_info = type { i32, i32, i32, i64 }
%struct.stassoc_event = type { i32, i32 }

@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_stassoc_event_callback(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.stassoc_event*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 3
  store %struct.mlme_priv* %10, %struct.mlme_priv** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.stassoc_event*
  store %struct.stassoc_event* %12, %struct.stassoc_event** %8, align 8
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 2
  %15 = load %struct.stassoc_event*, %struct.stassoc_event** %8, align 8
  %16 = getelementptr inbounds %struct.stassoc_event, %struct.stassoc_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @r8712_access_ctrl(i32* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %93

21:                                               ; preds = %2
  %22 = load %struct._adapter*, %struct._adapter** %3, align 8
  %23 = getelementptr inbounds %struct._adapter, %struct._adapter* %22, i32 0, i32 0
  %24 = load %struct.stassoc_event*, %struct.stassoc_event** %8, align 8
  %25 = getelementptr inbounds %struct.stassoc_event, %struct.stassoc_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sta_info* @r8712_get_stainfo(%struct.TYPE_5__* %23, i32 %26)
  store %struct.sta_info* %27, %struct.sta_info** %6, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %29 = icmp ne %struct.sta_info* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %93

31:                                               ; preds = %21
  %32 = load %struct._adapter*, %struct._adapter** %3, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 0
  %34 = load %struct.stassoc_event*, %struct.stassoc_event** %8, align 8
  %35 = getelementptr inbounds %struct.stassoc_event, %struct.stassoc_event* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.sta_info* @r8712_alloc_stainfo(%struct.TYPE_5__* %33, i32 %36)
  store %struct.sta_info* %37, %struct.sta_info** %6, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = icmp eq %struct.sta_info* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %93

41:                                               ; preds = %31
  %42 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.stassoc_event*, %struct.stassoc_event** %8, align 8
  %45 = getelementptr inbounds %struct.stassoc_event, %struct.stassoc_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct._adapter*, %struct._adapter** %3, align 8
  %51 = getelementptr inbounds %struct._adapter, %struct._adapter* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct._adapter*, %struct._adapter** %3, align 8
  %57 = getelementptr inbounds %struct._adapter, %struct._adapter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %41
  %63 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %66 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %70 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %71 = call i64 @check_fwstate(%struct.mlme_priv* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %62
  %74 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %75 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %76 = call i64 @check_fwstate(%struct.mlme_priv* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73, %62
  %79 = load %struct._adapter*, %struct._adapter** %3, align 8
  %80 = getelementptr inbounds %struct._adapter, %struct._adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct._adapter*, %struct._adapter** %3, align 8
  %86 = call i32 @r8712_indicate_connect(%struct._adapter* %85)
  br label %87

87:                                               ; preds = %84, %78
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %90 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %40, %30, %20
  ret void
}

declare dso_local i32 @r8712_access_ctrl(i32*, i32) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.sta_info* @r8712_alloc_stainfo(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_indicate_connect(%struct._adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
