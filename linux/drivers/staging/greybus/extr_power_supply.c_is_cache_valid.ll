; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_is_cache_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_is_cache_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i64, i64 }

@cache_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*)* @is_cache_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cache_valid(%struct.gb_power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_power_supply*, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  %4 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %5 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %10 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  store i32 0, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %13 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %18 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @cache_time, align 4
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i64 @time_is_after_jiffies(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %16, %11
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
