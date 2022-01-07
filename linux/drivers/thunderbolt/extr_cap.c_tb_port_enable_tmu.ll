; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_cap.c_tb_port_enable_tmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_cap.c_tb_port_enable_tmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.tb_switch* }
%struct.tb_switch = type { i32 }

@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@TMU_ACCESS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_port*, i32)* @tb_port_enable_tmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_port_enable_tmu(%struct.tb_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %11 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %10, i32 0, i32 0
  %12 = load %struct.tb_switch*, %struct.tb_switch** %11, align 8
  store %struct.tb_switch* %12, %struct.tb_switch** %6, align 8
  %13 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %14 = call i64 @tb_switch_is_lr(%struct.tb_switch* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 38, i32* %8, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %19 = call i64 @tb_switch_is_er(%struct.tb_switch* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 42, i32* %8, align 4
  br label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %50

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %26 = load i32, i32* @TB_CFG_SWITCH, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @tb_sw_read(%struct.tb_switch* %25, i32* %7, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @TMU_ACCESS_EN, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @TMU_ACCESS_EN, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %47 = load i32, i32* @TB_CFG_SWITCH, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @tb_sw_write(%struct.tb_switch* %46, i32* %7, i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %31, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @tb_switch_is_lr(%struct.tb_switch*) #1

declare dso_local i64 @tb_switch_is_er(%struct.tb_switch*) #1

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, i32*, i32, i32, i32) #1

declare dso_local i32 @tb_sw_write(%struct.tb_switch*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
