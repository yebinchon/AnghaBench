; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_device_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_device_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_fr_event_device_disconnected = type { i32 }
%struct.tb_switch = type { i32 }

@ICM_LINK_INFO_LINK_MASK = common dso_local global i32 0, align 4
@ICM_LINK_INFO_DEPTH_MASK = common dso_local global i32 0, align 4
@ICM_LINK_INFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@ICM_MAX_LINK = common dso_local global i32 0, align 4
@TB_SWITCH_MAX_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid topology %u.%u, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"no switch exists at %u.%u, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*)* @icm_fr_device_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_fr_device_disconnected(%struct.tb* %0, %struct.icm_pkg_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm_pkg_header*, align 8
  %5 = alloca %struct.icm_fr_event_device_disconnected*, align 8
  %6 = alloca %struct.tb_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %4, align 8
  %9 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %4, align 8
  %10 = bitcast %struct.icm_pkg_header* %9 to %struct.icm_fr_event_device_disconnected*
  store %struct.icm_fr_event_device_disconnected* %10, %struct.icm_fr_event_device_disconnected** %5, align 8
  %11 = load %struct.icm_fr_event_device_disconnected*, %struct.icm_fr_event_device_disconnected** %5, align 8
  %12 = getelementptr inbounds %struct.icm_fr_event_device_disconnected, %struct.icm_fr_event_device_disconnected* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ICM_LINK_INFO_LINK_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.icm_fr_event_device_disconnected*, %struct.icm_fr_event_device_disconnected** %5, align 8
  %17 = getelementptr inbounds %struct.icm_fr_event_device_disconnected, %struct.icm_fr_event_device_disconnected* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ICM_LINK_INFO_DEPTH_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @ICM_LINK_INFO_DEPTH_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ICM_MAX_LINK, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TB_SWITCH_MAX_DEPTH, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %2
  %31 = load %struct.tb*, %struct.tb** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @tb_warn(%struct.tb* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %52

35:                                               ; preds = %26
  %36 = load %struct.tb*, %struct.tb** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb* %36, i32 %37, i32 %38)
  store %struct.tb_switch* %39, %struct.tb_switch** %6, align 8
  %40 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %41 = icmp ne %struct.tb_switch* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.tb*, %struct.tb** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @tb_warn(%struct.tb* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  br label %52

47:                                               ; preds = %35
  %48 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %49 = call i32 @remove_switch(%struct.tb_switch* %48)
  %50 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %51 = call i32 @tb_switch_put(%struct.tb_switch* %50)
  br label %52

52:                                               ; preds = %47, %42, %30
  ret void
}

declare dso_local i32 @tb_warn(%struct.tb*, i8*, i32, i32) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb*, i32, i32) #1

declare dso_local i32 @remove_switch(%struct.tb_switch*) #1

declare dso_local i32 @tb_switch_put(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
