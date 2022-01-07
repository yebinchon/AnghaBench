; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_set_wlan_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_set_wlan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32 }

@MT_WLAN_FUN_CTRL_WLAN_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_CLK_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL = common dso_local global i32 0, align 4
@MT7601U_STATE_WLAN_RUNNING = common dso_local global i32 0, align 4
@MT_CMB_CTRL = common dso_local global i32 0, align 4
@MT_CMB_CTRL_XTAL_RDY = common dso_local global i32 0, align 4
@MT_CMB_CTRL_PLL_LD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error: PLL and XTAL check failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32, i32)* @mt7601u_set_wlan_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_set_wlan_state(%struct.mt7601u_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_EN, align 4
  %12 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_CLK_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %23 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %22, i32 %23, i32 %24)
  %26 = call i32 @udelay(i32 20)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @MT7601U_STATE_WLAN_RUNNING, align 4
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %31, i32 0, i32 1
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* @MT7601U_STATE_WLAN_RUNNING, align 4
  %36 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %37 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %36, i32 0, i32 1
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  br label %70

39:                                               ; preds = %29
  store i32 200, i32* %7, align 4
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %45 = load i32, i32* @MT_CMB_CTRL, align 4
  %46 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MT_CMB_CTRL_XTAL_RDY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MT_CMB_CTRL_PLL_LD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %62

57:                                               ; preds = %51, %43
  %58 = call i32 @udelay(i32 20)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  br label %40

62:                                               ; preds = %56, %40
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %67 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %34, %65, %62
  ret void
}

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
