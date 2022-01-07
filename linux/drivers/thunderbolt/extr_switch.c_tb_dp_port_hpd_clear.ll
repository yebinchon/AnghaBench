; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_hpd_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_hpd_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i64 }

@TB_CFG_PORT = common dso_local global i32 0, align 4
@TB_DP_HPDC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_dp_port_hpd_clear(%struct.tb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %3, align 8
  %6 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %7 = load i32, i32* @TB_CFG_PORT, align 4
  %8 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %9 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 3
  %12 = call i32 @tb_port_read(%struct.tb_port* %6, i32* %4, i32 %7, i64 %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* @TB_DP_HPDC, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %22 = load i32, i32* @TB_CFG_PORT, align 4
  %23 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %24 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 3
  %27 = call i32 @tb_port_write(%struct.tb_port* %21, i32* %4, i32 %22, i64 %26, i32 1)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @tb_port_read(%struct.tb_port*, i32*, i32, i64, i32) #1

declare dso_local i32 @tb_port_write(%struct.tb_port*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
