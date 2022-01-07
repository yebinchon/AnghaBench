; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CDNS_MCP_INTSTAT = common dso_local global i32 0, align 4
@CDNS_MCP_INT_IRQ = common dso_local global i32 0, align 4
@CDNS_MCP_INT_RX_WL = common dso_local global i32 0, align 4
@CDNS_MCP_INT_PARITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Parity error\0A\00", align 1
@CDNS_MCP_INT_CTRL_CLASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Bus clash for control word\0A\00", align 1
@CDNS_MCP_INT_DATA_CLASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Bus clash for data word\0A\00", align 1
@CDNS_MCP_INT_SLAVE_MASK = common dso_local global i32 0, align 4
@CDNS_MCP_INTMASK = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_cdns_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sdw_cdns*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sdw_cdns*
  store %struct.sdw_cdns* %10, %struct.sdw_cdns** %6, align 8
  %11 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %13 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %116

18:                                               ; preds = %2
  %19 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %20 = load i32, i32* @CDNS_MCP_INTSTAT, align 4
  %21 = call i32 @cdns_readl(%struct.sdw_cdns* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CDNS_MCP_INT_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %116

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CDNS_MCP_INT_RX_WL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %35 = call i32 @cdns_read_response(%struct.sdw_cdns* %34)
  %36 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %37 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %42 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %43 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %48 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cdns_fill_msg_resp(%struct.sdw_cdns* %41, i32 %46, i32 %51, i32 0)
  %53 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %54 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @complete(i32* %56)
  %58 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %59 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %58, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %59, align 8
  br label %64

60:                                               ; preds = %33
  %61 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %62 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %61, i32 0, i32 1
  %63 = call i32 @complete(i32* %62)
  br label %64

64:                                               ; preds = %60, %40
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CDNS_MCP_INT_PARITY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %72 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err_ratelimited(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @CDNS_MCP_INT_CTRL_CLASH, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %82 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err_ratelimited(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @CDNS_MCP_INT_DATA_CLASH, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %92 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err_ratelimited(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @CDNS_MCP_INT_SLAVE_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %102 = load i32, i32* @CDNS_MCP_INTMASK, align 4
  %103 = load i32, i32* @CDNS_MCP_INT_SLAVE_MASK, align 4
  %104 = call i32 @cdns_updatel(%struct.sdw_cdns* %101, i32 %102, i32 %103, i32 0)
  %105 = load i32, i32* @CDNS_MCP_INT_SLAVE_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %100, %95
  %111 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %112 = load i32, i32* @CDNS_MCP_INTSTAT, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @cdns_writel(%struct.sdw_cdns* %111, i32 %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %26, %16
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @cdns_readl(%struct.sdw_cdns*, i32) #1

declare dso_local i32 @cdns_read_response(%struct.sdw_cdns*) #1

declare dso_local i32 @cdns_fill_msg_resp(%struct.sdw_cdns*, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @cdns_updatel(%struct.sdw_cdns*, i32, i32, i32) #1

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
