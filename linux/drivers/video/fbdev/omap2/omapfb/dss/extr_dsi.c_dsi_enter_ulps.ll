; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_enter_ulps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_enter_ulps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Entering ULPS\00", align 1
@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@DSI_COMPLEXIO_CFG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"HS busy when enabling ULPS\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"LP busy when enabling ULPS\0A\00", align 1
@dsi_completion_handler = common dso_local global i32 0, align 4
@DSI_CIO_IRQ_ULPSACTIVENOT_ALL0 = common dso_local global i32 0, align 4
@DSI_LANE_UNUSED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"ULPS enable timeout\0A\00", align 1
@DSI_COMPLEXIO_POWER_ULPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_enter_ulps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_enter_ulps(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %4, align 8
  %10 = load i32, i32* @completion, align 4
  %11 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %10)
  %12 = call i32 @DSSDBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @dsi_bus_is_locked(%struct.platform_device* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %152

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @DSI_CLK_CTRL, align 4
  %31 = call i64 @REG_GET(%struct.platform_device* %29, i32 %30, i32 13, i32 13)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @dsi_if_enable(%struct.platform_device* %34, i32 0)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @DSI_CLK_CTRL, align 4
  %38 = call i32 @REG_FLD_MOD(%struct.platform_device* %36, i32 %37, i32 0, i32 13, i32 13)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @dsi_if_enable(%struct.platform_device* %39, i32 1)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i32 @dsi_sync_vc(%struct.platform_device* %42, i32 0)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @dsi_sync_vc(%struct.platform_device* %44, i32 1)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i32 @dsi_sync_vc(%struct.platform_device* %46, i32 2)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i32 @dsi_sync_vc(%struct.platform_device* %48, i32 3)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @dsi_force_tx_stop_mode_io(%struct.platform_device* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i32 @dsi_vc_enable(%struct.platform_device* %52, i32 0, i32 0)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @dsi_vc_enable(%struct.platform_device* %54, i32 1, i32 0)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call i32 @dsi_vc_enable(%struct.platform_device* %56, i32 2, i32 0)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @dsi_vc_enable(%struct.platform_device* %58, i32 3, i32 0)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %62 = call i64 @REG_GET(%struct.platform_device* %60, i32 %61, i32 16, i32 16)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %41
  %65 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %152

68:                                               ; preds = %41
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %71 = call i64 @REG_GET(%struct.platform_device* %69, i32 %70, i32 17, i32 17)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %152

77:                                               ; preds = %68
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load i32, i32* @dsi_completion_handler, align 4
  %80 = load i32, i32* @DSI_CIO_IRQ_ULPSACTIVENOT_ALL0, align 4
  %81 = call i32 @dsi_register_isr_cio(%struct.platform_device* %78, i32 %79, i32* @completion, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %152

86:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %110, %86
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %90 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %95 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DSI_LANE_UNUSED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %110

105:                                              ; preds = %93
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 1, %106
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %104
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %87

113:                                              ; preds = %87
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @REG_FLD_MOD(%struct.platform_device* %114, i32 %115, i32 %116, i32 9, i32 5)
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %120 = call i32 @dsi_read_reg(%struct.platform_device* %118, i32 %119)
  %121 = call i32 @msecs_to_jiffies(i32 1000)
  %122 = call i64 @wait_for_completion_timeout(i32* @completion, i32 %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = call i32 @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %146

128:                                              ; preds = %113
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load i32, i32* @dsi_completion_handler, align 4
  %131 = load i32, i32* @DSI_CIO_IRQ_ULPSACTIVENOT_ALL0, align 4
  %132 = call i32 @dsi_unregister_isr_cio(%struct.platform_device* %129, i32 %130, i32* @completion, i32 %131)
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %135 = call i32 @REG_FLD_MOD(%struct.platform_device* %133, i32 %134, i32 0, i32 9, i32 5)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %138 = call i32 @dsi_read_reg(%struct.platform_device* %136, i32 %137)
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load i32, i32* @DSI_COMPLEXIO_POWER_ULPS, align 4
  %141 = call i32 @dsi_cio_power(%struct.platform_device* %139, i32 %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = call i32 @dsi_if_enable(%struct.platform_device* %142, i32 0)
  %144 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %145 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  store i32 0, i32* %2, align 4
  br label %152

146:                                              ; preds = %124
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load i32, i32* @dsi_completion_handler, align 4
  %149 = load i32, i32* @DSI_CIO_IRQ_ULPSACTIVENOT_ALL0, align 4
  %150 = call i32 @dsi_unregister_isr_cio(%struct.platform_device* %147, i32 %148, i32* @completion, i32 %149)
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %146, %128, %84, %73, %64, %27
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.platform_device*) #1

declare dso_local i64 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.platform_device*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_sync_vc(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_force_tx_stop_mode_io(%struct.platform_device*) #1

declare dso_local i32 @dsi_vc_enable(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_register_isr_cio(%struct.platform_device*, i32, i32*, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dsi_unregister_isr_cio(%struct.platform_device*, i32, i32*, i32) #1

declare dso_local i32 @dsi_cio_power(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
