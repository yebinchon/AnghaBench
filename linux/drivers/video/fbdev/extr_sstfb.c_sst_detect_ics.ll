; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sst_detect_ics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sst_detect_ics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.sstfb_par* }
%struct.sstfb_par = type { i32 }

@DACREG_ICS_PLLRMA = common dso_local global i32 0, align 4
@DACREG_ICS_PLLDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"m_clk0_1: %#x, m_clk0_7: %#x, m_clk1_b: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"n_clk0_1: %#x, n_clk0_7: %#x, n_clk1_b: %#x\0A\00", align 1
@DACREG_ICS_PLL_CLK0_1_INI = common dso_local global i32 0, align 4
@DACREG_ICS_PLL_CLK0_7_INI = common dso_local global i32 0, align 4
@DACREG_ICS_PLL_CLK1_B_INI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @sst_detect_ics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_detect_ics(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.sstfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.sstfb_par*, %struct.sstfb_par** %13, align 8
  store %struct.sstfb_par* %14, %struct.sstfb_par** %4, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %58, %1
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load i32, i32* @DACREG_ICS_PLLRMA, align 4
  %20 = call i32 @sst_dac_write(i32 %19, i32 1)
  %21 = load i32, i32* @DACREG_ICS_PLLDATA, align 4
  %22 = call i32 @sst_dac_read(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @DACREG_ICS_PLLDATA, align 4
  %24 = call i32 @sst_dac_read(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @DACREG_ICS_PLLRMA, align 4
  %26 = call i32 @sst_dac_write(i32 %25, i32 7)
  %27 = load i32, i32* @DACREG_ICS_PLLDATA, align 4
  %28 = call i32 @sst_dac_read(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @DACREG_ICS_PLLDATA, align 4
  %30 = call i32 @sst_dac_read(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @DACREG_ICS_PLLRMA, align 4
  %32 = call i32 @sst_dac_write(i32 %31, i32 11)
  %33 = load i32, i32* @DACREG_ICS_PLLDATA, align 4
  %34 = call i32 @sst_dac_read(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @DACREG_ICS_PLLDATA, align 4
  %36 = call i32 @sst_dac_read(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @f_ddprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @f_ddprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @DACREG_ICS_PLL_CLK0_1_INI, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %18
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DACREG_ICS_PLL_CLK0_7_INI, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @DACREG_ICS_PLL_CLK1_B_INI, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %62

57:                                               ; preds = %52, %48, %18
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %15

61:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @sst_dac_write(i32, i32) #1

declare dso_local i32 @sst_dac_read(i32) #1

declare dso_local i32 @f_ddprintk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
