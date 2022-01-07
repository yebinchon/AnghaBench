; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_setBLANK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_setBLANK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynxfb_output = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"flag = FB_BLANK_UNBLANK\0A\00", align 1
@SYSTEM_CTRL_DPMS_VPHP = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"flag = FB_BLANK_NORMAL\0A\00", align 1
@CRT_DISPLAY_CTRL_BLANK = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_VNHP = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_VPHN = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_VNHN = common dso_local global i32 0, align 4
@sm750_crt = common dso_local global i32 0, align 4
@SYSTEM_CTRL = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_MASK = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL = common dso_local global i32 0, align 4
@sm750_panel = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_sm750_setBLANK(%struct.lynxfb_output* %0, i32 %1) #0 {
  %3 = alloca %struct.lynxfb_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lynxfb_output* %0, %struct.lynxfb_output** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %28 [
    i32 129, label %11
    i32 131, label %15
    i32 128, label %19
    i32 132, label %22
    i32 130, label %25
  ]

11:                                               ; preds = %2
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @SYSTEM_CTRL_DPMS_VPHP, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @PANEL_DISPLAY_CTRL_DATA, align 4
  store i32 %14, i32* %6, align 4
  br label %28

15:                                               ; preds = %2
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @SYSTEM_CTRL_DPMS_VPHP, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %18, i32* %7, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @SYSTEM_CTRL_DPMS_VNHP, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %21, i32* %7, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @SYSTEM_CTRL_DPMS_VPHN, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @SYSTEM_CTRL_DPMS_VNHN, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %2, %25, %22, %19, %15, %11
  %29 = load %struct.lynxfb_output*, %struct.lynxfb_output** %3, align 8
  %30 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @sm750_crt, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load i32, i32* @SYSTEM_CTRL, align 4
  %37 = call i32 @peek32(i32 %36)
  %38 = load i32, i32* @SYSTEM_CTRL_DPMS_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @SYSTEM_CTRL, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @poke32(i32 %41, i32 %44)
  %46 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %47 = call i32 @peek32(i32 %46)
  %48 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @poke32(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %35, %28
  %57 = load %struct.lynxfb_output*, %struct.lynxfb_output** %3, align 8
  %58 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @sm750_panel, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %65 = call i32 @peek32(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @PANEL_DISPLAY_CTRL_DATA, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @poke32(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %56
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
