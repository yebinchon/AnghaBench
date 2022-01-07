; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rockchip_iodomain_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rockchip_iodomain_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_iodomain_supply = type { i32, %struct.rockchip_iodomain* }
%struct.rockchip_iodomain = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_VOLTAGE_1_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't write to GRF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_iodomain_supply*, i32)* @rockchip_iodomain_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_iodomain_write(%struct.rockchip_iodomain_supply* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_iodomain_supply*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_iodomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rockchip_iodomain_supply* %0, %struct.rockchip_iodomain_supply** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %8, i32 0, i32 1
  %10 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %9, align 8
  store %struct.rockchip_iodomain* %10, %struct.rockchip_iodomain** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_VOLTAGE_1_8, align 4
  %13 = icmp sgt i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %3, align 8
  %22 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BIT(i32 %23)
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %5, align 8
  %29 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @regmap_write(i32 %30, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %5, align 8
  %42 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %2
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
