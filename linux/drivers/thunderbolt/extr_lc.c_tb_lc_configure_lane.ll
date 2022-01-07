; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_configure_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_configure_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32, %struct.tb_switch* }
%struct.tb_switch = type { i32 }

@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@TB_LC_SX_CTRL = common dso_local global i64 0, align 8
@TB_LC_SX_CTRL_L1C = common dso_local global i32 0, align 4
@TB_LC_SX_CTRL_L2C = common dso_local global i32 0, align 4
@TB_LC_SX_CTRL_UPSTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_port*, i32)* @tb_lc_configure_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_lc_configure_lane(%struct.tb_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %13 = call i32 @tb_is_upstream_port(%struct.tb_port* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %15 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %14, i32 0, i32 1
  %16 = load %struct.tb_switch*, %struct.tb_switch** %15, align 8
  store %struct.tb_switch* %16, %struct.tb_switch** %7, align 8
  %17 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %18 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %24 = call i32 @find_port_lc_cap(%struct.tb_port* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %22
  %30 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %31 = load i32, i32* @TB_CFG_SWITCH, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @TB_LC_SX_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @tb_sw_read(%struct.tb_switch* %30, i32* %8, i32 %31, i64 %35, i32 1)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %3, align 4
  br label %86

41:                                               ; preds = %29
  %42 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %43 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @TB_LC_SX_CTRL_L1C, align 4
  store i32 %48, i32* %9, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @TB_LC_SX_CTRL_L2C, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @TB_LC_SX_CTRL_UPSTREAM, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %54
  br label %78

65:                                               ; preds = %51
  %66 = load i32, i32* %9, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* @TB_LC_SX_CTRL_UPSTREAM, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %72, %65
  br label %78

78:                                               ; preds = %77, %64
  %79 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %80 = load i32, i32* @TB_CFG_SWITCH, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @TB_LC_SX_CTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @tb_sw_write(%struct.tb_switch* %79, i32* %8, i32 %80, i64 %84, i32 1)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %78, %39, %27, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @tb_is_upstream_port(%struct.tb_port*) #1

declare dso_local i32 @find_port_lc_cap(%struct.tb_port*) #1

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, i32*, i32, i64, i32) #1

declare dso_local i32 @tb_sw_write(%struct.tb_switch*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
