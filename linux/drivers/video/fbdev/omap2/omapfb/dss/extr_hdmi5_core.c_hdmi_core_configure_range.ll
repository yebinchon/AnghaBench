; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5_core.c_hdmi_core_configure_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5_core.c_hdmi_core_configure_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csc_table = type { i32 }
%struct.hdmi_core_data = type { i32 }

@csc_table_deepcolor = common dso_local global %struct.csc_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_core_data*)* @hdmi_core_configure_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_core_configure_range(%struct.hdmi_core_data* %0) #0 {
  %2 = alloca %struct.hdmi_core_data*, align 8
  %3 = alloca %struct.csc_table, align 4
  store %struct.hdmi_core_data* %0, %struct.hdmi_core_data** %2, align 8
  %4 = bitcast %struct.csc_table* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load %struct.csc_table*, %struct.csc_table** @csc_table_deepcolor, align 8
  %6 = getelementptr inbounds %struct.csc_table, %struct.csc_table* %5, i64 0
  %7 = bitcast %struct.csc_table* %3 to i8*
  %8 = bitcast %struct.csc_table* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 4, i1 false)
  %9 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %10 = getelementptr inbounds %struct.csc_table, %struct.csc_table* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @hdmi_core_csc_config(%struct.hdmi_core_data* %9, i32 %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hdmi_core_csc_config(%struct.hdmi_core_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
