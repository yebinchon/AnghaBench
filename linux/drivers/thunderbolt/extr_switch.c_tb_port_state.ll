; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i64 }
%struct.tb_cap_phy = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"does not have a PHY\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TB_CFG_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_port*)* @tb_port_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_port_state(%struct.tb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca %struct.tb_cap_phy, align 4
  %5 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %3, align 8
  %6 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %7 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %12 = call i32 @tb_port_WARN(%struct.tb_port* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %17 = load i32, i32* @TB_CFG_PORT, align 4
  %18 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %19 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @tb_port_read(%struct.tb_port* %16, %struct.tb_cap_phy* %4, i32 %17, i64 %20, i32 2)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.tb_cap_phy, %struct.tb_cap_phy* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %24, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @tb_port_WARN(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_port_read(%struct.tb_port*, %struct.tb_cap_phy*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
