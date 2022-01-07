; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32 }
%struct.omap_overlay_info = type { i32 }
%struct.ovl_priv_data = type { %struct.omap_overlay_info }

@data_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay*, %struct.omap_overlay_info*)* @dss_ovl_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_ovl_get_info(%struct.omap_overlay* %0, %struct.omap_overlay_info* %1) #0 {
  %3 = alloca %struct.omap_overlay*, align 8
  %4 = alloca %struct.omap_overlay_info*, align 8
  %5 = alloca %struct.ovl_priv_data*, align 8
  %6 = alloca i64, align 8
  store %struct.omap_overlay* %0, %struct.omap_overlay** %3, align 8
  store %struct.omap_overlay_info* %1, %struct.omap_overlay_info** %4, align 8
  %7 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %8 = call %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay* %7)
  store %struct.ovl_priv_data* %8, %struct.ovl_priv_data** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %9)
  %11 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %4, align 8
  %12 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %5, align 8
  %13 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %12, i32 0, i32 0
  %14 = bitcast %struct.omap_overlay_info* %11 to i8*
  %15 = bitcast %struct.omap_overlay_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %16)
  ret void
}

declare dso_local %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
