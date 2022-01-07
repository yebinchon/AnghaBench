; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c__rtw_camid_is_gk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c__rtw_camid_is_gk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { %struct.TYPE_2__*, %struct.cam_ctl_t }
%struct.TYPE_2__ = type { i32 }
%struct.cam_ctl_t = type { i32 }

@TOTAL_CAM_ENTRY = common dso_local global i64 0, align 8
@BIT6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i64)* @_rtw_camid_is_gk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtw_camid_is_gk(%struct.adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.cam_ctl_t*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %8)
  store %struct.dvobj_priv* %9, %struct.dvobj_priv** %5, align 8
  %10 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %11 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %10, i32 0, i32 1
  store %struct.cam_ctl_t* %11, %struct.cam_ctl_t** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.cam_ctl_t*, %struct.cam_ctl_t** %6, align 8
  %18 = getelementptr inbounds %struct.cam_ctl_t, %struct.cam_ctl_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @BIT(i64 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %27 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BIT6, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %25, %24, %15
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
