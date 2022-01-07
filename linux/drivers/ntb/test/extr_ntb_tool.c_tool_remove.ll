; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_client = type { i32 }
%struct.ntb_dev = type { %struct.tool_ctx* }
%struct.tool_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_client*, %struct.ntb_dev*)* @tool_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_remove(%struct.ntb_client* %0, %struct.ntb_dev* %1) #0 {
  %3 = alloca %struct.ntb_client*, align 8
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca %struct.tool_ctx*, align 8
  store %struct.ntb_client* %0, %struct.ntb_client** %3, align 8
  store %struct.ntb_dev* %1, %struct.ntb_dev** %4, align 8
  %6 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %7 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %6, i32 0, i32 0
  %8 = load %struct.tool_ctx*, %struct.tool_ctx** %7, align 8
  store %struct.tool_ctx* %8, %struct.tool_ctx** %5, align 8
  %9 = load %struct.tool_ctx*, %struct.tool_ctx** %5, align 8
  %10 = call i32 @tool_clear_dbgfs(%struct.tool_ctx* %9)
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %5, align 8
  %12 = call i32 @tool_clear_ntb(%struct.tool_ctx* %11)
  %13 = load %struct.tool_ctx*, %struct.tool_ctx** %5, align 8
  %14 = call i32 @tool_clear_mws(%struct.tool_ctx* %13)
  %15 = load %struct.tool_ctx*, %struct.tool_ctx** %5, align 8
  %16 = call i32 @tool_clear_data(%struct.tool_ctx* %15)
  ret void
}

declare dso_local i32 @tool_clear_dbgfs(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_ntb(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_mws(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_data(%struct.tool_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
