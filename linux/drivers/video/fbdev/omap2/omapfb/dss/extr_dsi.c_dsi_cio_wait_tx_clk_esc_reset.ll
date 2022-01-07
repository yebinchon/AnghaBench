; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_wait_tx_clk_esc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_wait_tx_clk_esc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DSI_MAX_NR_LANES = common dso_local global i32 0, align 4
@dsi_cio_wait_tx_clk_esc_reset.offsets_old = internal constant [3 x i32] [i32 28, i32 27, i32 26], align 4
@dsi_cio_wait_tx_clk_esc_reset.offsets_new = internal constant [5 x i32] [i32 24, i32 25, i32 26, i32 27, i32 28], align 16
@FEAT_DSI_REVERSE_TXCLKESC = common dso_local global i32 0, align 4
@DSI_LANE_UNUSED = common dso_local global i64 0, align 8
@DSI_DSIPHY_CFG5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"CIO TXCLKESC%d domain not coming out of reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_cio_wait_tx_clk_esc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cio_wait_tx_clk_esc_reset(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %13)
  store %struct.dsi_data* %14, %struct.dsi_data** %4, align 8
  %15 = load i32, i32* @DSI_MAX_NR_LANES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @FEAT_DSI_REVERSE_TXCLKESC, align 4
  %20 = call i64 @dss_has_feature(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dsi_cio_wait_tx_clk_esc_reset.offsets_old, i64 0, i64 0), i32** %9, align 8
  br label %24

23:                                               ; preds = %1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @dsi_cio_wait_tx_clk_esc_reset.offsets_new, i64 0, i64 0), i32** %9, align 8
  br label %24

24:                                               ; preds = %23, %22
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %28 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %33 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DSI_LANE_UNUSED, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %18, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %25

49:                                               ; preds = %25
  store i32 100000, i32* %5, align 4
  br label %50

50:                                               ; preds = %128, %49
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @DSI_DSIPHY_CFG5, align 4
  %54 = call i32 @dsi_read_reg(%struct.platform_device* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %81, %51
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %58 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %18, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %68, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67, %61
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %55

84:                                               ; preds = %55
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %87 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %129

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %5, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %128

95:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %122, %95
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %99 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %18, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %109, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108, %102
  br label %122

119:                                              ; preds = %108
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %119, %118
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %96

125:                                              ; preds = %96
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %130

128:                                              ; preds = %91
  br label %50

129:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %125
  %131 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
