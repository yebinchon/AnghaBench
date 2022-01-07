; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_fill_msg_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_fill_msg_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32*, i32 }
%struct.sdw_msg = type { i32*, i32 }

@CDNS_MCP_RESP_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Msg Ack not received\0A\00", align 1
@CDNS_MCP_RESP_NACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Msg NACK received\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Msg NACKed for Slave %d\0A\00", align 1
@SDW_CMD_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Msg ignored for Slave %d\0A\00", align 1
@SDW_CMD_IGNORED = common dso_local global i32 0, align 4
@CDNS_MCP_RESP_RDATA = common dso_local global i32 0, align 4
@SDW_CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, %struct.sdw_msg*, i32, i32)* @cdns_fill_msg_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_fill_msg_resp(%struct.sdw_cdns* %0, %struct.sdw_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdw_cdns*, align 8
  %7 = alloca %struct.sdw_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %6, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %50, %4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %19 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CDNS_MCP_RESP_ACK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %17
  store i32 1, i32* %11, align 4
  %29 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %30 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @dev_dbg_ratelimited(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %34 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CDNS_MCP_RESP_NACK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  %44 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %45 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %28
  br label %49

49:                                               ; preds = %48, %17
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %13

53:                                               ; preds = %13
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %58 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sdw_msg*, %struct.sdw_msg** %7, align 8
  %61 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @SDW_CMD_FAIL, align 4
  store i32 %64, i32* %5, align 4
  br label %107

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %70 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sdw_msg*, %struct.sdw_msg** %7, align 8
  %73 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_dbg_ratelimited(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @SDW_CMD_IGNORED, align 4
  store i32 %76, i32* %5, align 4
  br label %107

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %102, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %85 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CDNS_MCP_RESP_RDATA, align 4
  %92 = call i32 @SDW_REG_SHIFT(i32 %91)
  %93 = ashr i32 %90, %92
  %94 = load %struct.sdw_msg*, %struct.sdw_msg** %7, align 8
  %95 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32 %93, i32* %101, align 4
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %79

105:                                              ; preds = %79
  %106 = load i32, i32* @SDW_CMD_OK, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %68, %56
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
