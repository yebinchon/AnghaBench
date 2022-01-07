; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_xdomain_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_xdomain_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_tr_event_xdomain_disconnected = type { i32, i32 }
%struct.tb_xdomain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*)* @icm_tr_xdomain_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_tr_xdomain_disconnected(%struct.tb* %0, %struct.icm_pkg_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm_pkg_header*, align 8
  %5 = alloca %struct.icm_tr_event_xdomain_disconnected*, align 8
  %6 = alloca %struct.tb_xdomain*, align 8
  %7 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %4, align 8
  %8 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %4, align 8
  %9 = bitcast %struct.icm_pkg_header* %8 to %struct.icm_tr_event_xdomain_disconnected*
  store %struct.icm_tr_event_xdomain_disconnected* %9, %struct.icm_tr_event_xdomain_disconnected** %5, align 8
  %10 = load %struct.icm_tr_event_xdomain_disconnected*, %struct.icm_tr_event_xdomain_disconnected** %5, align 8
  %11 = getelementptr inbounds %struct.icm_tr_event_xdomain_disconnected, %struct.icm_tr_event_xdomain_disconnected* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.icm_tr_event_xdomain_disconnected*, %struct.icm_tr_event_xdomain_disconnected** %5, align 8
  %14 = getelementptr inbounds %struct.icm_tr_event_xdomain_disconnected, %struct.icm_tr_event_xdomain_disconnected* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @get_route(i32 %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.tb*, %struct.tb** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb* %17, i32 %18)
  store %struct.tb_xdomain* %19, %struct.tb_xdomain** %6, align 8
  %20 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %21 = icmp ne %struct.tb_xdomain* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %24 = call i32 @remove_xdomain(%struct.tb_xdomain* %23)
  %25 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %26 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %25)
  br label %27

27:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @get_route(i32, i32) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb*, i32) #1

declare dso_local i32 @remove_xdomain(%struct.tb_xdomain*) #1

declare dso_local i32 @tb_xdomain_put(%struct.tb_xdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
