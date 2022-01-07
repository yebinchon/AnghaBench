; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_discover_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_discover_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { %struct.tb_port*, %struct.tb_port*, %struct.tb_path**, i32, i32 }
%struct.tb_path = type { i32 }
%struct.tb = type { i32 }
%struct.tb_port = type { i32 }

@TB_TUNNEL_DP = common dso_local global i32 0, align 4
@tb_dp_xchg_caps = common dso_local global i32 0, align 4
@tb_dp_activate = common dso_local global i32 0, align 4
@TB_DP_VIDEO_HOPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@TB_DP_VIDEO_PATH_OUT = common dso_local global i64 0, align 8
@TB_DP_AUX_TX_HOPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"AUX TX\00", align 1
@TB_DP_AUX_PATH_OUT = common dso_local global i64 0, align 8
@TB_DP_AUX_RX_HOPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"AUX RX\00", align 1
@TB_DP_AUX_PATH_IN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"path does not end on a DP adapter, cleaning up\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"path is not complete, cleaning up\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"discovered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_tunnel* @tb_tunnel_discover_dp(%struct.tb* %0, %struct.tb_port* %1) #0 {
  %3 = alloca %struct.tb_tunnel*, align 8
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca %struct.tb_tunnel*, align 8
  %7 = alloca %struct.tb_port*, align 8
  %8 = alloca %struct.tb_path*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_port* %1, %struct.tb_port** %5, align 8
  %9 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %10 = call i32 @tb_dp_port_is_enabled(%struct.tb_port* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %3, align 8
  br label %138

13:                                               ; preds = %2
  %14 = load %struct.tb*, %struct.tb** %4, align 8
  %15 = load i32, i32* @TB_TUNNEL_DP, align 4
  %16 = call %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb* %14, i32 3, i32 %15)
  store %struct.tb_tunnel* %16, %struct.tb_tunnel** %6, align 8
  %17 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %18 = icmp ne %struct.tb_tunnel* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %3, align 8
  br label %138

