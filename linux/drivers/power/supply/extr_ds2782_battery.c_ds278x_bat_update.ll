; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_bat_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_bat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds278x_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds278x_info*)* @ds278x_bat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds278x_bat_update(%struct.ds278x_info* %0) #0 {
  %2 = alloca %struct.ds278x_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ds278x_info* %0, %struct.ds278x_info** %2, align 8
  %5 = load %struct.ds278x_info*, %struct.ds278x_info** %2, align 8
  %6 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ds278x_info*, %struct.ds278x_info** %2, align 8
  %9 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ds278x_info*, %struct.ds278x_info** %2, align 8
  %12 = load %struct.ds278x_info*, %struct.ds278x_info** %2, align 8
  %13 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %12, i32 0, i32 0
  %14 = call i32 @ds278x_get_status(%struct.ds278x_info* %11, i32* %13)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.ds278x_info*, %struct.ds278x_info** %2, align 8
  %17 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ds278x_info*, %struct.ds278x_info** %2, align 8
  %23 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20, %1
  %27 = load %struct.ds278x_info*, %struct.ds278x_info** %2, align 8
  %28 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @power_supply_changed(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @ds278x_get_status(%struct.ds278x_info*, i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
