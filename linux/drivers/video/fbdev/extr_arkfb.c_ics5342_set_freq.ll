; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_ics5342_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_ics5342_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DAC_PSEUDO8_16 = common dso_local global i64 0, align 8
@ics5342_pll_pd4 = common dso_local global i32 0, align 4
@ics5342_pll = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dac_info*, i32, i32)* @ics5342_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ics5342_set_freq(%struct.dac_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dac_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  store %struct.dac_info* %0, %struct.dac_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.dac_info*, %struct.dac_info** %5, align 8
  %14 = call %struct.TYPE_2__* @DAC_PAR(%struct.dac_info* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DAC_PSEUDO8_16, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32* @ics5342_pll_pd4, i32* @ics5342_pll
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @svga_compute_pll(i32* %20, i32 %21, i32* %8, i32* %9, i32* %10, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %3
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32 4, i32* %29, align 4
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 3, i32* %30, align 4
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 5, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 5, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 2
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %39, 5
  %41 = or i32 %38, %40
  store i32 %41, i32* %36, align 4
  %42 = load %struct.dac_info*, %struct.dac_info** %5, align 8
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %44 = call i32 @dac_write_regs(%struct.dac_info* %42, i32* %43, i32 3)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %28, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @svga_compute_pll(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @DAC_PAR(%struct.dac_info*) #1

declare dso_local i32 @dac_write_regs(%struct.dac_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
