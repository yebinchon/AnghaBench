; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_set_voreg_before_charge_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_set_voreg_before_charge_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@F_VOREG = common dso_local global i32 0, align 4
@rt9455_voreg_values = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to set VOREG value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*)* @rt9455_set_voreg_before_charge_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_set_voreg_before_charge_mode(%struct.rt9455_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt9455_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %3, align 8
  %6 = load %struct.rt9455_info*, %struct.rt9455_info** %3, align 8
  %7 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.rt9455_info*, %struct.rt9455_info** %3, align 8
  %11 = load i32, i32* @F_VOREG, align 4
  %12 = load i32, i32* @rt9455_voreg_values, align 4
  %13 = load i32, i32* @rt9455_voreg_values, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.rt9455_info*, %struct.rt9455_info** %3, align 8
  %16 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rt9455_set_field_val(%struct.rt9455_info* %10, i32 %11, i32 %12, i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @rt9455_set_field_val(%struct.rt9455_info*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