20:                                               ; preds = %13
  %21 = load i32, i32* @tb_dp_xchg_caps, align 4
  %22 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %23 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @tb_dp_activate, align 4
  %25 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %26 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %28 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %29 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %28, i32 0, i32 0
  store %struct.tb_port* %27, %struct.tb_port** %29, align 8
  %30 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %31 = load i32, i32* @TB_DP_VIDEO_HOPID, align 4
  %32 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %33 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %32, i32 0, i32 1
  %34 = call %struct.tb_path* @tb_path_discover(%struct.tb_port* %30, i32 %31, %struct.tb_port* null, i32 -1, %struct.tb_port** %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.tb_path* %34, %struct.tb_path** %8, align 8
  %35 = load %struct.tb_path*, %struct.tb_path** %8, align 8
  %36 = icmp ne %struct.tb_path* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %39 = call i32 @tb_dp_port_enable(%struct.tb_port* %38, i32 0)
  br label %135

40:                                               ; preds = %20
  %41 = load %struct.tb_path*, %struct.tb_path** %8, align 8
  %42 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %43 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %42, i32 0, i32 2
  %44 = load %struct.tb_path**, %struct.tb_path*** %43, align 8
  %45 = load i64, i64* @TB_DP_VIDEO_PATH_OUT, align 8
  %46 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %44, i64 %45
  store %struct.tb_path* %41, %struct.tb_path** %46, align 8
  %47 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %48 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %47, i32 0, i32 2
  %49 = load %struct.tb_path**, %struct.tb_path*** %48, align 8
  %50 = load i64, i64* @TB_DP_VIDEO_PATH_OUT, align 8
  %51 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %49, i64 %50
  %52 = load %struct.tb_path*, %struct.tb_path** %51, align 8
  %53 = call i32 @tb_dp_init_video_path(%struct.tb_path* %52, i32 1)
  %54 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %55 = load i32, i32* @TB_DP_AUX_TX_HOPID, align 4
  %56 = call %struct.tb_path* @tb_path_discover(%struct.tb_port* %54, i32 %55, %struct.tb_port* null, i32 -1, %struct.tb_port** null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tb_path* %56, %struct.tb_path** %8, align 8
  %57 = load %struct.tb_path*, %struct.tb_path** %8, align 8
  %58 = icmp ne %struct.tb_path* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %40
  br label %132

60:                                               ; preds = %40
  %61 = load %struct.tb_path*, %struct.tb_path** %8, align 8
  %62 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %63 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %62, i32 0, i32 2
  %64 = load %struct.tb_path**, %struct.tb_path*** %63, align 8
  %65 = load i64, i64* @TB_DP_AUX_PATH_OUT, align 8
  %66 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %64, i64 %65
  store %struct.tb_path* %61, %struct.tb_path** %66, align 8
  %67 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %68 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %67, i32 0, i32 2
  %69 = load %struct.tb_path**, %struct.tb_path*** %68, align 8
  %70 = load i64, i64* @TB_DP_AUX_PATH_OUT, align 8
  %71 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %69, i64 %70
  %72 = load %struct.tb_path*, %struct.tb_path** %71, align 8
  %73 = call i32 @tb_dp_init_aux_path(%struct.tb_path* %72)
  %74 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %75 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %74, i32 0, i32 1
  %76 = load %struct.tb_port*, %struct.tb_port** %75, align 8
  %77 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %78 = load i32, i32* @TB_DP_AUX_RX_HOPID, align 4
  %79 = call %struct.tb_path* @tb_path_discover(%struct.tb_port* %76, i32 -1, %struct.tb_port* %77, i32 %78, %struct.tb_port** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.tb_path* %79, %struct.tb_path** %8, align 8
  %80 = load %struct.tb_path*, %struct.tb_path** %8, align 8
  %81 = icmp ne %struct.tb_path* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %60
  br label %132

83:                                               ; preds = %60
  %84 = load %struct.tb_path*, %struct.tb_path** %8, align 8
  %85 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %86 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %85, i32 0, i32 2
  %87 = load %struct.tb_path**, %struct.tb_path*** %86, align 8
  %88 = load i64, i64* @TB_DP_AUX_PATH_IN, align 8
  %89 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %87, i64 %88
  store %struct.tb_path* %84, %struct.tb_path** %89, align 8
  %90 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %91 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %90, i32 0, i32 2
  %92 = load %struct.tb_path**, %struct.tb_path*** %91, align 8
  %93 = load i64, i64* @TB_DP_AUX_PATH_IN, align 8
  %94 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %92, i64 %93
  %95 = load %struct.tb_path*, %struct.tb_path** %94, align 8
  %96 = call i32 @tb_dp_init_aux_path(%struct.tb_path* %95)
  %97 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %98 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %97, i32 0, i32 1
  %99 = load %struct.tb_port*, %struct.tb_port** %98, align 8
  %100 = call i32 @tb_port_is_dpout(%struct.tb_port* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %83
  %103 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %104 = call i32 @tb_port_warn(%struct.tb_port* %103, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %132

105:                                              ; preds = %83
  %106 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %107 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %106, i32 0, i32 1
  %108 = load %struct.tb_port*, %struct.tb_port** %107, align 8
  %109 = call i32 @tb_dp_port_is_enabled(%struct.tb_port* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %132

112:                                              ; preds = %105
  %113 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %114 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %113, i32 0, i32 1
  %115 = load %struct.tb_port*, %struct.tb_port** %114, align 8
  %116 = call i32 @tb_dp_port_hpd_is_active(%struct.tb_port* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %132

119:                                              ; preds = %112
  %120 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %121 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %122 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %121, i32 0, i32 0
  %123 = load %struct.tb_port*, %struct.tb_port** %122, align 8
  %124 = icmp ne %struct.tb_port* %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %127 = call i32 @tb_tunnel_warn(%struct.tb_tunnel* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %132

128:                                              ; preds = %119
  %129 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %130 = call i32 @tb_tunnel_dbg(%struct.tb_tunnel* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  store %struct.tb_tunnel* %131, %struct.tb_tunnel** %3, align 8
  br label %138

132:                                              ; preds = %125, %118, %111, %102, %82, %59
  %133 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %134 = call i32 @tb_tunnel_deactivate(%struct.tb_tunnel* %133)
  br label %135

135:                                              ; preds = %132, %37
  %136 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %137 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %136)
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %3, align 8
  br label %138

138:                                              ; preds = %135, %128, %19, %12
  %139 = load %struct.tb_tunnel*, %struct.tb_tunnel** %3, align 8
  ret %struct.tb_tunnel* %139
}

declare dso_local i32 @tb_dp_port_is_enabled(%struct.tb_port*) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb*, i32, i32) #1

declare dso_local %struct.tb_path* @tb_path_discover(%struct.tb_port*, i32, %struct.tb_port*, i32, %struct.tb_port**, i8*) #1

declare dso_local i32 @tb_dp_port_enable(%struct.tb_port*, i32) #1

declare dso_local i32 @tb_dp_init_video_path(%struct.tb_path*, i32) #1

declare dso_local i32 @tb_dp_init_aux_path(%struct.tb_path*) #1

declare dso_local i32 @tb_port_is_dpout(%struct.tb_port*) #1

declare dso_local i32 @tb_port_warn(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_dp_port_hpd_is_active(%struct.tb_port*) #1

declare dso_local i32 @tb_tunnel_warn(%struct.tb_tunnel*, i8*) #1

declare dso_local i32 @tb_tunnel_dbg(%struct.tb_tunnel*, i8*) #1

declare dso_local i32 @tb_tunnel_deactivate(%struct.tb_tunnel*) #1

declare dso_local i32 @tb_tunnel_free(%struct.tb_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
