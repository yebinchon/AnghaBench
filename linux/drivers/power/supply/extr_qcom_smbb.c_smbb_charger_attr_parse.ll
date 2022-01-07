; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_attr_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_attr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbb_charger_attr = type { i32, i32 }
%struct.smbb_charger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@smbb_charger_attrs = common dso_local global %struct.smbb_charger_attr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbb_charger*, i32)* @smbb_charger_attr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_charger_attr_parse(%struct.smbb_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbb_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbb_charger_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smbb_charger* %0, %struct.smbb_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** @smbb_charger_attrs, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %9, i64 %11
  store %struct.smbb_charger_attr* %12, %struct.smbb_charger_attr** %6, align 8
  %13 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %14 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %6, align 8
  %19 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @of_property_read_u32(i32 %17, i32 %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @smbb_charger_attr_write(%struct.smbb_charger* %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %6, align 8
  %33 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @smbb_charger_attr_read(%struct.smbb_charger* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @of_property_read_u32(i32, i32, i32*) #1

declare dso_local i32 @smbb_charger_attr_write(%struct.smbb_charger*, i32, i32) #1

declare dso_local i32 @smbb_charger_attr_read(%struct.smbb_charger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
