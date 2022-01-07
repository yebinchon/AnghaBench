; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_device_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_device_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_tr_event_device_disconnected = type { i32, i32 }
%struct.tb_switch = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"no switch exists at %llx, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*)* @icm_tr_device_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_tr_device_disconnected(%struct.tb* %0, %struct.icm_pkg_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm_pkg_header*, align 8
  %5 = alloca %struct.icm_tr_event_device_disconnected*, align 8
  %6 = alloca %struct.tb_switch*, align 8
  %7 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %4, align 8
  %8 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %4, align 8
  %9 = bitcast %struct.icm_pkg_header* %8 to %struct.icm_tr_event_device_disconnected*
  store %struct.icm_tr_event_device_disconnected* %9, %struct.icm_tr_event_device_disconnected** %5, align 8
  %10 = load %struct.icm_tr_event_device_disconnected*, %struct.icm_tr_event_device_disconnected** %5, align 8
  %11 = getelementptr inbounds %struct.icm_tr_event_device_disconnected, %struct.icm_tr_event_device_disconnected* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.icm_tr_event_device_disconnected*, %struct.icm_tr_event_device_disconnected** %5, align 8
  %14 = getelementptr inbounds %struct.icm_tr_event_device_disconnected, %struct.icm_tr_event_device_disconnected* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @get_route(i32 %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.tb*, %struct.tb** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.tb_switch* @tb_switch_find_by_route(%struct.tb* %17, i32 %18)
  store %struct.tb_switch* %19, %struct.tb_switch** %6, align 8
  %20 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %21 = icmp ne %struct.tb_switch* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.tb*, %struct.tb** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @tb_warn(%struct.tb* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %28 = call i32 @remove_switch(%struct.tb_switch* %27)
  %29 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %30 = call i32 @tb_switch_put(%struct.tb_switch* %29)
  br label %31

31:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @get_route(i32, i32) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_route(%struct.tb*, i32) #1

declare dso_local i32 @tb_warn(%struct.tb*, i8*, i32) #1

declare dso_local i32 @remove_switch(%struct.tb_switch*) #1

declare dso_local i32 @tb_switch_put(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
