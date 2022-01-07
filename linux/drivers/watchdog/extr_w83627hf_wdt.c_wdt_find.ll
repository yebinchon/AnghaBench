; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83627hf_wdt.c_wdt_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83627hf_wdt.c_wdt_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W83627HF_WDT_TIMEOUT = common dso_local global i32 0, align 4
@cr_wdt_timeout = common dso_local global i32 0, align 4
@W83627HF_WDT_CONTROL = common dso_local global i32 0, align 4
@cr_wdt_control = common dso_local global i32 0, align 4
@W836X7HF_WDT_CSR = common dso_local global i32 0, align 4
@cr_wdt_csr = common dso_local global i32 0, align 4
@W83627HF_LD_WDT = common dso_local global i32 0, align 4
@w83627hf = common dso_local global i32 0, align 4
@w83627s = common dso_local global i32 0, align 4
@w83697hf = common dso_local global i32 0, align 4
@W83697HF_WDT_TIMEOUT = common dso_local global i32 0, align 4
@W83697HF_WDT_CONTROL = common dso_local global i32 0, align 4
@w83697ug = common dso_local global i32 0, align 4
@w83637hf = common dso_local global i32 0, align 4
@w83627thf = common dso_local global i32 0, align 4
@w83687thf = common dso_local global i32 0, align 4
@w83627ehf = common dso_local global i32 0, align 4
@w83627dhg = common dso_local global i32 0, align 4
@w83627dhg_p = common dso_local global i32 0, align 4
@w83627uhg = common dso_local global i32 0, align 4
@w83667hg = common dso_local global i32 0, align 4
@w83667hg_b = common dso_local global i32 0, align 4
@nct6775 = common dso_local global i32 0, align 4
@nct6776 = common dso_local global i32 0, align 4
@nct6779 = common dso_local global i32 0, align 4
@nct6791 = common dso_local global i32 0, align 4
@nct6792 = common dso_local global i32 0, align 4
@nct6793 = common dso_local global i32 0, align 4
@nct6795 = common dso_local global i32 0, align 4
@nct6796 = common dso_local global i32 0, align 4
@nct6102 = common dso_local global i32 0, align 4
@NCT6102D_WDT_TIMEOUT = common dso_local global i32 0, align 4
@NCT6102D_WDT_CONTROL = common dso_local global i32 0, align 4
@NCT6102D_WDT_CSR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported chip ID: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wdt_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_find(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @W83627HF_WDT_TIMEOUT, align 4
  store i32 %6, i32* @cr_wdt_timeout, align 4
  %7 = load i32, i32* @W83627HF_WDT_CONTROL, align 4
  store i32 %7, i32* @cr_wdt_control, align 4
  %8 = load i32, i32* @W836X7HF_WDT_CSR, align 4
  store i32 %8, i32* @cr_wdt_csr, align 4
  %9 = call i32 (...) @superio_enter()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  %15 = load i32, i32* @W83627HF_LD_WDT, align 4
  %16 = call i32 @superio_select(i32 %15)
  %17 = call i32 @superio_inb(i32 32)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %73 [
    i32 137, label %19
    i32 136, label %21
    i32 129, label %23
    i32 128, label %27
    i32 133, label %31
    i32 135, label %33
    i32 130, label %35
    i32 138, label %37
    i32 140, label %39
    i32 139, label %41
    i32 134, label %43
    i32 131, label %45
    i32 132, label %47
    i32 148, label %49
    i32 147, label %51
    i32 146, label %53
    i32 145, label %55
    i32 144, label %57
    i32 143, label %59
    i32 142, label %61
    i32 141, label %63
    i32 149, label %65
    i32 255, label %70
  ]

19:                                               ; preds = %14
  %20 = load i32, i32* @w83627hf, align 4
  store i32 %20, i32* %5, align 4
  br label %78

21:                                               ; preds = %14
  %22 = load i32, i32* @w83627s, align 4
  store i32 %22, i32* %5, align 4
  br label %78

23:                                               ; preds = %14
  %24 = load i32, i32* @w83697hf, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @W83697HF_WDT_TIMEOUT, align 4
  store i32 %25, i32* @cr_wdt_timeout, align 4
  %26 = load i32, i32* @W83697HF_WDT_CONTROL, align 4
  store i32 %26, i32* @cr_wdt_control, align 4
  br label %78

27:                                               ; preds = %14
  %28 = load i32, i32* @w83697ug, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @W83697HF_WDT_TIMEOUT, align 4
  store i32 %29, i32* @cr_wdt_timeout, align 4
  %30 = load i32, i32* @W83697HF_WDT_CONTROL, align 4
  store i32 %30, i32* @cr_wdt_control, align 4
  br label %78

31:                                               ; preds = %14
  %32 = load i32, i32* @w83637hf, align 4
  store i32 %32, i32* %5, align 4
  br label %78

33:                                               ; preds = %14
  %34 = load i32, i32* @w83627thf, align 4
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %14
  %36 = load i32, i32* @w83687thf, align 4
  store i32 %36, i32* %5, align 4
  br label %78

37:                                               ; preds = %14
  %38 = load i32, i32* @w83627ehf, align 4
  store i32 %38, i32* %5, align 4
  br label %78

39:                                               ; preds = %14
  %40 = load i32, i32* @w83627dhg, align 4
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %14
  %42 = load i32, i32* @w83627dhg_p, align 4
  store i32 %42, i32* %5, align 4
  br label %78

43:                                               ; preds = %14
  %44 = load i32, i32* @w83627uhg, align 4
  store i32 %44, i32* %5, align 4
  br label %78

45:                                               ; preds = %14
  %46 = load i32, i32* @w83667hg, align 4
  store i32 %46, i32* %5, align 4
  br label %78

47:                                               ; preds = %14
  %48 = load i32, i32* @w83667hg_b, align 4
  store i32 %48, i32* %5, align 4
  br label %78

49:                                               ; preds = %14
  %50 = load i32, i32* @nct6775, align 4
  store i32 %50, i32* %5, align 4
  br label %78

51:                                               ; preds = %14
  %52 = load i32, i32* @nct6776, align 4
  store i32 %52, i32* %5, align 4
  br label %78

53:                                               ; preds = %14
  %54 = load i32, i32* @nct6779, align 4
  store i32 %54, i32* %5, align 4
  br label %78

55:                                               ; preds = %14
  %56 = load i32, i32* @nct6791, align 4
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %14
  %58 = load i32, i32* @nct6792, align 4
  store i32 %58, i32* %5, align 4
  br label %78

59:                                               ; preds = %14
  %60 = load i32, i32* @nct6793, align 4
  store i32 %60, i32* %5, align 4
  br label %78

61:                                               ; preds = %14
  %62 = load i32, i32* @nct6795, align 4
  store i32 %62, i32* %5, align 4
  br label %78

63:                                               ; preds = %14
  %64 = load i32, i32* @nct6796, align 4
  store i32 %64, i32* %5, align 4
  br label %78

65:                                               ; preds = %14
  %66 = load i32, i32* @nct6102, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @NCT6102D_WDT_TIMEOUT, align 4
  store i32 %67, i32* @cr_wdt_timeout, align 4
  %68 = load i32, i32* @NCT6102D_WDT_CONTROL, align 4
  store i32 %68, i32* @cr_wdt_control, align 4
  %69 = load i32, i32* @NCT6102D_WDT_CSR, align 4
  store i32 %69, i32* @cr_wdt_csr, align 4
  br label %78

70:                                               ; preds = %14
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %14
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %70, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %27, %23, %21, %19
  %79 = call i32 (...) @superio_exit()
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @superio_select(i32) #1

declare dso_local i32 @superio_inb(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @superio_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
