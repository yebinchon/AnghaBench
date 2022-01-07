; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_set_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_lc.c_tb_lc_set_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32 }

@TB_LC_DESC_NLC_MASK = common dso_local global i32 0, align 4
@TB_LC_DESC_SIZE_MASK = common dso_local global i32 0, align 4
@TB_LC_DESC_SIZE_SHIFT = common dso_local global i32 0, align 4
@TB_LC_DESC_PORT_SIZE_MASK = common dso_local global i32 0, align 4
@TB_LC_DESC_PORT_SIZE_SHIFT = common dso_local global i32 0, align 4
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@TB_LC_SX_CTRL = common dso_local global i64 0, align 8
@TB_LC_SX_CTRL_SLP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_lc_set_sleep(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %12 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %13 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

17:                                               ; preds = %1
  %18 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %19 = call i32 @read_lc_desc(%struct.tb_switch* %18, i32* %9)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %83

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @TB_LC_DESC_NLC_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @TB_LC_DESC_SIZE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @TB_LC_DESC_SIZE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @TB_LC_DESC_PORT_SIZE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @TB_LC_DESC_PORT_SIZE_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %79, %24
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %38
  %43 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %44 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %53 = load i32, i32* @TB_CFG_SWITCH, align 4
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* @TB_LC_SX_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @tb_sw_read(%struct.tb_switch* %52, i32* %11, i32 %53, i64 %57, i32 1)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %83

63:                                               ; preds = %42
  %64 = load i32, i32* @TB_LC_SX_CTRL_SLP, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %68 = load i32, i32* @TB_CFG_SWITCH, align 4
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* @TB_LC_SX_CTRL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @tb_sw_write(%struct.tb_switch* %67, i32* %11, i32 %68, i64 %72, i32 1)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %83

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %38

82:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %76, %61, %22, %16
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @read_lc_desc(%struct.tb_switch*, i32*) #1

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, i32*, i32, i64, i32) #1

declare dso_local i32 @tb_sw_write(%struct.tb_switch*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
