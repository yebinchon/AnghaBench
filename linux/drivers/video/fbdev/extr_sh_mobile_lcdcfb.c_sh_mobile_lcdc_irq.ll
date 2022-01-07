; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_priv = type { %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32, i32, i32, i32 }

@_LDINTR = common dso_local global i32 0, align 4
@LDINTR_STATUS_MASK = common dso_local global i64 0, align 8
@LDINTR_VEE = common dso_local global i64 0, align 8
@_LDSR = common dso_local global i32 0, align 4
@LDSR_MSS = common dso_local global i32 0, align 4
@LDINTR_FS = common dso_local global i64 0, align 8
@LDINTR_VES = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_mobile_lcdc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sh_mobile_lcdc_priv*
  store %struct.sh_mobile_lcdc_priv* %11, %struct.sh_mobile_lcdc_priv** %5, align 8
  %12 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %13 = load i32, i32* @_LDINTR, align 4
  %14 = call i32 @lcdc_read(%struct.sh_mobile_lcdc_priv* %12, i32 %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %17 = load i32, i32* @_LDINTR, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @LDINTR_STATUS_MASK, align 8
  %20 = xor i64 %18, %19
  %21 = load i64, i64* @LDINTR_VEE, align 8
  %22 = xor i64 %21, -1
  %23 = and i64 %20, %22
  %24 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %16, i32 %17, i64 %23)
  %25 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %26 = load i32, i32* @_LDSR, align 4
  %27 = call i32 @lcdc_read(%struct.sh_mobile_lcdc_priv* %25, i32 %26)
  %28 = load i32, i32* @LDSR_MSS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %81, %2
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %35, i32 0, i32 0
  %37 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %36, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %33
  %41 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %42 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %41, i32 0, i32 0
  %43 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %43, i64 %45
  store %struct.sh_mobile_lcdc_chan* %46, %struct.sh_mobile_lcdc_chan** %6, align 8
  %47 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %48 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %81

52:                                               ; preds = %40
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @LDINTR_FS, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %60 = call i32 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %59)
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %64 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %66 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %65, i32 0, i32 2
  %67 = call i32 @wake_up(i32* %66)
  %68 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %69 = call i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv* %68)
  br label %70

70:                                               ; preds = %62, %57
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @LDINTR_VES, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %78 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %77, i32 0, i32 1
  %79 = call i32 @complete(i32* %78)
  br label %80

80:                                               ; preds = %76, %71
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %33

84:                                               ; preds = %33
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %85
}

declare dso_local i32 @lcdc_read(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i32 @lcdc_write(%struct.sh_mobile_lcdc_priv*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
