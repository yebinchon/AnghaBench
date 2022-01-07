; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c__cdns_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c__cdns_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32, i32, i32 }
%struct.sdw_msg = type { i32, i64, i32*, i32, i64, i32 }

@CDNS_MCP_FIFOLEVEL = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_BASE = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_DEV_ADDR = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_COMMAND = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_REG_ADDR_L = common dso_local global i32 0, align 4
@SDW_MSG_FLAG_WRITE = common dso_local global i64 0, align 8
@CDNS_MCP_CMD_SSP_TAG = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_WORD_LEN = common dso_local global i64 0, align 8
@SDW_CMD_OK = common dso_local global i32 0, align 4
@CDNS_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IO transfer timed out\0A\00", align 1
@SDW_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, %struct.sdw_msg*, i32, i32, i32, i32)* @_cdns_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cdns_xfer_msg(%struct.sdw_cdns* %0, %struct.sdw_msg* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdw_cdns*, align 8
  %9 = alloca %struct.sdw_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %8, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %20 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %6
  %25 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %26 = load i32, i32* @CDNS_MCP_FIFOLEVEL, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @cdns_writel(%struct.sdw_cdns* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %31 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %6
  %33 = load i32, i32* @CDNS_MCP_CMD_BASE, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.sdw_msg*, %struct.sdw_msg** %9, align 8
  %35 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %96, %32
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %37
  %42 = load %struct.sdw_msg*, %struct.sdw_msg** %9, align 8
  %43 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CDNS_MCP_CMD_DEV_ADDR, align 4
  %46 = call i32 @SDW_REG_SHIFT(i32 %45)
  %47 = shl i32 %44, %46
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CDNS_MCP_CMD_COMMAND, align 4
  %50 = call i32 @SDW_REG_SHIFT(i32 %49)
  %51 = shl i32 %48, %50
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* @CDNS_MCP_CMD_REG_ADDR_L, align 4
  %57 = call i32 @SDW_REG_SHIFT(i32 %56)
  %58 = shl i32 %54, %57
  %59 = load i32, i32* %17, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %17, align 4
  %61 = load %struct.sdw_msg*, %struct.sdw_msg** %9, align 8
  %62 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SDW_MSG_FLAG_WRITE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %41
  %67 = load %struct.sdw_msg*, %struct.sdw_msg** %9, align 8
  %68 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %66, %41
  %79 = load %struct.sdw_msg*, %struct.sdw_msg** %9, align 8
  %80 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CDNS_MCP_CMD_SSP_TAG, align 4
  %83 = call i32 @SDW_REG_SHIFT(i32 %82)
  %84 = shl i32 %81, %83
  %85 = load i32, i32* %17, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %17, align 4
  %87 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @cdns_writel(%struct.sdw_cdns* %87, i32 %88, i32 %89)
  %91 = load i64, i64* @CDNS_MCP_CMD_WORD_LEN, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %78
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %37

99:                                               ; preds = %37
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @SDW_CMD_OK, align 4
  store i32 %103, i32* %7, align 4
  br label %126

104:                                              ; preds = %99
  %105 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %106 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %105, i32 0, i32 2
  %107 = load i32, i32* @CDNS_TX_TIMEOUT, align 4
  %108 = call i32 @msecs_to_jiffies(i32 %107)
  %109 = call i64 @wait_for_completion_timeout(i32* %106, i32 %108)
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %104
  %113 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %114 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.sdw_msg*, %struct.sdw_msg** %9, align 8
  %118 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @SDW_CMD_TIMEOUT, align 4
  store i32 %119, i32* %7, align 4
  br label %126

120:                                              ; preds = %104
  %121 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %122 = load %struct.sdw_msg*, %struct.sdw_msg** %9, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @cdns_fill_msg_resp(%struct.sdw_cdns* %121, %struct.sdw_msg* %122, i32 %123, i32 %124)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %120, %112, %102
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cdns_fill_msg_resp(%struct.sdw_cdns*, %struct.sdw_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
