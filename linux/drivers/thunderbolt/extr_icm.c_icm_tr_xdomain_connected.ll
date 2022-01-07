; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_xdomain_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_xdomain_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_tr_event_xdomain_connected = type { i32, i32, i32, i32 }
%struct.tb_xdomain = type { i64 }
%struct.tb_switch = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"no switch exists at %llx, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*)* @icm_tr_xdomain_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_tr_xdomain_connected(%struct.tb* %0, %struct.icm_pkg_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm_pkg_header*, align 8
  %5 = alloca %struct.icm_tr_event_xdomain_connected*, align 8
  %6 = alloca %struct.tb_xdomain*, align 8
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca i64, align 8
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %4, align 8
  %9 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %4, align 8
  %10 = bitcast %struct.icm_pkg_header* %9 to %struct.icm_tr_event_xdomain_connected*
  store %struct.icm_tr_event_xdomain_connected* %10, %struct.icm_tr_event_xdomain_connected** %5, align 8
  %11 = load %struct.tb*, %struct.tb** %3, align 8
  %12 = getelementptr inbounds %struct.tb, %struct.tb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %90

16:                                               ; preds = %2
  %17 = load %struct.icm_tr_event_xdomain_connected*, %struct.icm_tr_event_xdomain_connected** %5, align 8
  %18 = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, %struct.icm_tr_event_xdomain_connected* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.icm_tr_event_xdomain_connected*, %struct.icm_tr_event_xdomain_connected** %5, align 8
  %21 = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, %struct.icm_tr_event_xdomain_connected* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @get_route(i32 %19, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.tb*, %struct.tb** %3, align 8
  %25 = load %struct.icm_tr_event_xdomain_connected*, %struct.icm_tr_event_xdomain_connected** %5, align 8
  %26 = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, %struct.icm_tr_event_xdomain_connected* %25, i32 0, i32 0
  %27 = call %struct.tb_xdomain* @tb_xdomain_find_by_uuid(%struct.tb* %24, i32* %26)
  store %struct.tb_xdomain* %27, %struct.tb_xdomain** %6, align 8
  %28 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %29 = icmp ne %struct.tb_xdomain* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %16
  %31 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %32 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @update_xdomain(%struct.tb_xdomain* %37, i64 %38, i32 0)
  %40 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %41 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %40)
  br label %90

42:                                               ; preds = %30
  %43 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %44 = call i32 @remove_xdomain(%struct.tb_xdomain* %43)
  %45 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %46 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %45)
  br label %47

47:                                               ; preds = %42, %16
  %48 = load %struct.tb*, %struct.tb** %3, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb* %48, i64 %49)
  store %struct.tb_xdomain* %50, %struct.tb_xdomain** %6, align 8
  %51 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %52 = icmp ne %struct.tb_xdomain* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %55 = call i32 @remove_xdomain(%struct.tb_xdomain* %54)
  %56 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %57 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.tb*, %struct.tb** %3, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call %struct.tb_switch* @tb_switch_find_by_route(%struct.tb* %59, i64 %60)
  store %struct.tb_switch* %61, %struct.tb_switch** %7, align 8
  %62 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %63 = icmp ne %struct.tb_switch* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %66 = call i32 @remove_switch(%struct.tb_switch* %65)
  %67 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %68 = call i32 @tb_switch_put(%struct.tb_switch* %67)
  br label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.tb*, %struct.tb** %3, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @get_parent_route(i64 %71)
  %73 = call %struct.tb_switch* @tb_switch_find_by_route(%struct.tb* %70, i64 %72)
  store %struct.tb_switch* %73, %struct.tb_switch** %7, align 8
  %74 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %75 = icmp ne %struct.tb_switch* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load %struct.tb*, %struct.tb** %3, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @tb_warn(%struct.tb* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %78)
  br label %90

80:                                               ; preds = %69
  %81 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.icm_tr_event_xdomain_connected*, %struct.icm_tr_event_xdomain_connected** %5, align 8
  %84 = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, %struct.icm_tr_event_xdomain_connected* %83, i32 0, i32 1
  %85 = load %struct.icm_tr_event_xdomain_connected*, %struct.icm_tr_event_xdomain_connected** %5, align 8
  %86 = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, %struct.icm_tr_event_xdomain_connected* %85, i32 0, i32 0
  %87 = call i32 @add_xdomain(%struct.tb_switch* %81, i64 %82, i32* %84, i32* %86, i32 0, i32 0)
  %88 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %89 = call i32 @tb_switch_put(%struct.tb_switch* %88)
  br label %90

90:                                               ; preds = %80, %76, %36, %15
  ret void
}

declare dso_local i64 @get_route(i32, i32) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_uuid(%struct.tb*, i32*) #1

declare dso_local i32 @update_xdomain(%struct.tb_xdomain*, i64, i32) #1

declare dso_local i32 @tb_xdomain_put(%struct.tb_xdomain*) #1

declare dso_local i32 @remove_xdomain(%struct.tb_xdomain*) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb*, i64) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_route(%struct.tb*, i64) #1

declare dso_local i32 @remove_switch(%struct.tb_switch*) #1

declare dso_local i32 @tb_switch_put(%struct.tb_switch*) #1

declare dso_local i64 @get_parent_route(i64) #1

declare dso_local i32 @tb_warn(%struct.tb*, i8*, i64) #1

declare dso_local i32 @add_xdomain(%struct.tb_switch*, i64, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
