; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_bbp_rr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_bbp_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MT7601U_STATE_WLAN_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_BUSY = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_REG_NUM = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_RW_MODE = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_READ = common dso_local global i32 0, align 4
@MT_BBP_CSR_CFG_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error: BBP read %02hhx failed:%d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, i32)* @mt7601u_bbp_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_bbp_rr(%struct.mt7601u_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ETIMEDOUT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @MT7601U_STATE_WLAN_RUNNING, align 4
  %11 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %2
  %23 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %24 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %24, i32 0, i32 2
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 255, i32* %3, align 4
  br label %91

29:                                               ; preds = %22
  %30 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %34 = load i32, i32* @MT_BBP_CSR_CFG, align 4
  %35 = load i32, i32* @MT_BBP_CSR_CFG_BUSY, align 4
  %36 = call i32 @mt76_poll(%struct.mt7601u_dev* %33, i32 %34, i32 %35, i32 0, i32 1000)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %76

39:                                               ; preds = %29
  %40 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %41 = load i32, i32* @MT_BBP_CSR_CFG, align 4
  %42 = load i32, i32* @MT_BBP_CSR_CFG_REG_NUM, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @FIELD_PREP(i32 %42, i32 %43)
  %45 = load i32, i32* @MT_BBP_CSR_CFG_RW_MODE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MT_BBP_CSR_CFG_BUSY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MT_BBP_CSR_CFG_READ, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %40, i32 %41, i32 %50)
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %53 = load i32, i32* @MT_BBP_CSR_CFG, align 4
  %54 = load i32, i32* @MT_BBP_CSR_CFG_BUSY, align 4
  %55 = call i32 @mt76_poll(%struct.mt7601u_dev* %52, i32 %53, i32 %54, i32 0, i32 1000)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  br label %76

58:                                               ; preds = %39
  %59 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %60 = load i32, i32* @MT_BBP_CSR_CFG, align 4
  %61 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @MT_BBP_CSR_CFG_REG_NUM, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @FIELD_GET(i32 %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load i32, i32* @MT_BBP_CSR_CFG_VAL, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @FIELD_GET(i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @trace_bbp_read(%struct.mt7601u_dev* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %58
  br label %76

76:                                               ; preds = %75, %57, %38
  %77 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %78 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %84 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %28, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @trace_bbp_read(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
