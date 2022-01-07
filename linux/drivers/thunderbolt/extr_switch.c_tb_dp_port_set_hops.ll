; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_set_hops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_set_hops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32 }

@TB_CFG_PORT = common dso_local global i32 0, align 4
@TB_DP_VIDEO_HOPID_MASK = common dso_local global i32 0, align 4
@TB_DP_AUX_RX_HOPID_MASK = common dso_local global i32 0, align 4
@TB_DP_AUX_TX_HOPID_MASK = common dso_local global i32 0, align 4
@TB_DP_VIDEO_HOPID_SHIFT = common dso_local global i32 0, align 4
@TB_DP_AUX_RX_HOPID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_dp_port_set_hops(%struct.tb_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* @TB_CFG_PORT, align 4
  %15 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %16 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = call i32 @tb_port_read(%struct.tb_port* %12, i32* %13, i32 %14, i32 %17, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4
  %26 = load i32, i32* @TB_DP_VIDEO_HOPID_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @TB_DP_AUX_RX_HOPID_MASK, align 4
  %32 = load i32, i32* @TB_DP_AUX_TX_HOPID_MASK, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TB_DP_VIDEO_HOPID_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @TB_DP_VIDEO_HOPID_MASK, align 4
  %42 = and i32 %40, %41
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @TB_DP_AUX_TX_HOPID_MASK, align 4
  %48 = and i32 %46, %47
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @TB_DP_AUX_RX_HOPID_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* @TB_DP_AUX_RX_HOPID_MASK, align 4
  %56 = and i32 %54, %55
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %62 = load i32, i32* @TB_CFG_PORT, align 4
  %63 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %64 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %67 = call i32 @ARRAY_SIZE(i32* %66)
  %68 = call i32 @tb_port_write(%struct.tb_port* %60, i32* %61, i32 %62, i32 %65, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %25, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @tb_port_read(%struct.tb_port*, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tb_port_write(%struct.tb_port*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
