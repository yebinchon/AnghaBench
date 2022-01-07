; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_get_groups_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_get_groups_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.gemini_pmx = type { i64, i64 }

@gemini_3512_pin_groups = common dso_local global i32 0, align 4
@gemini_3516_pin_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*)* @gemini_get_groups_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_get_groups_count(%struct.pinctrl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca %struct.gemini_pmx*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  %5 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %6 = call %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %5)
  store %struct.gemini_pmx* %6, %struct.gemini_pmx** %4, align 8
  %7 = load %struct.gemini_pmx*, %struct.gemini_pmx** %4, align 8
  %8 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @gemini_3512_pin_groups, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.gemini_pmx*, %struct.gemini_pmx** %4, align 8
  %16 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @gemini_3516_pin_groups, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %19, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
