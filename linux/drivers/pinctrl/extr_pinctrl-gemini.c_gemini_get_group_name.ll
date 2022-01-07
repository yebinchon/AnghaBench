; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_get_group_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_get_group_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.pinctrl_dev = type { i32 }
%struct.gemini_pmx = type { i64, i64 }

@gemini_3512_pin_groups = common dso_local global %struct.TYPE_4__* null, align 8
@gemini_3516_pin_groups = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pinctrl_dev*, i32)* @gemini_get_group_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gemini_get_group_name(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gemini_pmx*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %8 = call %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %7)
  store %struct.gemini_pmx* %8, %struct.gemini_pmx** %6, align 8
  %9 = load %struct.gemini_pmx*, %struct.gemini_pmx** %6, align 8
  %10 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gemini_3512_pin_groups, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.gemini_pmx*, %struct.gemini_pmx** %6, align 8
  %22 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gemini_3516_pin_groups, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  br label %33

32:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %25, %13
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
