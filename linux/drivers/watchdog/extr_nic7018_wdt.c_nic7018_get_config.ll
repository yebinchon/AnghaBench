; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic7018_config = type { i32 }

@nic7018_configs = common dso_local global %struct.nic7018_config* null, align 8
@WDT_MAX_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nic7018_config* (i32, i32*)* @nic7018_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nic7018_config* @nic7018_get_config(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nic7018_config*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 30
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 16
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.nic7018_config*, %struct.nic7018_config** @nic7018_configs, align 8
  %14 = getelementptr inbounds %struct.nic7018_config, %struct.nic7018_config* %13, i64 0
  store %struct.nic7018_config* %14, %struct.nic7018_config** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %30

18:                                               ; preds = %9, %2
  %19 = load %struct.nic7018_config*, %struct.nic7018_config** @nic7018_configs, align 8
  %20 = getelementptr inbounds %struct.nic7018_config, %struct.nic7018_config* %19, i64 1
  store %struct.nic7018_config* %20, %struct.nic7018_config** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 16
  %23 = call i32 @DIV_ROUND_UP(i32 %22, i32 32)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WDT_MAX_COUNTER, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @WDT_MAX_COUNTER, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %18
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.nic7018_config*, %struct.nic7018_config** %5, align 8
  ret %struct.nic7018_config* %33
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
