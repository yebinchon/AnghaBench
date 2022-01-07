; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_send_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_send_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"dsi_vc_send_short(ch%d, dt %#x, b1 %#x, b2 %#x)\0A\00", align 1
@DSI_VC_SOURCE_L4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR FIFO FULL, aborting transfer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, i32, i32, i32)* @dsi_vc_send_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_send_short(%struct.platform_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsi_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %16 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %15)
  store %struct.dsi_data* %16, %struct.dsi_data** %12, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %18 = call i32 @dsi_bus_is_locked(%struct.platform_device* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 255
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = call i32 @DSSDBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %5
  %37 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DSI_VC_SOURCE_L4, align 4
  %40 = call i32 @dsi_vc_config_source(%struct.platform_device* %37, i32 %38, i32 %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DSI_VC_CTRL(i32 %42)
  %44 = call i32 @dsi_read_reg(%struct.platform_device* %41, i32 %43)
  %45 = call i64 @FLD_GET(i32 %44, i32 16, i32 16)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = call i32 @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %76

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %54 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 6
  %62 = or i32 %52, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 %63, 0
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %64, %66
  %68 = load i32, i32* %11, align 4
  %69 = shl i32 %68, 24
  %70 = or i32 %67, %69
  store i32 %70, i32* %13, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %72)
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @dsi_write_reg(%struct.platform_device* %71, i32 %73, i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %51, %47
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_vc_config_source(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSI_VC_SHORT_PACKET_HEADER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
