; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32, i32, i32, i32 }

@BQ24190_REG_CTTC = common dso_local global i32 0, align 4
@BQ24190_REG_CTTC_WATCHDOG_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_CTTC_WATCHDOG_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_POC = common dso_local global i32 0, align 4
@BQ24190_REG_POC_SYS_MIN_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_POC_SYS_MIN_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_PCTCC = common dso_local global i32 0, align 4
@BQ24190_REG_PCTCC_IPRECHG_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_PCTCC_IPRECHG_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_PCTCC_ITERM_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_PCTCC_ITERM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*)* @bq24190_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_set_config(%struct.bq24190_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq24190_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %3, align 8
  %6 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %7 = load i32, i32* @BQ24190_REG_CTTC, align 4
  %8 = call i32 @bq24190_read(%struct.bq24190_dev_info* %6, i32 %7, i32* %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %100

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BQ24190_REG_CTTC_WATCHDOG_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @BQ24190_REG_CTTC_WATCHDOG_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %20 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @BQ24190_REG_CTTC_WATCHDOG_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %26 = load i32, i32* @BQ24190_REG_CTTC, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @bq24190_write(%struct.bq24190_dev_info* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %100

33:                                               ; preds = %13
  %34 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %35 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %40 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 100
  %43 = sub nsw i32 %42, 30
  store i32 %43, i32* %5, align 4
  %44 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %45 = load i32, i32* @BQ24190_REG_POC, align 4
  %46 = load i32, i32* @BQ24190_REG_POC_SYS_MIN_MASK, align 4
  %47 = load i32, i32* @BQ24190_REG_POC_SYS_MIN_SHIFT, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %100

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %57 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %62 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 128
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %67 = load i32, i32* @BQ24190_REG_PCTCC, align 4
  %68 = load i32, i32* @BQ24190_REG_PCTCC_IPRECHG_MASK, align 4
  %69 = load i32, i32* @BQ24190_REG_PCTCC_IPRECHG_SHIFT, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %66, i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %100

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %79 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %84 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 128
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %89 = load i32, i32* @BQ24190_REG_PCTCC, align 4
  %90 = load i32, i32* @BQ24190_REG_PCTCC_ITERM_MASK, align 4
  %91 = load i32, i32* @BQ24190_REG_PCTCC_ITERM_SHIFT, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %100

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %77
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %96, %74, %52, %31, %11
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @bq24190_read(%struct.bq24190_dev_info*, i32, i32*) #1

declare dso_local i32 @bq24190_write(%struct.bq24190_dev_info*, i32, i32) #1

declare dso_local i32 @bq24190_write_mask(%struct.bq24190_dev_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
