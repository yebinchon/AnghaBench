; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_thermal = type { %struct.mtk_thermal_bank*, %struct.TYPE_2__* }
%struct.mtk_thermal_bank = type { i32 }
%struct.TYPE_2__ = type { i32 }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @mtk_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_read_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mtk_thermal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_thermal_bank*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mtk_thermal*
  store %struct.mtk_thermal* %10, %struct.mtk_thermal** %5, align 8
  %11 = load i32, i32* @INT_MIN, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %35, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mtk_thermal*, %struct.mtk_thermal** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load %struct.mtk_thermal*, %struct.mtk_thermal** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %21, i32 0, i32 0
  %23 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %23, i64 %25
  store %struct.mtk_thermal_bank* %26, %struct.mtk_thermal_bank** %8, align 8
  %27 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %8, align 8
  %28 = call i32 @mtk_thermal_get_bank(%struct.mtk_thermal_bank* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %8, align 8
  %31 = call i32 @mtk_thermal_bank_temperature(%struct.mtk_thermal_bank* %30)
  %32 = call i32 @max(i32 %29, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %8, align 8
  %34 = call i32 @mtk_thermal_put_bank(%struct.mtk_thermal_bank* %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  ret i32 0
}

declare dso_local i32 @mtk_thermal_get_bank(%struct.mtk_thermal_bank*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mtk_thermal_bank_temperature(%struct.mtk_thermal_bank*) #1

declare dso_local i32 @mtk_thermal_put_bank(%struct.mtk_thermal_bank*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
