; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_tm_dev = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i64 }
%struct.regmap = type { i32 }

@TMOD = common dso_local global i64 0, align 8
@TMOD_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @uniphier_tm_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_tm_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.uniphier_tm_dev*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.uniphier_tm_dev*
  store %struct.uniphier_tm_dev* %11, %struct.uniphier_tm_dev** %6, align 8
  %12 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %6, align 8
  %13 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %12, i32 0, i32 1
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %7, align 8
  %15 = load %struct.regmap*, %struct.regmap** %7, align 8
  %16 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %6, align 8
  %17 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TMOD, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @regmap_read(%struct.regmap* %15, i64 %22, i32* %9)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* @TMOD_WIDTH, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i32 @sign_extend32(i32 %29, i64 %31)
  %33 = mul nsw i32 %32, 1000
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i32 @sign_extend32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
