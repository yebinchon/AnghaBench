; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-charger.c_sbs_check_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-charger.c_sbs_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbs_info = type { i32, i32, i32 }

@SBS_CHARGER_REG_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbs_info*)* @sbs_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_check_state(%struct.sbs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sbs_info* %0, %struct.sbs_info** %3, align 8
  %6 = load %struct.sbs_info*, %struct.sbs_info** %3, align 8
  %7 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SBS_CHARGER_REG_STATUS, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sbs_info*, %struct.sbs_info** %3, align 8
  %16 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.sbs_info*, %struct.sbs_info** %3, align 8
  %22 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sbs_info*, %struct.sbs_info** %3, align 8
  %24 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @power_supply_changed(i32 %25)
  store i32 1, i32* %2, align 4
  br label %28

27:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
