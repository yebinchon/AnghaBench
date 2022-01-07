; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remapped_regs = common dso_local global i64 0, align 8
@mmMC_EXT_MEM_LOCATION = common dso_local global i64 0, align 8
@mmMC_PERF_MON_CNTL = common dso_local global i64 0, align 8
@mmMEM_EXT_TIMING_CNTL = common dso_local global i64 0, align 8
@mmMEM_EXT_CNTL = common dso_local global i64 0, align 8
@W100_SUSPEND_EXTMEM = common dso_local global i32 0, align 4
@mmSCLK_CNTL = common dso_local global i64 0, align 8
@mmCLK_PIN_CNTL = common dso_local global i64 0, align 8
@mmPWRMGT_CNTL = common dso_local global i64 0, align 8
@mmPLL_CNTL = common dso_local global i64 0, align 8
@mmLCDD_CNTL1 = common dso_local global i64 0, align 8
@mmLCDD_CNTL2 = common dso_local global i64 0, align 8
@mmGENLCD_CNTL1 = common dso_local global i64 0, align 8
@mmGENLCD_CNTL2 = common dso_local global i64 0, align 8
@mmGENLCD_CNTL3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @w100_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @remapped_regs, align 8
  %5 = load i64, i64* @mmMC_EXT_MEM_LOCATION, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @writel(i32 2147450880, i64 %6)
  %8 = load i64, i64* @remapped_regs, align 8
  %9 = load i64, i64* @mmMC_PERF_MON_CNTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 16711680, i64 %10)
  %12 = load i64, i64* @remapped_regs, align 8
  %13 = load i64, i64* @mmMEM_EXT_TIMING_CNTL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, -1048577
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, -16777216
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* @remapped_regs, align 8
  %22 = load i64, i64* @mmMEM_EXT_TIMING_CNTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %20, i64 %23)
  %25 = load i64, i64* @remapped_regs, align 8
  %26 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, -262145
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 524288
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i64, i64* @remapped_regs, align 8
  %35 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %33, i64 %36)
  %38 = call i32 @udelay(i32 1)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @W100_SUSPEND_EXTMEM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %1
  %43 = load i64, i64* @remapped_regs, align 8
  %44 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, 1073741824
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i64, i64* @remapped_regs, align 8
  %51 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %49, i64 %52)
  %54 = load i64, i64* @remapped_regs, align 8
  %55 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, -2
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i64, i64* @remapped_regs, align 8
  %62 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %60, i64 %63)
  br label %127

65:                                               ; preds = %1
  %66 = load i64, i64* @remapped_regs, align 8
  %67 = load i64, i64* @mmSCLK_CNTL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 0, i64 %68)
  %70 = load i64, i64* @remapped_regs, align 8
  %71 = load i64, i64* @mmCLK_PIN_CNTL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 191, i64 %72)
  %74 = load i64, i64* @remapped_regs, align 8
  %75 = load i64, i64* @mmPWRMGT_CNTL, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 21, i64 %76)
  %78 = call i32 @udelay(i32 5)
  %79 = load i64, i64* @remapped_regs, align 8
  %80 = load i64, i64* @mmPLL_CNTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, 4
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i64, i64* @remapped_regs, align 8
  %87 = load i64, i64* @mmPLL_CNTL, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %85, i64 %88)
  %90 = load i64, i64* @remapped_regs, align 8
  %91 = load i64, i64* @mmLCDD_CNTL1, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 0, i64 %92)
  %94 = load i64, i64* @remapped_regs, align 8
  %95 = load i64, i64* @mmLCDD_CNTL2, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 0, i64 %96)
  %98 = load i64, i64* @remapped_regs, align 8
  %99 = load i64, i64* @mmGENLCD_CNTL1, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 0, i64 %100)
  %102 = load i64, i64* @remapped_regs, align 8
  %103 = load i64, i64* @mmGENLCD_CNTL2, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 0, i64 %104)
  %106 = load i64, i64* @remapped_regs, align 8
  %107 = load i64, i64* @mmGENLCD_CNTL3, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 0, i64 %108)
  %110 = load i64, i64* @remapped_regs, align 8
  %111 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readl(i64 %112)
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, -268435456
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = and i32 %116, -2
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load i64, i64* @remapped_regs, align 8
  %120 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %118, i64 %121)
  %123 = load i64, i64* @remapped_regs, align 8
  %124 = load i64, i64* @mmPWRMGT_CNTL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 29, i64 %125)
  br label %127

127:                                              ; preds = %65, %42
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
