; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_alloc_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_alloc_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { %struct.tb_path**, %struct.tb_port*, %struct.tb_port*, i32, i32 }
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_tunnel* @tb_tunnel_alloc_dp(%struct.tb* %0, %struct.tb_port* %1, %struct.tb_port* %2) #0 {
  %4 = alloca %struct.tb_tunnel*, align 8
  %5 = alloca %struct.tb*, align 8
  %6 = alloca %struct.tb_port*, align 8
  %7 = alloca %struct.tb_port*, align 8
  %8 = alloca %struct.tb_tunnel*, align 8
  %9 = alloca %struct.tb_path**, align 8
  %10 = alloca %struct.tb_path*, align 8
  store %struct.tb* %0, %struct.tb** %5, align 8
  store %struct.tb_port* %1, %struct.tb_port** %6, align 8
  store %struct.tb_port* %2, %struct.tb_port** %7, align 8
  %11 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %12 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %17 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ true, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %4, align 8
  br label %102

27:                                               ; preds = %21
  %28 = load %struct.tb*, %struct.tb** %5, align 8
  %29 = load i32, i32* @TB_TUNNEL_DP, align 4
  %30 = call %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb* %28, i32 3, i32 %29)
  store %struct.tb_tunnel* %30, %struct.tb_tunnel** %8, align 8
  %31 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %32 = icmp ne %struct.tb_tunnel* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %4, align 8
  br label %102

34:                                               ; preds = %27
  %35 = load i32, i32* @tb_dp_xchg_caps, align 4
  %36 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %37 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @tb_dp_activate, align 4
  %39 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %40 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %42 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %43 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %42, i32 0, i32 2
  store %struct.tb_port* %41, %struct.tb_port** %43, align 8
  %44 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %45 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %46 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %45, i32 0, i32 1
  store %struct.tb_port* %44, %struct.tb_port** %46, align 8
  %47 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %48 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %47, i32 0, i32 0
  %49 = load %struct.tb_path**, %struct.tb_path*** %48, align 8
  store %struct.tb_path** %49, %struct.tb_path*** %9, align 8
  %50 = load %struct.tb*, %struct.tb** %5, align 8
  %51 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %52 = load i32, i32* @TB_DP_VIDEO_HOPID, align 4
  %53 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %54 = load i32, i32* @TB_DP_VIDEO_HOPID, align 4
  %55 = call %struct.tb_path* @tb_path_alloc(%struct.tb* %50, %struct.tb_port* %51, i32 %52, %struct.tb_port* %53, i32 %54, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.tb_path* %55, %struct.tb_path** %10, align 8
  %56 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %57 = icmp ne %struct.tb_path* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %34
  br label %99

59:                                               ; preds = %34
  %60 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %61 = call i32 @tb_dp_init_video_path(%struct.tb_path* %60, i32 0)
  %62 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %63 = load %struct.tb_path**, %struct.tb_path*** %9, align 8
  %64 = load i64, i64* @TB_DP_VIDEO_PATH_OUT, align 8
  %65 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %63, i64 %64
  store %struct.tb_path* %62, %struct.tb_path** %65, align 8
  %66 = load %struct.tb*, %struct.tb** %5, align 8
  %67 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %68 = load i32, i32* @TB_DP_AUX_TX_HOPID, align 4
  %69 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %70 = load i32, i32* @TB_DP_AUX_TX_HOPID, align 4
  %71 = call %struct.tb_path* @tb_path_alloc(%struct.tb* %66, %struct.tb_port* %67, i32 %68, %struct.tb_port* %69, i32 %70, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tb_path* %71, %struct.tb_path** %10, align 8
  %72 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %73 = icmp ne %struct.tb_path* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %59
  br label %99

75:                                               ; preds = %59
  %76 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %77 = call i32 @tb_dp_init_aux_path(%struct.tb_path* %76)
  %78 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %79 = load %struct.tb_path**, %struct.tb_path*** %9, align 8
  %80 = load i64, i64* @TB_DP_AUX_PATH_OUT, align 8
  %81 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %79, i64 %80
  store %struct.tb_path* %78, %struct.tb_path** %81, align 8
  %82 = load %struct.tb*, %struct.tb** %5, align 8
  %83 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %84 = load i32, i32* @TB_DP_AUX_RX_HOPID, align 4
  %85 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %86 = load i32, i32* @TB_DP_AUX_RX_HOPID, align 4
  %87 = call %struct.tb_path* @tb_path_alloc(%struct.tb* %82, %struct.tb_port* %83, i32 %84, %struct.tb_port* %85, i32 %86, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.tb_path* %87, %struct.tb_path** %10, align 8
  %88 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %89 = icmp ne %struct.tb_path* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %75
  br label %99

91:                                               ; preds = %75
  %92 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %93 = call i32 @tb_dp_init_aux_path(%struct.tb_path* %92)
  %94 = load %struct.tb_path*, %struct.tb_path** %10, align 8
  %95 = load %struct.tb_path**, %struct.tb_path*** %9, align 8
  %96 = load i64, i64* @TB_DP_AUX_PATH_IN, align 8
  %97 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %95, i64 %96
  store %struct.tb_path* %94, %struct.tb_path** %97, align 8
  %98 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  store %struct.tb_tunnel* %98, %struct.tb_tunnel** %4, align 8
  br label %102

99:                                               ; preds = %90, %74, %58
  %100 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %101 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %100)
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %4, align 8
  br label %102

102:                                              ; preds = %99, %91, %33, %26
  %103 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  ret %struct.tb_tunnel* %103
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb*, i32, i32) #1

declare dso_local %struct.tb_path* @tb_path_alloc(%struct.tb*, %struct.tb_port*, i32, %struct.tb_port*, i32, i32, i8*) #1

declare dso_local i32 @tb_dp_init_video_path(%struct.tb_path*, i32) #1

declare dso_local i32 @tb_dp_init_aux_path(%struct.tb_path*) #1

declare dso_local i32 @tb_tunnel_free(%struct.tb_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
