; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_extcon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_extcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i32 }
%struct.charger_cable = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@charger_extcon_work = common dso_local global i32 0, align 4
@charger_extcon_notifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Cannot register extcon_dev for %s(cable: %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*, %struct.charger_cable*)* @charger_extcon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charger_extcon_init(%struct.charger_manager* %0, %struct.charger_cable* %1) #0 {
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.charger_cable*, align 8
  %5 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  store %struct.charger_cable* %1, %struct.charger_cable** %4, align 8
  %6 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %7 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %6, i32 0, i32 4
  %8 = load i32, i32* @charger_extcon_work, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = load i32, i32* @charger_extcon_notifier, align 4
  %11 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %12 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %15 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %14, i32 0, i32 3
  %16 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %17 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %20 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %23 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %22, i32 0, i32 2
  %24 = call i32 @extcon_register_interest(i32* %15, i32 %18, i32 %21, %struct.TYPE_2__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %29 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.charger_cable*, %struct.charger_cable** %4, align 8
  %32 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %27, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @extcon_register_interest(i32*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
