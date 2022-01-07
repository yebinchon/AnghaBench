; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_wait_compensation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_wait_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MIPHY_COMP_FSM_6 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@COMP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*)* @miphy28lp_wait_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_wait_compensation(%struct.miphy28lp_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miphy28lp_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %3, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i32, i32* @HZ, align 4
  %8 = mul nsw i32 5, %7
  %9 = add nsw i32 %6, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %27, %1
  %12 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %13 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MIPHY_COMP_FSM_6, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readb_relaxed(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @time_after_eq(i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %11
  %26 = call i32 (...) @cpu_relax()
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @COMP_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %11, label %33

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
