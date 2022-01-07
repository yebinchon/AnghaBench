; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_config_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_config_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Illegal FIFO configuration\0A\00", align 1
@DSI_RX_FIFO_VC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32, i32, i32, i32)* @dsi_config_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_config_rx_fifo(%struct.platform_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dsi_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %17)
  store %struct.dsi_data* %18, %struct.dsi_data** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.dsi_data*, %struct.dsi_data** %11, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.dsi_data*, %struct.dsi_data** %11, align 8
  %27 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.dsi_data*, %struct.dsi_data** %11, align 8
  %33 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.dsi_data*, %struct.dsi_data** %11, align 8
  %39 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %77, %5
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %80

46:                                               ; preds = %43
  %47 = load %struct.dsi_data*, %struct.dsi_data** %11, align 8
  %48 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 (...) @BUG()
  br label %85

62:                                               ; preds = %46
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @FLD_VAL(i32 %63, i32 2, i32 0)
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @FLD_VAL(i32 %65, i32 7, i32 4)
  %67 = or i32 %64, %66
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 8, %69
  %71 = shl i32 %68, %70
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %43

80:                                               ; preds = %43
  %81 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %82 = load i32, i32* @DSI_RX_FIFO_VC_SIZE, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @dsi_write_reg(%struct.platform_device* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %59
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
