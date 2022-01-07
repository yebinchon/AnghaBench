; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_wait_bsev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_wait_bsev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@INTR_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"BSEV unknown bit timeout\0A\00", align 1
@BSE_ICMDQUE_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BSEV ICMDQUE flush timeout\0A\00", align 1
@BSE_DMA_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"BSEV DMA timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_vde*, i32)* @tegra_vde_wait_bsev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_wait_bsev(%struct.tegra_vde* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_vde*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTR_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BIT(i32 2)
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @readl_relaxed_poll_timeout(i64 %17, i32 %18, i32 %24, i32 1, i32 100)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %74

32:                                               ; preds = %2
  %33 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @INTR_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BSE_ICMDQUE_EMPTY, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @readl_relaxed_poll_timeout(i64 %37, i32 %38, i32 %41, i32 1, i32 100)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %32
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %74

53:                                               ; preds = %49
  %54 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INTR_STATUS, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @BSE_DMA_BUSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @readl_relaxed_poll_timeout(i64 %58, i32 %59, i32 %65, i32 1, i32 100)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %69, %52, %45, %28
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
