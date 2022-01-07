; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens.c_tsens_get_trend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens.c_tsens_get_trend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_sensor = type { i32, %struct.tsens_priv* }
%struct.tsens_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tsens_priv*, i32, i32*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @tsens_get_trend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsens_get_trend(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tsens_sensor*, align 8
  %9 = alloca %struct.tsens_priv*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.tsens_sensor*
  store %struct.tsens_sensor* %11, %struct.tsens_sensor** %8, align 8
  %12 = load %struct.tsens_sensor*, %struct.tsens_sensor** %8, align 8
  %13 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %12, i32 0, i32 1
  %14 = load %struct.tsens_priv*, %struct.tsens_priv** %13, align 8
  store %struct.tsens_priv* %14, %struct.tsens_priv** %9, align 8
  %15 = load %struct.tsens_priv*, %struct.tsens_priv** %9, align 8
  %16 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.tsens_priv*, i32, i32*)*, i32 (%struct.tsens_priv*, i32, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.tsens_priv*, i32, i32*)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.tsens_priv*, %struct.tsens_priv** %9, align 8
  %23 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.tsens_priv*, i32, i32*)*, i32 (%struct.tsens_priv*, i32, i32*)** %25, align 8
  %27 = load %struct.tsens_priv*, %struct.tsens_priv** %9, align 8
  %28 = load %struct.tsens_sensor*, %struct.tsens_sensor** %8, align 8
  %29 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 %26(%struct.tsens_priv* %27, i32 %30, i32* %31)
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
