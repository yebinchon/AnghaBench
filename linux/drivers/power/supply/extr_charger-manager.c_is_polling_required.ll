; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_polling_required.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_polling_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Incorrect polling_mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @is_polling_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_polling_required(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  %4 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %5 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 131, label %10
    i32 128, label %11
    i32 130, label %14
  ]

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %13 = call i32 @is_ext_pwr_online(%struct.charger_manager* %12)
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %16 = call i32 @is_charging(%struct.charger_manager* %15)
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %19 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %22 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %14, %11, %10, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @is_ext_pwr_online(%struct.charger_manager*) #1

declare dso_local i32 @is_charging(%struct.charger_manager*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
