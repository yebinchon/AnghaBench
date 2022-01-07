; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_config_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_config_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }
%struct.sdw_cdns_port = type { i32 }
%struct.sdw_cdns_pdi = type { i32 }

@SDW_DATA_DIR_RX = common dso_local global i64 0, align 8
@CDNS_PORTCTRL_DIRN = common dso_local global i64 0, align 8
@CDNS_PORTCTRL = common dso_local global i64 0, align 8
@CDNS_PORT_OFFSET = common dso_local global i32 0, align 4
@CDNS_PDI_CONFIG_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdw_cdns_config_stream(%struct.sdw_cdns* %0, %struct.sdw_cdns_port* %1, i64 %2, i64 %3, %struct.sdw_cdns_pdi* %4) #0 {
  %6 = alloca %struct.sdw_cdns*, align 8
  %7 = alloca %struct.sdw_cdns_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sdw_cdns_pdi*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %6, align 8
  store %struct.sdw_cdns_port* %1, %struct.sdw_cdns_port** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.sdw_cdns_pdi* %4, %struct.sdw_cdns_pdi** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @SDW_DATA_DIR_RX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i64, i64* @CDNS_PORTCTRL_DIRN, align 8
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i64, i64* @CDNS_PORTCTRL, align 8
  %20 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %7, align 8
  %21 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CDNS_PORT_OFFSET, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %19, %25
  store i64 %26, i64* %11, align 8
  %27 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @CDNS_PORTCTRL_DIRN, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @cdns_updatel(%struct.sdw_cdns* %27, i64 %28, i64 %29, i64 %30)
  %32 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %7, align 8
  %33 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @CDNS_PDI_CONFIG_CHANNEL, align 4
  %41 = call i32 @SDW_REG_SHIFT(i32 %40)
  %42 = shl i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %12, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %12, align 8
  %46 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %47 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %10, align 8
  %48 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CDNS_PDI_CONFIG(i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @cdns_writel(%struct.sdw_cdns* %46, i32 %50, i64 %51)
  ret void
}

declare dso_local i32 @cdns_updatel(%struct.sdw_cdns*, i64, i64, i64) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i64) #1

declare dso_local i32 @CDNS_PDI_CONFIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
