; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32 }

@TB_CFG_PORT = common dso_local global i32 0, align 4
@TB_DP_VIDEO_EN = common dso_local global i32 0, align 4
@TB_DP_AUX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_dp_port_is_enabled(%struct.tb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.tb_port* %0, %struct.tb_port** %3, align 8
  %5 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %7 = load i32, i32* @TB_CFG_PORT, align 4
  %8 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %9 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = call i64 @tb_port_read(%struct.tb_port* %5, i32* %6, i32 %7, i32 %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TB_DP_VIDEO_EN, align 4
  %20 = load i32, i32* @TB_DP_AUX_EN, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @tb_port_read(%struct.tb_port*, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
