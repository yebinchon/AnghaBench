; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens.c_tsens_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens.c_tsens_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_sensor = type { i32, %struct.tsens_priv* }
%struct.tsens_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tsens_priv*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @tsens_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsens_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tsens_sensor*, align 8
  %6 = alloca %struct.tsens_priv*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.tsens_sensor*
  store %struct.tsens_sensor* %8, %struct.tsens_sensor** %5, align 8
  %9 = load %struct.tsens_sensor*, %struct.tsens_sensor** %5, align 8
  %10 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %9, i32 0, i32 1
  %11 = load %struct.tsens_priv*, %struct.tsens_priv** %10, align 8
  store %struct.tsens_priv* %11, %struct.tsens_priv** %6, align 8
  %12 = load %struct.tsens_priv*, %struct.tsens_priv** %6, align 8
  %13 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.tsens_priv*, i32, i32*)*, i32 (%struct.tsens_priv*, i32, i32*)** %15, align 8
  %17 = load %struct.tsens_priv*, %struct.tsens_priv** %6, align 8
  %18 = load %struct.tsens_sensor*, %struct.tsens_sensor** %5, align 8
  %19 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 %16(%struct.tsens_priv* %17, i32 %20, i32* %21)
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
