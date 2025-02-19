; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_set_vclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_set_vclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.via_pll_config = type { i32 }

@IGA1 = common dso_local global i32 0, align 4
@clock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IGA2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_set_vclock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.via_pll_config, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @get_best_pll_config(i32 %6)
  %8 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IGA1, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clock, i32 0, i32 1), align 8
  %14 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 %13(i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IGA2, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clock, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %22(i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = call i32 @via_write_misc_reg_mask(i32 12, i32 12)
  ret void
}

declare dso_local i32 @get_best_pll_config(i32) #1

declare dso_local i32 @via_write_misc_reg_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
