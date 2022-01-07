; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_omap_dsi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_omap_dsi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DSI_IRQSTATUS = common dso_local global i32 0, align 4
@DSI_IRQ_CHANNEL_MASK = common dso_local global i32 0, align 4
@DSI_IRQ_COMPLEXIO_ERR = common dso_local global i32 0, align 4
@DSI_COMPLEXIO_IRQ_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DSI_IRQ_TE_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_dsi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dsi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.platform_device*
  store %struct.platform_device* %13, %struct.platform_device** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %14)
  store %struct.dsi_data* %15, %struct.dsi_data** %7, align 8
  %16 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %126

22:                                               ; preds = %2
  %23 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = load i32, i32* @DSI_IRQSTATUS, align 4
  %28 = call i32 @dsi_read_reg(%struct.platform_device* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %33 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %126

36:                                               ; preds = %22
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = load i32, i32* @DSI_IRQSTATUS, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @DSI_IRQ_CHANNEL_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @dsi_write_reg(%struct.platform_device* %37, i32 %38, i32 %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %45 = load i32, i32* @DSI_IRQSTATUS, align 4
  %46 = call i32 @dsi_read_reg(%struct.platform_device* %44, i32 %45)
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %80, %36
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %58
  store i32 0, i32* %59, align 4
  br label %80

60:                                               ; preds = %50
  %61 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @DSI_VC_IRQSTATUS(i32 %62)
  %64 = call i32 @dsi_read_reg(%struct.platform_device* %61, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @DSI_VC_IRQSTATUS(i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dsi_write_reg(%struct.platform_device* %68, i32 %70, i32 %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @DSI_VC_IRQSTATUS(i32 %77)
  %79 = call i32 @dsi_read_reg(%struct.platform_device* %76, i32 %78)
  br label %80

80:                                               ; preds = %60, %56
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %47

83:                                               ; preds = %47
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @DSI_IRQ_COMPLEXIO_ERR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %90 = load i32, i32* @DSI_COMPLEXIO_IRQ_STATUS, align 4
  %91 = call i32 @dsi_read_reg(%struct.platform_device* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %93 = load i32, i32* @DSI_COMPLEXIO_IRQ_STATUS, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @dsi_write_reg(%struct.platform_device* %92, i32 %93, i32 %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %97 = load i32, i32* @DSI_COMPLEXIO_IRQ_STATUS, align 4
  %98 = call i32 @dsi_read_reg(%struct.platform_device* %96, i32 %97)
  br label %100

99:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %88
  %101 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %102 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %101, i32 0, i32 0
  %103 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %104 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %103, i32 0, i32 2
  %105 = call i32 @memcpy(i32* %102, i32* %104, i32 4)
  %106 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %107 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %106, i32 0, i32 1
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %110 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %109, i32 0, i32 0
  %111 = load i32, i32* %8, align 4
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dsi_handle_isrs(i32* %110, i32 %111, i32* %112, i32 %113)
  %115 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @dsi_handle_irq_errors(%struct.platform_device* %115, i32 %116, i32* %117, i32 %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @dsi_collect_irq_stats(%struct.platform_device* %120, i32 %121, i32* %122, i32 %123)
  %125 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %100, %31, %20
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSI_VC_IRQSTATUS(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dsi_handle_isrs(i32*, i32, i32*, i32) #1

declare dso_local i32 @dsi_handle_irq_errors(%struct.platform_device*, i32, i32*, i32) #1

declare dso_local i32 @dsi_collect_irq_stats(%struct.platform_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
