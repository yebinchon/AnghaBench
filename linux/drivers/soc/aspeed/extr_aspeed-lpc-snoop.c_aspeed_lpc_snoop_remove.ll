; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_snoop_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_snoop_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.aspeed_lpc_snoop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_lpc_snoop_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_lpc_snoop_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.aspeed_lpc_snoop*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.aspeed_lpc_snoop* @dev_get_drvdata(i32* %5)
  store %struct.aspeed_lpc_snoop* %6, %struct.aspeed_lpc_snoop** %3, align 8
  %7 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %3, align 8
  %8 = call i32 @aspeed_lpc_disable_snoop(%struct.aspeed_lpc_snoop* %7, i32 0)
  %9 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %3, align 8
  %10 = call i32 @aspeed_lpc_disable_snoop(%struct.aspeed_lpc_snoop* %9, i32 1)
  ret i32 0
}

declare dso_local %struct.aspeed_lpc_snoop* @dev_get_drvdata(i32*) #1

declare dso_local i32 @aspeed_lpc_disable_snoop(%struct.aspeed_lpc_snoop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
