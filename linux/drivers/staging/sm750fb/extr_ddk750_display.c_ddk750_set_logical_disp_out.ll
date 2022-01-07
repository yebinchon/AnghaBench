; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_ddk750_set_logical_disp_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_ddk750_set_logical_disp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNL_2_USAGE = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_SELECT_MASK = common dso_local global i32 0, align 4
@PNL_2_MASK = common dso_local global i32 0, align 4
@PNL_2_OFFSET = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_SELECT_SHIFT = common dso_local global i32 0, align 4
@CRT_2_USAGE = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_SELECT_MASK = common dso_local global i32 0, align 4
@CRT_2_MASK = common dso_local global i32 0, align 4
@CRT_2_OFFSET = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_SELECT_SHIFT = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_BLANK = common dso_local global i32 0, align 4
@PRI_TP_USAGE = common dso_local global i32 0, align 4
@PRI_TP_MASK = common dso_local global i32 0, align 4
@PRI_TP_OFFSET = common dso_local global i32 0, align 4
@SEC_TP_USAGE = common dso_local global i32 0, align 4
@SEC_TP_MASK = common dso_local global i32 0, align 4
@SEC_TP_OFFSET = common dso_local global i32 0, align 4
@PNL_SEQ_USAGE = common dso_local global i32 0, align 4
@PNL_SEQ_MASK = common dso_local global i32 0, align 4
@PNL_SEQ_OFFSET = common dso_local global i32 0, align 4
@DAC_USAGE = common dso_local global i32 0, align 4
@DAC_MASK = common dso_local global i32 0, align 4
@DAC_OFFSET = common dso_local global i32 0, align 4
@DPMS_USAGE = common dso_local global i32 0, align 4
@DPMS_MASK = common dso_local global i32 0, align 4
@DPMS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddk750_set_logical_disp_out(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PNL_2_USAGE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %10 = call i32 @peek32(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @PANEL_DISPLAY_CTRL_SELECT_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @PNL_2_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PNL_2_OFFSET, align 4
  %19 = lshr i32 %17, %18
  %20 = load i32, i32* @PANEL_DISPLAY_CTRL_SELECT_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @poke32(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %8, %1
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @CRT_2_USAGE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %34 = call i32 @peek32(i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @CRT_DISPLAY_CTRL_SELECT_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @CRT_2_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CRT_2_OFFSET, align 4
  %43 = lshr i32 %41, %42
  %44 = load i32, i32* @CRT_DISPLAY_CTRL_SELECT_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @poke32(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %32, %27
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @PRI_TP_USAGE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @PRI_TP_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @PRI_TP_OFFSET, align 4
  %65 = lshr i32 %63, %64
  %66 = call i32 @set_display_control(i32 0, i32 %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @SEC_TP_USAGE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @SEC_TP_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @SEC_TP_OFFSET, align 4
  %77 = lshr i32 %75, %76
  %78 = call i32 @set_display_control(i32 1, i32 %77)
  br label %79

79:                                               ; preds = %72, %67
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @PNL_SEQ_USAGE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @PNL_SEQ_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @PNL_SEQ_OFFSET, align 4
  %89 = lshr i32 %87, %88
  %90 = call i32 @sw_panel_power_sequence(i32 %89, i32 4)
  br label %91

91:                                               ; preds = %84, %79
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @DAC_USAGE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @DAC_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @DAC_OFFSET, align 4
  %101 = lshr i32 %99, %100
  %102 = call i32 @set_DAC(i32 %101)
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @DPMS_USAGE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @DPMS_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @DPMS_OFFSET, align 4
  %113 = lshr i32 %111, %112
  %114 = call i32 @ddk750_set_dpms(i32 %113)
  br label %115

115:                                              ; preds = %108, %103
  ret void
}

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @set_display_control(i32, i32) #1

declare dso_local i32 @sw_panel_power_sequence(i32, i32) #1

declare dso_local i32 @set_DAC(i32) #1

declare dso_local i32 @ddk750_set_dpms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
