; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32, i32, i32, i32, i32 }

@update_interval_init = common dso_local global i32 0, align 4
@gb_power_supply_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*)* @gb_power_supply_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_power_supply_enable(%struct.gb_power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_power_supply*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  %5 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %6 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %9 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @__gb_power_supply_set_name(i32 %7, i32 %10, i32 4)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %18 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %17, i32 0, i32 3
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %21 = call i32 @gb_power_supply_register(%struct.gb_power_supply* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %16
  %27 = load i32, i32* @update_interval_init, align 4
  %28 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %29 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %31 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %30, i32 0, i32 1
  %32 = load i32, i32* @gb_power_supply_work, align 4
  %33 = call i32 @INIT_DELAYED_WORK(i32* %31, i32 %32)
  %34 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %35 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %34, i32 0, i32 1
  %36 = call i32 @schedule_delayed_work(i32* %35, i32 0)
  %37 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %38 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %26, %24, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @__gb_power_supply_set_name(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gb_power_supply_register(%struct.gb_power_supply*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
