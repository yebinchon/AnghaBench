; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_invalidate_cam_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_invalidate_cam_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { i32, %struct.cam_ctl_t }
%struct.cam_ctl_t = type { i32, i64 }

@HW_VAR_CAM_INVALID_ALL = common dso_local global i32 0, align 4
@TOTAL_CAM_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalidate_cam_all(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.dvobj_priv*, align 8
  %4 = alloca %struct.cam_ctl_t*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %5)
  store %struct.dvobj_priv* %6, %struct.dvobj_priv** %3, align 8
  %7 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %8 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %7, i32 0, i32 1
  store %struct.cam_ctl_t* %8, %struct.cam_ctl_t** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = load i32, i32* @HW_VAR_CAM_INVALID_ALL, align 4
  %11 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %9, i32 %10, i32* null)
  %12 = load %struct.cam_ctl_t*, %struct.cam_ctl_t** %4, align 8
  %13 = getelementptr inbounds %struct.cam_ctl_t, %struct.cam_ctl_t* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.cam_ctl_t*, %struct.cam_ctl_t** %4, align 8
  %16 = getelementptr inbounds %struct.cam_ctl_t, %struct.cam_ctl_t* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TOTAL_CAM_ENTRY, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32 %19, i32 0, i32 %23)
  %25 = load %struct.cam_ctl_t*, %struct.cam_ctl_t** %4, align 8
  %26 = getelementptr inbounds %struct.cam_ctl_t, %struct.cam_ctl_t* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_bh(i32* %26)
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
