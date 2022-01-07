; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_icl_rtd3_veto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_icl_rtd3_veto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_icl_event_rtd3_veto = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"ICM rtd3 veto=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*)* @icm_icl_rtd3_veto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_icl_rtd3_veto(%struct.tb* %0, %struct.icm_pkg_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm_pkg_header*, align 8
  %5 = alloca %struct.icm_icl_event_rtd3_veto*, align 8
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %4, align 8
  %6 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %4, align 8
  %7 = bitcast %struct.icm_pkg_header* %6 to %struct.icm_icl_event_rtd3_veto*
  store %struct.icm_icl_event_rtd3_veto* %7, %struct.icm_icl_event_rtd3_veto** %5, align 8
  %8 = load %struct.tb*, %struct.tb** %3, align 8
  %9 = load %struct.icm_icl_event_rtd3_veto*, %struct.icm_icl_event_rtd3_veto** %5, align 8
  %10 = getelementptr inbounds %struct.icm_icl_event_rtd3_veto, %struct.icm_icl_event_rtd3_veto* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @tb_dbg(%struct.tb* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.icm_icl_event_rtd3_veto*, %struct.icm_icl_event_rtd3_veto** %5, align 8
  %14 = getelementptr inbounds %struct.icm_icl_event_rtd3_veto, %struct.icm_icl_event_rtd3_veto* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.tb*, %struct.tb** %3, align 8
  %19 = call i32 @icm_veto_begin(%struct.tb* %18)
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.tb*, %struct.tb** %3, align 8
  %22 = call i32 @icm_veto_end(%struct.tb* %21)
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @tb_dbg(%struct.tb*, i8*, i64) #1

declare dso_local i32 @icm_veto_begin(%struct.tb*) #1

declare dso_local i32 @icm_veto_end(%struct.tb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
