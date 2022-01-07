; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c__r8712_sitesurvey_ctrl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c__r8712_sitesurvey_ctrl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.registry_priv, %struct.mlme_priv }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.registry_priv = type { i64 }
%struct.mlme_priv = type { %struct.sitesurvey_ctrl }
%struct.sitesurvey_ctrl = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_r8712_sitesurvey_ctrl_handler(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.sitesurvey_ctrl*, align 8
  %5 = alloca %struct.registry_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %8 = load %struct._adapter*, %struct._adapter** %2, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 3
  store %struct.mlme_priv* %9, %struct.mlme_priv** %3, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 0
  store %struct.sitesurvey_ctrl* %11, %struct.sitesurvey_ctrl** %4, align 8
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 2
  store %struct.registry_priv* %13, %struct.registry_priv** %5, align 8
  %14 = load %struct._adapter*, %struct._adapter** %2, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sitesurvey_ctrl*, %struct.sitesurvey_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.sitesurvey_ctrl, %struct.sitesurvey_ctrl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct._adapter*, %struct._adapter** %2, align 8
  %23 = getelementptr inbounds %struct._adapter, %struct._adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sitesurvey_ctrl*, %struct.sitesurvey_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.sitesurvey_ctrl, %struct.sitesurvey_ctrl* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct._adapter*, %struct._adapter** %2, align 8
  %31 = getelementptr inbounds %struct._adapter, %struct._adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sitesurvey_ctrl*, %struct.sitesurvey_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.sitesurvey_ctrl, %struct.sitesurvey_ctrl* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct._adapter*, %struct._adapter** %2, align 8
  %37 = getelementptr inbounds %struct._adapter, %struct._adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sitesurvey_ctrl*, %struct.sitesurvey_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.sitesurvey_ctrl, %struct.sitesurvey_ctrl* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %44 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %1
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %50 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %1
  %54 = load %struct.sitesurvey_ctrl*, %struct.sitesurvey_ctrl** %4, align 8
  %55 = getelementptr inbounds %struct.sitesurvey_ctrl, %struct.sitesurvey_ctrl* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.sitesurvey_ctrl*, %struct.sitesurvey_ctrl** %4, align 8
  %58 = getelementptr inbounds %struct.sitesurvey_ctrl, %struct.sitesurvey_ctrl* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
