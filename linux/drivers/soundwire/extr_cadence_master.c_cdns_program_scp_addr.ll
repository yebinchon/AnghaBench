; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_program_scp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_program_scp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i64, i32*, i32, i32 }
%struct.sdw_msg = type { i32, i32, i32, i64 }

@CDNS_SCP_RX_FIFOLEVEL = common dso_local global i64 0, align 8
@CDNS_MCP_FIFOLEVEL = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_DEV_ADDR = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_COMMAND = common dso_local global i32 0, align 4
@SDW_SCP_ADDRPAGE1 = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_REG_ADDR_L = common dso_local global i32 0, align 4
@SDW_SCP_ADDRPAGE2 = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_BASE = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_WORD_LEN = common dso_local global i64 0, align 8
@CDNS_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SCP Msg trf timed out\0A\00", align 1
@SDW_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CDNS_MCP_RESP_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Program SCP Ack not received\0A\00", align 1
@CDNS_MCP_RESP_NACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Program SCP NACK received\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"SCP_addrpage NACKed for Slave %d\0A\00", align 1
@SDW_CMD_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"SCP_addrpage ignored for Slave %d\0A\00", align 1
@SDW_CMD_IGNORED = common dso_local global i32 0, align 4
@SDW_CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, %struct.sdw_msg*)* @cdns_program_scp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_program_scp_addr(%struct.sdw_cdns* %0, %struct.sdw_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_cdns*, align 8
  %5 = alloca %struct.sdw_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %4, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %13 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CDNS_SCP_RX_FIFOLEVEL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %19 = load i32, i32* @CDNS_MCP_FIFOLEVEL, align 4
  %20 = load i64, i64* @CDNS_SCP_RX_FIFOLEVEL, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @cdns_writel(%struct.sdw_cdns* %18, i32 %19, i32 %21)
  %23 = load i64, i64* @CDNS_SCP_RX_FIFOLEVEL, align 8
  %24 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %25 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.sdw_msg*, %struct.sdw_msg** %5, align 8
  %28 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CDNS_MCP_CMD_DEV_ADDR, align 4
  %31 = call i32 @SDW_REG_SHIFT(i32 %30)
  %32 = shl i32 %29, %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @CDNS_MCP_CMD_COMMAND, align 4
  %35 = call i32 @SDW_REG_SHIFT(i32 %34)
  %36 = shl i32 3, %35
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @SDW_SCP_ADDRPAGE1, align 4
  %44 = load i32, i32* @CDNS_MCP_CMD_REG_ADDR_L, align 4
  %45 = call i32 @SDW_REG_SHIFT(i32 %44)
  %46 = shl i32 %43, %45
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @SDW_SCP_ADDRPAGE2, align 4
  %51 = load i32, i32* @CDNS_MCP_CMD_REG_ADDR_L, align 4
  %52 = call i32 @SDW_REG_SHIFT(i32 %51)
  %53 = shl i32 %50, %52
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sdw_msg*, %struct.sdw_msg** %5, align 8
  %58 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load %struct.sdw_msg*, %struct.sdw_msg** %5, align 8
  %64 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @CDNS_MCP_CMD_BASE, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cdns_writel(%struct.sdw_cdns* %70, i32 %71, i32 %73)
  %75 = load i64, i64* @CDNS_MCP_CMD_WORD_LEN, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  %80 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cdns_writel(%struct.sdw_cdns* %80, i32 %81, i32 %83)
  %85 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %86 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %85, i32 0, i32 3
  %87 = load i32, i32* @CDNS_TX_TIMEOUT, align 4
  %88 = call i32 @msecs_to_jiffies(i32 %87)
  %89 = call i64 @wait_for_completion_timeout(i32* %86, i32 %88)
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %26
  %93 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %94 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.sdw_msg*, %struct.sdw_msg** %5, align 8
  %98 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @SDW_CMD_TIMEOUT, align 4
  store i32 %99, i32* %3, align 4
  br label %167

100:                                              ; preds = %26
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %137, %100
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %140

104:                                              ; preds = %101
  %105 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %106 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CDNS_MCP_RESP_ACK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %136, label %115

115:                                              ; preds = %104
  store i32 1, i32* %7, align 4
  %116 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %117 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %121 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CDNS_MCP_RESP_NACK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %115
  store i32 1, i32* %6, align 4
  %131 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %132 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %115
  br label %136

136:                                              ; preds = %135, %104
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %101

140:                                              ; preds = %101
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %145 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.sdw_msg*, %struct.sdw_msg** %5, align 8
  %148 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @dev_err_ratelimited(i32 %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @SDW_CMD_FAIL, align 4
  store i32 %151, i32* %3, align 4
  br label %167

152:                                              ; preds = %140
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %157 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sdw_msg*, %struct.sdw_msg** %5, align 8
  %160 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dev_dbg_ratelimited(i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @SDW_CMD_IGNORED, align 4
  store i32 %163, i32* %3, align 4
  br label %167

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* @SDW_CMD_OK, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %155, %143, %92
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
