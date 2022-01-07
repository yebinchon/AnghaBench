; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_mem_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_mem_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_acx_config_memory = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"acx mem cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_NUM_STATIONS = common dso_local global i32 0, align 4
@MAX_TX_QUEUES = common dso_local global i32 0, align 4
@HOSTIF_PKT_RING = common dso_local global i32 0, align 4
@TRACE_BUFFER_MAX_SIZE = common dso_local global i32 0, align 4
@ACX_RX_DESC_DEF = common dso_local global i32 0, align 4
@DEFAULT_RXQ_PRIORITY = common dso_local global i32 0, align 4
@DEFAULT_RXQ_TYPE = common dso_local global i32 0, align 4
@ACX_TX_DESC_DEF = common dso_local global i32 0, align 4
@ACX_MEM_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wl1251 mem config failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_mem_cfg(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.wl1251_acx_config_memory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1251_debug(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wl1251_acx_config_memory* @kzalloc(i32 72, i32 %9)
  store %struct.wl1251_acx_config_memory* %10, %struct.wl1251_acx_config_memory** %4, align 8
  %11 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %12 = icmp ne %struct.wl1251_acx_config_memory* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %98

16:                                               ; preds = %1
  %17 = load i32, i32* @DEFAULT_NUM_STATIONS, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %20 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  store i8* %18, i8** %21, align 8
  %22 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %23 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 35, i32* %24, align 8
  %25 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %26 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 64, i32* %27, align 4
  %28 = load i32, i32* @MAX_TX_QUEUES, align 4
  %29 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %30 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @HOSTIF_PKT_RING, align 4
  %33 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %34 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  store i32 %32, i32* %35, align 8
  %36 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %37 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @TRACE_BUFFER_MAX_SIZE, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %42 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %45 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @ACX_RX_DESC_DEF, align 4
  %48 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %49 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @DEFAULT_RXQ_PRIORITY, align 4
  %52 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %53 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @DEFAULT_RXQ_TYPE, align 4
  %56 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %57 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %80, %16
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MAX_TX_QUEUES, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* @ACX_TX_DESC_DEF, align 4
  %65 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %66 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %74 = getelementptr inbounds %struct.wl1251_acx_config_memory, %struct.wl1251_acx_config_memory* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %85 = load i32, i32* @ACX_MEM_CFG, align 4
  %86 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %87 = call i32 @wl1251_cmd_configure(%struct.wl1251* %84, i32 %85, %struct.wl1251_acx_config_memory* %86, i32 72)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @wl1251_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %94

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %90
  %95 = load %struct.wl1251_acx_config_memory*, %struct.wl1251_acx_config_memory** %4, align 8
  %96 = call i32 @kfree(%struct.wl1251_acx_config_memory* %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.wl1251_acx_config_memory* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.wl1251_acx_config_memory*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_acx_config_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
