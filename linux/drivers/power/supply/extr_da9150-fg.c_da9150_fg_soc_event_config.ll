; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_soc_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_soc_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i32, i32 }

@DA9150_QIF_SOC_PCT = common dso_local global i32 0, align 4
@DA9150_QIF_SOC_PCT_SIZE = common dso_local global i32 0, align 4
@DA9150_QIF_DISCHARGE_LIMIT = common dso_local global i32 0, align 4
@DA9150_QIF_DISCHARGE_LIMIT_SIZE = common dso_local global i32 0, align 4
@DA9150_QIF_CHARGE_LIMIT = common dso_local global i32 0, align 4
@DA9150_QIF_CHARGE_LIMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9150_fg*)* @da9150_fg_soc_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9150_fg_soc_event_config(%struct.da9150_fg* %0) #0 {
  %2 = alloca %struct.da9150_fg*, align 8
  %3 = alloca i32, align 4
  store %struct.da9150_fg* %0, %struct.da9150_fg** %2, align 8
  %4 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %5 = load i32, i32* @DA9150_QIF_SOC_PCT, align 4
  %6 = load i32, i32* @DA9150_QIF_SOC_PCT_SIZE, align 4
  %7 = call i32 @da9150_fg_read_attr_sync(%struct.da9150_fg* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %10 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %15 = load i32, i32* @DA9150_QIF_DISCHARGE_LIMIT, align 4
  %16 = load i32, i32* @DA9150_QIF_DISCHARGE_LIMIT_SIZE, align 4
  %17 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %18 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @da9150_fg_write_attr_sync(%struct.da9150_fg* %14, i32 %15, i32 %16, i32 %20)
  br label %66

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %25 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %31 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %36 = load i32, i32* @DA9150_QIF_DISCHARGE_LIMIT, align 4
  %37 = load i32, i32* @DA9150_QIF_DISCHARGE_LIMIT_SIZE, align 4
  %38 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %39 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @da9150_fg_write_attr_sync(%struct.da9150_fg* %35, i32 %36, i32 %37, i32 %41)
  %43 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %44 = load i32, i32* @DA9150_QIF_CHARGE_LIMIT, align 4
  %45 = load i32, i32* @DA9150_QIF_CHARGE_LIMIT_SIZE, align 4
  %46 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %47 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @da9150_fg_write_attr_sync(%struct.da9150_fg* %43, i32 %44, i32 %45, i32 %48)
  br label %65

50:                                               ; preds = %28, %22
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %53 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %58 = load i32, i32* @DA9150_QIF_CHARGE_LIMIT, align 4
  %59 = load i32, i32* @DA9150_QIF_CHARGE_LIMIT_SIZE, align 4
  %60 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %61 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @da9150_fg_write_attr_sync(%struct.da9150_fg* %57, i32 %58, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %50
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %65, %13
  ret void
}

declare dso_local i32 @da9150_fg_read_attr_sync(%struct.da9150_fg*, i32, i32) #1

declare dso_local i32 @da9150_fg_write_attr_sync(%struct.da9150_fg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
