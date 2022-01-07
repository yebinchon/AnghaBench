; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_sdi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_sdi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSS_PLL_CONTROL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DSS_SDI_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PLL lock request timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PLL lock timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SDI reset timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_sdi_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @dispc_pck_free_enable(i32 1)
  %4 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %5 = call i32 @REG_FLD_MOD(i32 %4, i32 1, i32 18, i32 18)
  %6 = call i32 @udelay(i32 1)
  %7 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %8 = call i32 @REG_FLD_MOD(i32 %7, i32 1, i32 28, i32 28)
  %9 = load i64, i64* @jiffies, align 8
  %10 = call i64 @msecs_to_jiffies(i32 500)
  %11 = add i64 %9, %10
  store i64 %11, i64* %2, align 8
  br label %12

12:                                               ; preds = %24, %0
  %13 = load i32, i32* @DSS_SDI_STATUS, align 4
  %14 = call i32 @dss_read_reg(i32 %13)
  %15 = and i32 %14, 64
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @time_after_eq(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %67

24:                                               ; preds = %17
  br label %12

25:                                               ; preds = %12
  %26 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %27 = call i32 @REG_FLD_MOD(i32 %26, i32 0, i32 28, i32 28)
  %28 = load i64, i64* @jiffies, align 8
  %29 = call i64 @msecs_to_jiffies(i32 500)
  %30 = add i64 %28, %29
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %44, %25
  %32 = load i32, i32* @DSS_SDI_STATUS, align 4
  %33 = call i32 @dss_read_reg(i32 %32)
  %34 = and i32 %33, 32
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %2, align 8
  %40 = call i64 @time_after_eq(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @DSSERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %67

44:                                               ; preds = %37
  br label %31

45:                                               ; preds = %31
  %46 = call i32 @dispc_lcd_enable_signal(i32 1)
  %47 = load i64, i64* @jiffies, align 8
  %48 = call i64 @msecs_to_jiffies(i32 500)
  %49 = add i64 %47, %48
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %63, %45
  %51 = load i32, i32* @DSS_SDI_STATUS, align 4
  %52 = call i32 @dss_read_reg(i32 %51)
  %53 = and i32 %52, 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i64, i64* %2, align 8
  %59 = call i64 @time_after_eq(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %65

63:                                               ; preds = %56
  br label %50

64:                                               ; preds = %50
  store i32 0, i32* %1, align 4
  br label %73

65:                                               ; preds = %61
  %66 = call i32 @dispc_lcd_enable_signal(i32 0)
  br label %67

67:                                               ; preds = %65, %42, %22
  %68 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %69 = call i32 @REG_FLD_MOD(i32 %68, i32 0, i32 18, i32 18)
  %70 = call i32 @dispc_pck_free_enable(i32 0)
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %67, %64
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local i32 @dispc_pck_free_enable(i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dss_read_reg(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dispc_lcd_enable_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
