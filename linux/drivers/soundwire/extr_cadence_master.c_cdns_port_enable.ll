; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32 }
%struct.sdw_enable_ch = type { i32, i32, i32 }
%struct.sdw_cdns = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_enable_ch*, i32)* @cdns_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_port_enable(%struct.sdw_bus* %0, %struct.sdw_enable_ch* %1, i32 %2) #0 {
  %4 = alloca %struct.sdw_bus*, align 8
  %5 = alloca %struct.sdw_enable_ch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdw_cdns*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %4, align 8
  store %struct.sdw_enable_ch* %1, %struct.sdw_enable_ch** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %11 = call %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus* %10)
  store %struct.sdw_cdns* %11, %struct.sdw_cdns** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.sdw_enable_ch*, %struct.sdw_enable_ch** %5, align 8
  %16 = getelementptr inbounds %struct.sdw_enable_ch, %struct.sdw_enable_ch* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CDNS_DPN_B1_CH_EN(i32 %17)
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.sdw_enable_ch*, %struct.sdw_enable_ch** %5, align 8
  %21 = getelementptr inbounds %struct.sdw_enable_ch, %struct.sdw_enable_ch* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CDNS_DPN_B0_CH_EN(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.sdw_enable_ch*, %struct.sdw_enable_ch** %5, align 8
  %26 = getelementptr inbounds %struct.sdw_enable_ch, %struct.sdw_enable_ch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sdw_enable_ch*, %struct.sdw_enable_ch** %5, align 8
  %29 = getelementptr inbounds %struct.sdw_enable_ch, %struct.sdw_enable_ch* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cdns_writel(%struct.sdw_cdns* %32, i32 %33, i32 %34)
  ret i32 0
}

declare dso_local %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus*) #1

declare dso_local i32 @CDNS_DPN_B1_CH_EN(i32) #1

declare dso_local i32 @CDNS_DPN_B0_CH_EN(i32) #1

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
