; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c__gb_power_supply_append_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c__gb_power_supply_append_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32, i32 }

@POWER_SUPPLY_PROP_MANUFACTURER = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_MODEL_NAME = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_SERIAL_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_power_supply*)* @_gb_power_supply_append_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gb_power_supply_append_props(%struct.gb_power_supply* %0) #0 {
  %2 = alloca %struct.gb_power_supply*, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %2, align 8
  %3 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %4 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @strlen(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %10 = load i32, i32* @POWER_SUPPLY_PROP_MANUFACTURER, align 4
  %11 = call i32 @prop_append(%struct.gb_power_supply* %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %14 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strlen(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %20 = load i32, i32* @POWER_SUPPLY_PROP_MODEL_NAME, align 4
  %21 = call i32 @prop_append(%struct.gb_power_supply* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %24 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strlen(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %30 = load i32, i32* @POWER_SUPPLY_PROP_SERIAL_NUMBER, align 4
  %31 = call i32 @prop_append(%struct.gb_power_supply* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @prop_append(%struct.gb_power_supply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
