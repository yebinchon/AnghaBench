; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i8** }

@CDNS_MCP_FIFOSTAT = common dso_local global i32 0, align 4
@CDNS_MCP_RX_FIFO_AVAIL = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_BASE = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_WORD_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdw_cdns*)* @cdns_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_read_response(%struct.sdw_cdns* %0) #0 {
  %2 = alloca %struct.sdw_cdns*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %2, align 8
  %6 = load %struct.sdw_cdns*, %struct.sdw_cdns** %2, align 8
  %7 = load i32, i32* @CDNS_MCP_FIFOSTAT, align 4
  %8 = call i8* @cdns_readl(%struct.sdw_cdns* %6, i32 %7)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CDNS_MCP_RX_FIFO_AVAIL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @CDNS_MCP_CMD_BASE, align 4
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.sdw_cdns*, %struct.sdw_cdns** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @cdns_readl(%struct.sdw_cdns* %19, i32 %20)
  %22 = load %struct.sdw_cdns*, %struct.sdw_cdns** %2, align 8
  %23 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %21, i8** %27, align 8
  %28 = load i64, i64* @CDNS_MCP_CMD_WORD_LEN, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %14

36:                                               ; preds = %14
  ret void
}

declare dso_local i8* @cdns_readl(%struct.sdw_cdns*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
