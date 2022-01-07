; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_rf_rr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_rf_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MT7601U_STATE_WLAN_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_KICK = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_BANK = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_ID = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error: RF read %02hhx:%02hhx failed:%d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, i32, i32)* @mt7601u_rf_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_rf_rr(%struct.mt7601u_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7601u_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ETIMEDOUT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @MT7601U_STATE_WLAN_RUNNING, align 4
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 63
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %107

30:                                               ; preds = %21
  %31 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %32, i32 0, i32 2
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 255, i32* %4, align 4
  br label %107

37:                                               ; preds = %30
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %39 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %42 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %43 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %44 = call i32 @mt76_poll(%struct.mt7601u_dev* %41, i32 %42, i32 %43, i32 0, i32 100)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %91

47:                                               ; preds = %37
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %49 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %50 = load i32, i32* @MT_RF_CSR_CFG_REG_BANK, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @FIELD_PREP(i32 %50, i32 %51)
  %53 = load i32, i32* @MT_RF_CSR_CFG_REG_ID, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @FIELD_PREP(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  %57 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %48, i32 %49, i32 %58)
  %60 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %61 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %62 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %63 = call i32 @mt76_poll(%struct.mt7601u_dev* %60, i32 %61, i32 %62, i32 0, i32 100)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %47
  br label %91

66:                                               ; preds = %47
  %67 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %68 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %69 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @MT_RF_CSR_CFG_REG_ID, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @FIELD_GET(i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = load i32, i32* @MT_RF_CSR_CFG_REG_BANK, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @FIELD_GET(i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i32, i32* @MT_RF_CSR_CFG_DATA, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @FIELD_GET(i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @trace_rf_read(%struct.mt7601u_dev* %85, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %75, %66
  br label %91

91:                                               ; preds = %90, %65, %46
  %92 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %93 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %99 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %91
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %36, %27
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @trace_rf_read(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
