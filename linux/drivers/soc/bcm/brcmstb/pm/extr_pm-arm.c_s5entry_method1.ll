; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-arm.c_s5entry_method1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-arm.c_s5entry_method1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PWRDWN_SEQ_POWERDOWN_PLL = common dso_local global i32 0, align 4
@SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT = common dso_local global i32 0, align 4
@SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DDR_PHY_RST_N = common dso_local global i32 0, align 4
@DDR_PHY_NO_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s5entry_method1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5entry_method1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PWRDWN_SEQ_POWERDOWN_PLL, align 4
  %4 = load i32, i32* @SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT, align 4
  %5 = shl i32 %3, %4
  %6 = load i32, i32* @SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = call i32 @shimphy_set(i32 %5, i32 %7)
  %9 = call i32 @ddr_ctrl_set(i32 0)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %70, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 0), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 3), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 1), align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @DDR_PHY_RST_N, align 4
  %25 = load i32, i32* @DDR_PHY_RST_N, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 3), align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 1), align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %30, i64 %38)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 2), align 8
  %41 = load i64, i64* @DDR_PHY_NO_CHANNEL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %14
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 3), align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 2), align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl_relaxed(i64 %51)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* @DDR_PHY_RST_N, align 4
  %54 = load i32, i32* @DDR_PHY_RST_N, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %2, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 3), align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrl, i32 0, i32 2), align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel_relaxed(i32 %59, i64 %67)
  br label %69

69:                                               ; preds = %43, %14
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %10

73:                                               ; preds = %10
  %74 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @shimphy_set(i32, i32) #1

declare dso_local i32 @ddr_ctrl_set(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
