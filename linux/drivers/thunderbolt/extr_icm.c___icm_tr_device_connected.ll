; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c___icm_tr_device_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c___icm_tr_device_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_tr_event_device_connected = type { i32, i32, i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.tb_switch = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tb_xdomain = type { i32 }

@ICM_LINK_INFO_APPROVED = common dso_local global i32 0, align 4
@ICM_FLAGS_SLEVEL_MASK = common dso_local global i32 0, align 4
@ICM_FLAGS_SLEVEL_SHIFT = common dso_local global i32 0, align 4
@ICM_LINK_INFO_BOOT = common dso_local global i32 0, align 4
@ICM_LINK_INFO_REJECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"switch at %llx was rejected by ICM firmware because topology limit exceeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to find parent switch for %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*, i32)* @__icm_tr_device_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__icm_tr_device_connected(%struct.tb* %0, %struct.icm_pkg_header* %1, i32 %2) #0 {
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.icm_pkg_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icm_tr_event_device_connected*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tb_switch*, align 8
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca %struct.tb_xdomain*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %5, align 8
  %16 = bitcast %struct.icm_pkg_header* %15 to %struct.icm_tr_event_device_connected*
  store %struct.icm_tr_event_device_connected* %16, %struct.icm_tr_event_device_connected** %7, align 8
  %17 = load %struct.tb*, %struct.tb** %4, align 8
  %18 = call i32 @icm_postpone_rescan(%struct.tb* %17)
  %19 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %20 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %165

25:                                               ; preds = %3
  %26 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %27 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %30 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @get_route(i32 %28, i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %34 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ICM_LINK_INFO_APPROVED, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %39 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ICM_FLAGS_SLEVEL_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @ICM_FLAGS_SLEVEL_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %47 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ICM_LINK_INFO_BOOT, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %52 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ICM_LINK_INFO_REJECTED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %25
  %58 = load %struct.tb*, %struct.tb** %4, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @tb_info(%struct.tb* %58, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %165

61:                                               ; preds = %25
  %62 = load %struct.tb*, %struct.tb** %4, align 8
  %63 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %64 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %63, i32 0, i32 3
  %65 = call %struct.tb_switch* @tb_switch_find_by_uuid(%struct.tb* %62, i32* %64)
  store %struct.tb_switch* %65, %struct.tb_switch** %9, align 8
  %66 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %67 = icmp ne %struct.tb_switch* %66, null
  br i1 %67, label %68, label %104

68:                                               ; preds = %61
  %69 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %70 = call i64 @tb_route(%struct.tb_switch* %69)
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %75 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %73
  %84 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %85 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.tb_switch* @tb_to_switch(i32 %87)
  store %struct.tb_switch* %88, %struct.tb_switch** %10, align 8
  %89 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %90 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %93 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @update_switch(%struct.tb_switch* %89, %struct.tb_switch* %90, i64 %91, i32 %94, i32 0, i32 0, i32 0, i32 %95)
  %97 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %98 = call i32 @tb_switch_put(%struct.tb_switch* %97)
  br label %165

99:                                               ; preds = %73, %68
  %100 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %101 = call i32 @remove_switch(%struct.tb_switch* %100)
  %102 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %103 = call i32 @tb_switch_put(%struct.tb_switch* %102)
  br label %104

104:                                              ; preds = %99, %61
  %105 = load %struct.tb*, %struct.tb** %4, align 8
  %106 = load i64, i64* %14, align 8
  %107 = call %struct.tb_switch* @tb_switch_find_by_route(%struct.tb* %105, i64 %106)
  store %struct.tb_switch* %107, %struct.tb_switch** %9, align 8
  %108 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %109 = icmp ne %struct.tb_switch* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %112 = call i32 @remove_switch(%struct.tb_switch* %111)
  %113 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %114 = call i32 @tb_switch_put(%struct.tb_switch* %113)
  br label %115

115:                                              ; preds = %110, %104
  %116 = load %struct.tb*, %struct.tb** %4, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb* %116, i64 %117)
  store %struct.tb_xdomain* %118, %struct.tb_xdomain** %11, align 8
  %119 = load %struct.tb_xdomain*, %struct.tb_xdomain** %11, align 8
  %120 = icmp ne %struct.tb_xdomain* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.tb_xdomain*, %struct.tb_xdomain** %11, align 8
  %123 = call i32 @remove_xdomain(%struct.tb_xdomain* %122)
  %124 = load %struct.tb_xdomain*, %struct.tb_xdomain** %11, align 8
  %125 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %124)
  br label %126

126:                                              ; preds = %121, %115
  %127 = load %struct.tb*, %struct.tb** %4, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i64 @get_parent_route(i64 %128)
  %130 = call %struct.tb_switch* @tb_switch_find_by_route(%struct.tb* %127, i64 %129)
  store %struct.tb_switch* %130, %struct.tb_switch** %10, align 8
  %131 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %132 = icmp ne %struct.tb_switch* %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load %struct.tb*, %struct.tb** %4, align 8
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @tb_err(%struct.tb* %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  br label %165

137:                                              ; preds = %126
  %138 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %141 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %140, i32 0, i32 3
  %142 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %143 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.icm_tr_event_device_connected*, %struct.icm_tr_event_device_connected** %7, align 8
  %147 = getelementptr inbounds %struct.icm_tr_event_device_connected, %struct.icm_tr_event_device_connected* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call %struct.tb_switch* @add_switch(%struct.tb_switch* %138, i64 %139, i32* %141, i32* %145, i32 8, i32 %148, i32 0, i32 0, i32 0, i32 %149, i32 %150, i32 %151)
  store %struct.tb_switch* %152, %struct.tb_switch** %9, align 8
  %153 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %154 = call i32 @IS_ERR(%struct.tb_switch* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %137
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %161 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %156, %137
  %163 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %164 = call i32 @tb_switch_put(%struct.tb_switch* %163)
  br label %165

165:                                              ; preds = %162, %133, %83, %57, %24
  ret void
}

declare dso_local i32 @icm_postpone_rescan(%struct.tb*) #1

declare dso_local i64 @get_route(i32, i32) #1

declare dso_local i32 @tb_info(%struct.tb*, i8*, i64) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_uuid(%struct.tb*, i32*) #1

declare dso_local i64 @tb_route(%struct.tb_switch*) #1

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

declare dso_local i32 @update_switch(%struct.tb_switch*, %struct.tb_switch*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tb_switch_put(%struct.tb_switch*) #1

declare dso_local i32 @remove_switch(%struct.tb_switch*) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_route(%struct.tb*, i64) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb*, i64) #1

declare dso_local i32 @remove_xdomain(%struct.tb_xdomain*) #1

declare dso_local i32 @tb_xdomain_put(%struct.tb_xdomain*) #1

declare dso_local i64 @get_parent_route(i64) #1

declare dso_local i32 @tb_err(%struct.tb*, i8*, i64) #1

declare dso_local %struct.tb_switch* @add_switch(%struct.tb_switch*, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
