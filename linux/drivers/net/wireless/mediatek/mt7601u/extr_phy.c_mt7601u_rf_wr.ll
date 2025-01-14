; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_rf_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_rf_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32 }

@MT7601U_STATE_WLAN_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_KICK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_DATA = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_BANK = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_ID = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error: RF write %02hhx:%02hhx failed:%d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, i32, i32, i32)* @mt7601u_rf_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_rf_wr(%struct.mt7601u_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @MT7601U_STATE_WLAN_RUNNING, align 4
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %12, i32 0, i32 2
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 63
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %32 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %31, i32 0, i32 2
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %88

36:                                               ; preds = %29
  %37 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %38 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %41 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %42 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %43 = call i32 @mt76_poll(%struct.mt7601u_dev* %40, i32 %41, i32 %42, i32 0, i32 100)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %72

48:                                               ; preds = %36
  %49 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %50 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %51 = load i32, i32* @MT_RF_CSR_CFG_DATA, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @FIELD_PREP(i32 %51, i32 %52)
  %54 = load i32, i32* @MT_RF_CSR_CFG_REG_BANK, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @FIELD_PREP(i32 %54, i32 %55)
  %57 = or i32 %53, %56
  %58 = load i32, i32* @MT_RF_CSR_CFG_REG_ID, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @FIELD_PREP(i32 %58, i32 %59)
  %61 = or i32 %57, %60
  %62 = load i32, i32* @MT_RF_CSR_CFG_WR, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %49, i32 %50, i32 %65)
  %67 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @trace_rf_write(%struct.mt7601u_dev* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %48, %45
  %73 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %74 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %80 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %72
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %35, %26
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @trace_rf_write(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
