; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rockchip_iodomain_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rockchip_iodomain_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rockchip_iodomain = type { %struct.rockchip_iodomain_supply* }
%struct.rockchip_iodomain_supply = type { i32, i64 }

@MAX_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_iodomain_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_iodomain_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rockchip_iodomain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_iodomain_supply*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.rockchip_iodomain* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.rockchip_iodomain* %7, %struct.rockchip_iodomain** %3, align 8
  %8 = load i32, i32* @MAX_SUPPLIES, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %3, align 8
  %15 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %14, i32 0, i32 0
  %16 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %16, i64 %18
  store %struct.rockchip_iodomain_supply* %19, %struct.rockchip_iodomain_supply** %5, align 8
  %20 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %5, align 8
  %21 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %5, align 8
  %26 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %5, align 8
  %29 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %28, i32 0, i32 0
  %30 = call i32 @regulator_unregister_notifier(i64 %27, i32* %29)
  br label %31

31:                                               ; preds = %24, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %10

35:                                               ; preds = %10
  ret i32 0
}

declare dso_local %struct.rockchip_iodomain* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regulator_unregister_notifier(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
