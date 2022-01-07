; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_xdomain_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_xdomain_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_fr_event_xdomain_connected = type { i64, i32, i32, i32, i32 }
%struct.tb_xdomain = type { i64, i32 }
%struct.tb_switch = type { i32 }

@ICM_LINK_INFO_LINK_MASK = common dso_local global i64 0, align 8
@ICM_LINK_INFO_DEPTH_MASK = common dso_local global i64 0, align 8
@ICM_LINK_INFO_DEPTH_SHIFT = common dso_local global i64 0, align 8
@ICM_MAX_LINK = common dso_local global i64 0, align 8
@TB_SWITCH_MAX_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"invalid topology %u.%u, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"no switch exists at %u.%u, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*)* @icm_fr_xdomain_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_fr_xdomain_connected(%struct.tb* %0, %struct.icm_pkg_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm_pkg_header*, align 8
  %5 = alloca %struct.icm_fr_event_xdomain_connected*, align 8
  %6 = alloca %struct.tb_xdomain*, align 8
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %4, align 8
  %14 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %4, align 8
  %15 = bitcast %struct.icm_pkg_header* %14 to %struct.icm_fr_event_xdomain_connected*
  store %struct.icm_fr_event_xdomain_connected* %15, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %16 = load %struct.icm_fr_event_xdomain_connected*, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %17 = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, %struct.icm_fr_event_xdomain_connected* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ICM_LINK_INFO_LINK_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.icm_fr_event_xdomain_connected*, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %22 = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, %struct.icm_fr_event_xdomain_connected* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ICM_LINK_INFO_DEPTH_MASK, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* @ICM_LINK_INFO_DEPTH_SHIFT, align 8
  %27 = ashr i64 %25, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ICM_MAX_LINK, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @TB_SWITCH_MAX_DEPTH, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %2
  %36 = load %struct.tb*, %struct.tb** %3, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @tb_warn(%struct.tb* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  br label %147

40:                                               ; preds = %31
  %41 = load %struct.icm_fr_event_xdomain_connected*, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %42 = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, %struct.icm_fr_event_xdomain_connected* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.icm_fr_event_xdomain_connected*, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %45 = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, %struct.icm_fr_event_xdomain_connected* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @get_route(i32 %43, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.tb*, %struct.tb** %3, align 8
  %49 = load %struct.icm_fr_event_xdomain_connected*, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %50 = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, %struct.icm_fr_event_xdomain_connected* %49, i32 0, i32 1
  %51 = call %struct.tb_xdomain* @tb_xdomain_find_by_uuid(%struct.tb* %48, i32* %50)
  store %struct.tb_xdomain* %51, %struct.tb_xdomain** %6, align 8
  %52 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %53 = icmp ne %struct.tb_xdomain* %52, null
  br i1 %53, label %54, label %86

54:                                               ; preds = %40
  %55 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %56 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %59 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @phy_port_from_route(i32 %57, i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @phy_port_from_route(i32 %62, i64 %63)
  store i64 %64, i64* %12, align 8
  %65 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %66 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %54
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @update_xdomain(%struct.tb_xdomain* %75, i32 %76, i64 %77)
  %79 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %80 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %79)
  br label %147

81:                                               ; preds = %70, %54
  %82 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %83 = call i32 @remove_xdomain(%struct.tb_xdomain* %82)
  %84 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %85 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %84)
  br label %86

86:                                               ; preds = %81, %40
  %87 = load %struct.tb*, %struct.tb** %3, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call %struct.tb_xdomain* @tb_xdomain_find_by_link_depth(%struct.tb* %87, i64 %88, i64 %89)
  store %struct.tb_xdomain* %90, %struct.tb_xdomain** %6, align 8
  %91 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %92 = icmp ne %struct.tb_xdomain* %91, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %86
  %94 = load i64, i64* %8, align 8
  %95 = call i64 @dual_link_from_link(i64 %94)
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.tb*, %struct.tb** %3, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call %struct.tb_xdomain* @tb_xdomain_find_by_link_depth(%struct.tb* %99, i64 %100, i64 %101)
  store %struct.tb_xdomain* %102, %struct.tb_xdomain** %6, align 8
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %106 = icmp ne %struct.tb_xdomain* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %109 = call i32 @remove_xdomain(%struct.tb_xdomain* %108)
  %110 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %111 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %110)
  br label %112

112:                                              ; preds = %107, %104
  %113 = load %struct.tb*, %struct.tb** %3, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call %struct.tb_switch* @tb_switch_find_by_route(%struct.tb* %113, i32 %114)
  store %struct.tb_switch* %115, %struct.tb_switch** %7, align 8
  %116 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %117 = icmp ne %struct.tb_switch* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %120 = call i32 @remove_switch(%struct.tb_switch* %119)
  %121 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %122 = call i32 @tb_switch_put(%struct.tb_switch* %121)
  br label %123

123:                                              ; preds = %118, %112
  %124 = load %struct.tb*, %struct.tb** %3, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb* %124, i64 %125, i64 %126)
  store %struct.tb_switch* %127, %struct.tb_switch** %7, align 8
  %128 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %129 = icmp ne %struct.tb_switch* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %123
  %131 = load %struct.tb*, %struct.tb** %3, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @tb_warn(%struct.tb* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %132, i64 %133)
  br label %147

135:                                              ; preds = %123
  %136 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.icm_fr_event_xdomain_connected*, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %139 = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, %struct.icm_fr_event_xdomain_connected* %138, i32 0, i32 2
  %140 = load %struct.icm_fr_event_xdomain_connected*, %struct.icm_fr_event_xdomain_connected** %5, align 8
  %141 = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, %struct.icm_fr_event_xdomain_connected* %140, i32 0, i32 1
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = call i32 @add_xdomain(%struct.tb_switch* %136, i32 %137, i32* %139, i32* %141, i64 %142, i64 %143)
  %145 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %146 = call i32 @tb_switch_put(%struct.tb_switch* %145)
  br label %147

147:                                              ; preds = %135, %130, %74, %35
  ret void
}

declare dso_local i32 @tb_warn(%struct.tb*, i8*, i64, i64) #1

declare dso_local i32 @get_route(i32, i32) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_uuid(%struct.tb*, i32*) #1

declare dso_local i64 @phy_port_from_route(i32, i64) #1

declare dso_local i32 @update_xdomain(%struct.tb_xdomain*, i32, i64) #1

declare dso_local i32 @tb_xdomain_put(%struct.tb_xdomain*) #1

declare dso_local i32 @remove_xdomain(%struct.tb_xdomain*) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_link_depth(%struct.tb*, i64, i64) #1

declare dso_local i64 @dual_link_from_link(i64) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_route(%struct.tb*, i32) #1

declare dso_local i32 @remove_switch(%struct.tb_switch*) #1

declare dso_local i32 @tb_switch_put(%struct.tb_switch*) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb*, i64, i64) #1

declare dso_local i32 @add_xdomain(%struct.tb_switch*, i32, i32*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
