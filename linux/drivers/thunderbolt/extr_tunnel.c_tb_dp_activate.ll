; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_dp_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_dp_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { i32, i32, %struct.tb_path** }
%struct.tb_path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TB_DP_VIDEO_PATH_OUT = common dso_local global i64 0, align 8
@TB_DP_AUX_PATH_OUT = common dso_local global i64 0, align 8
@TB_DP_AUX_PATH_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_tunnel*, i32)* @tb_dp_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_dp_activate(%struct.tb_tunnel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_tunnel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb_path**, align 8
  %8 = alloca i32, align 4
  store %struct.tb_tunnel* %0, %struct.tb_tunnel** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %90

11:                                               ; preds = %2
  %12 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %13 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %12, i32 0, i32 2
  %14 = load %struct.tb_path**, %struct.tb_path*** %13, align 8
  store %struct.tb_path** %14, %struct.tb_path*** %7, align 8
  %15 = load %struct.tb_path**, %struct.tb_path*** %7, align 8
  %16 = load i64, i64* @TB_DP_VIDEO_PATH_OUT, align 8
  %17 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %15, i64 %16
  %18 = load %struct.tb_path*, %struct.tb_path** %17, align 8
  %19 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %23 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tb_path**, %struct.tb_path*** %7, align 8
  %26 = load i64, i64* @TB_DP_VIDEO_PATH_OUT, align 8
  %27 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %25, i64 %26
  %28 = load %struct.tb_path*, %struct.tb_path** %27, align 8
  %29 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tb_path**, %struct.tb_path*** %7, align 8
  %35 = load i64, i64* @TB_DP_AUX_PATH_OUT, align 8
  %36 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %34, i64 %35
  %37 = load %struct.tb_path*, %struct.tb_path** %36, align 8
  %38 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tb_path**, %struct.tb_path*** %7, align 8
  %44 = load i64, i64* @TB_DP_AUX_PATH_IN, align 8
  %45 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %43, i64 %44
  %46 = load %struct.tb_path*, %struct.tb_path** %45, align 8
  %47 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tb_dp_port_set_hops(i32 %24, i32 %33, i32 %42, i32 %53)
  %55 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %56 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tb_path**, %struct.tb_path*** %7, align 8
  %59 = load i64, i64* @TB_DP_VIDEO_PATH_OUT, align 8
  %60 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %58, i64 %59
  %61 = load %struct.tb_path*, %struct.tb_path** %60, align 8
  %62 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tb_path**, %struct.tb_path*** %7, align 8
  %70 = load i64, i64* @TB_DP_AUX_PATH_IN, align 8
  %71 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %69, i64 %70
  %72 = load %struct.tb_path*, %struct.tb_path** %71, align 8
  %73 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tb_path**, %struct.tb_path*** %7, align 8
  %79 = load i64, i64* @TB_DP_AUX_PATH_OUT, align 8
  %80 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %78, i64 %79
  %81 = load %struct.tb_path*, %struct.tb_path** %80, align 8
  %82 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @tb_dp_port_set_hops(i32 %57, i32 %68, i32 %77, i32 %88)
  br label %110

90:                                               ; preds = %2
  %91 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %92 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @tb_dp_port_hpd_clear(i32 %93)
  %95 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %96 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @tb_dp_port_set_hops(i32 %97, i32 0, i32 0, i32 0)
  %99 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %100 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @tb_port_is_dpout(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %90
  %105 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %106 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @tb_dp_port_set_hops(i32 %107, i32 0, i32 0, i32 0)
  br label %109

109:                                              ; preds = %104, %90
  br label %110

110:                                              ; preds = %109, %11
  %111 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %112 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @tb_dp_port_enable(i32 %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %133

120:                                              ; preds = %110
  %121 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %122 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @tb_port_is_dpout(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %128 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @tb_dp_port_enable(i32 %129, i32 %130)
  store i32 %131, i32* %3, align 4
  br label %133

132:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %126, %118
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @tb_dp_port_set_hops(i32, i32, i32, i32) #1

declare dso_local i32 @tb_dp_port_hpd_clear(i32) #1

declare dso_local i64 @tb_port_is_dpout(i32) #1

declare dso_local i32 @tb_dp_port_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
