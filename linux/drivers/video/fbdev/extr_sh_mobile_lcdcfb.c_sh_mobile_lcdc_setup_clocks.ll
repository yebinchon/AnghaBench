; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_setup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_setup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_priv = type { %struct.clk*, i32, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@LDDCKR_ICKSEL_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"peripheral_clk\00", align 1
@LDDCKR_ICKSEL_MIPI = common dso_local global i32 0, align 4
@LDDCKR_ICKSEL_HDMI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot get dot clock %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_priv*, i32)* @sh_mobile_lcdc_setup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_setup_clocks(%struct.sh_mobile_lcdc_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i8*, align 8
  store %struct.sh_mobile_lcdc_priv* %0, %struct.sh_mobile_lcdc_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 130, label %9
    i32 128, label %13
    i32 129, label %17
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load i32, i32* @LDDCKR_ICKSEL_BUS, align 4
  %11 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %12 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  br label %24

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %14 = load i32, i32* @LDDCKR_ICKSEL_MIPI, align 4
  %15 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  br label %24

17:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  %18 = load i32, i32* @LDDCKR_ICKSEL_HDMI, align 4
  %19 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %20 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %17, %13, %9
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %49

28:                                               ; preds = %24
  %29 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %30 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call %struct.clk* @clk_get(i32 %31, i8* %32)
  store %struct.clk* %33, %struct.clk** %6, align 8
  %34 = load %struct.clk*, %struct.clk** %6, align 8
  %35 = call i64 @IS_ERR(%struct.clk* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %39 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.clk*, %struct.clk** %6, align 8
  %44 = call i32 @PTR_ERR(%struct.clk* %43)
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.clk*, %struct.clk** %6, align 8
  %47 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %48 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %47, i32 0, i32 0
  store %struct.clk* %46, %struct.clk** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %37, %27, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.clk* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
