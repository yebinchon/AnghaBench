; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dp_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32 }

@TB_CFG_PORT = common dso_local global i32 0, align 4
@TB_DP_VIDEO_EN = common dso_local global i32 0, align 4
@TB_DP_AUX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_dp_port_enable(%struct.tb_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @TB_CFG_PORT, align 4
  %11 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %12 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = call i32 @tb_port_read(%struct.tb_port* %8, i32* %9, i32 %10, i32 %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @TB_DP_VIDEO_EN, align 4
  %26 = load i32, i32* @TB_DP_AUX_EN, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @TB_DP_VIDEO_EN, align 4
  %33 = load i32, i32* @TB_DP_AUX_EN, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* @TB_CFG_PORT, align 4
  %43 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %44 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = call i32 @tb_port_write(%struct.tb_port* %40, i32* %41, i32 %42, i32 %45, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
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
