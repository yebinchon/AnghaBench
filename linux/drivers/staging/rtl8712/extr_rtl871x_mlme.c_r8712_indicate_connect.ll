; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_indicate_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_indicate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlme_priv }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque
%struct.mlme_priv = type { i32, i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@LED_CTL_LINK = common dso_local global i32 0, align 4
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_indicate_connect(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 2
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %9 = load i32, i32* @_FW_LINKED, align 4
  %10 = call i32 @set_fwstate(%struct.mlme_priv* %8, i32 %9)
  %11 = load %struct._adapter*, %struct._adapter** %2, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %13, align 8
  %15 = load %struct._adapter*, %struct._adapter** %2, align 8
  %16 = bitcast %struct._adapter* %15 to %struct._adapter.0*
  %17 = load i32, i32* @LED_CTL_LINK, align 4
  %18 = call i32 %14(%struct._adapter.0* %16, i32 %17)
  %19 = load %struct._adapter*, %struct._adapter** %2, align 8
  %20 = call i32 @r8712_os_indicate_connect(%struct._adapter* %19)
  %21 = load %struct._adapter*, %struct._adapter** %2, align 8
  %22 = getelementptr inbounds %struct._adapter, %struct._adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 1
  %30 = load i64, i64* @jiffies, align 8
  %31 = call i64 @msecs_to_jiffies(i32 60000)
  %32 = add nsw i64 %30, %31
  %33 = call i32 @mod_timer(i32* %29, i64 %32)
  br label %34

34:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_os_indicate_connect(%struct._adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
