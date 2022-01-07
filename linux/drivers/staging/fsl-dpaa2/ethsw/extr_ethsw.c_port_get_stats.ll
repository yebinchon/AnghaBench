; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64 }
%struct.ethsw_port_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DPSW_CNT_ING_FRAME = common dso_local global i32 0, align 4
@DPSW_CNT_EGR_FRAME = common dso_local global i32 0, align 4
@DPSW_CNT_ING_BYTE = common dso_local global i32 0, align 4
@DPSW_CNT_EGR_BYTE = common dso_local global i32 0, align 4
@DPSW_CNT_ING_FRAME_DISCARD = common dso_local global i32 0, align 4
@DPSW_CNT_ING_FLTR_FRAME = common dso_local global i32 0, align 4
@DPSW_CNT_EGR_FRAME_DISCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dpsw_if_get_counter err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @port_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ethsw_port_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ethsw_port_priv* %9, %struct.ethsw_port_priv** %5, align 8
  %10 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %21 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DPSW_CNT_ING_FRAME, align 4
  %24 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %24, i32 0, i32 5
  %26 = call i32 @dpsw_if_get_counter(i32 %14, i32 0, i32 %19, i32 %22, i32 %23, i64* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %160

30:                                               ; preds = %2
  %31 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %37 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DPSW_CNT_EGR_FRAME, align 4
  %45 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %46 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %45, i32 0, i32 4
  %47 = call i32 @dpsw_if_get_counter(i32 %35, i32 0, i32 %40, i32 %43, i32 %44, i64* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %160

51:                                               ; preds = %30
  %52 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %58 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %63 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DPSW_CNT_ING_BYTE, align 4
  %66 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %67 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %66, i32 0, i32 3
  %68 = call i32 @dpsw_if_get_counter(i32 %56, i32 0, i32 %61, i32 %64, i32 %65, i64* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %160

72:                                               ; preds = %51
  %73 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %84 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DPSW_CNT_EGR_BYTE, align 4
  %87 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %88 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %87, i32 0, i32 2
  %89 = call i32 @dpsw_if_get_counter(i32 %77, i32 0, i32 %82, i32 %85, i32 %86, i64* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %160

93:                                               ; preds = %72
  %94 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %95 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %100 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %105 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DPSW_CNT_ING_FRAME_DISCARD, align 4
  %108 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %109 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %108, i32 0, i32 1
  %110 = call i32 @dpsw_if_get_counter(i32 %98, i32 0, i32 %103, i32 %106, i32 %107, i64* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %93
  br label %160

114:                                              ; preds = %93
  %115 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %116 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %121 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %126 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DPSW_CNT_ING_FLTR_FRAME, align 4
  %129 = call i32 @dpsw_if_get_counter(i32 %119, i32 0, i32 %124, i32 %127, i32 %128, i64* %6)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %114
  br label %160

133:                                              ; preds = %114
  %134 = load i64, i64* %6, align 8
  %135 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %136 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %140 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %145 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %150 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DPSW_CNT_EGR_FRAME_DISCARD, align 4
  %153 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %154 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %153, i32 0, i32 0
  %155 = call i32 @dpsw_if_get_counter(i32 %143, i32 0, i32 %148, i32 %151, i32 %152, i64* %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %133
  br label %160

159:                                              ; preds = %133
  br label %164

160:                                              ; preds = %158, %132, %113, %92, %71, %50, %29
  %161 = load %struct.net_device*, %struct.net_device** %3, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @netdev_err(%struct.net_device* %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %160, %159
  ret void
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpsw_if_get_counter(i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
