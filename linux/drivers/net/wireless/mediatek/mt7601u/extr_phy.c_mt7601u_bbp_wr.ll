; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_bbp_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_bbp_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32 }

@MT7601U_STATE_WLAN_RUNNING = common dso_local global i32 0, align 4
@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error: BBP write %02hhx failed!!\0A\00", align 1
@MT_BBP_CSR_CFG_VAL = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_REG_NUM = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_RW_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32, i32)* @mt7601u_bbp_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_bbp_wr(%struct.mt7601u_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @MT7601U_STATE_WLAN_RUNNING, align 4
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 2
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %18 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %18, i32 0, i32 2
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  br label %61

23:                                               ; preds = %16
  %24 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %28 = load i32, i32* @MT_BBP_CSR_CFG, align 4
  %29 = load i32, i32* @MT_BBP_CSR_CFG_BUSY, align 4
  %30 = call i32 @mt76_poll(%struct.mt7601u_dev* %27, i32 %28, i32 %29, i32 0, i32 1000)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %34 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %57

38:                                               ; preds = %23
  %39 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %40 = load i32, i32* @MT_BBP_CSR_CFG, align 4
  %41 = load i32, i32* @MT_BBP_CSR_CFG_VAL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @FIELD_PREP(i32 %41, i32 %42)
  %44 = load i32, i32* @MT_BBP_CSR_CFG_REG_NUM, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @FIELD_PREP(i32 %44, i32 %45)
  %47 = or i32 %43, %46
  %48 = load i32, i32* @MT_BBP_CSR_CFG_RW_MODE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MT_BBP_CSR_CFG_BUSY, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %39, i32 %40, i32 %51)
  %53 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @trace_bbp_write(%struct.mt7601u_dev* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %38, %32
  %58 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %59 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %22
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @trace_bbp_write(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
