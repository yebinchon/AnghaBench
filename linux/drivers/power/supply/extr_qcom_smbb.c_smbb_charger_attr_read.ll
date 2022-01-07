; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_attr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_attr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbb_charger_attr = type { i32 (i32)*, i32, i64 }
%struct.smbb_charger = type { i32*, i32, i64, i32 }

@smbb_charger_attrs = common dso_local global %struct.smbb_charger_attr* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"failed to read %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s => %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbb_charger*, i32)* @smbb_charger_attr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_charger_attr_read(%struct.smbb_charger* %0, i32 %1) #0 {
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
  %14 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %17 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %6, align 8
  %20 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @regmap_read(i32 %15, i64 %22, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %28 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %6, align 8
  %31 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %2
  %36 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %6, align 8
  %37 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 %38(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %42 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %6, align 8
  %45 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %51 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %35, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
