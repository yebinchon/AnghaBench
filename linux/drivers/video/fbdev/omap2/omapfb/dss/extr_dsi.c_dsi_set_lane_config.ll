; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_set_lane_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_set_lane_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@dsi_set_lane_config.offsets = internal constant [5 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16], align 16
@dsi_set_lane_config.functions = internal constant [5 x i32] [i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@DSI_COMPLEXIO_CFG1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_set_lane_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_set_lane_config(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %12)
  store %struct.dsi_data* %13, %struct.dsi_data** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @DSI_COMPLEXIO_CFG1, align 4
  %16 = call i32 @dsi_read_reg(%struct.platform_device* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %86, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_set_lane_config.offsets, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %50, %23
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %31 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %36 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_set_lane_config.functions, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %53

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %28

53:                                               ; preds = %48, %28
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %56 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %120

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %65 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 2
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @FLD_MOD(i32 %72, i32 %74, i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 3
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %83, 3
  %85 = call i32 @FLD_MOD(i32 %79, i32 %80, i32 %82, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %17

89:                                               ; preds = %17
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %93 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_set_lane_config.offsets, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %102, 2
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @FLD_MOD(i32 %101, i32 0, i32 %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 3
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 3
  %111 = call i32 @FLD_MOD(i32 %106, i32 0, i32 %108, i32 %110)
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %96
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %90

115:                                              ; preds = %90
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load i32, i32* @DSI_COMPLEXIO_CFG1, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @dsi_write_reg(%struct.platform_device* %116, i32 %117, i32 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %59
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
