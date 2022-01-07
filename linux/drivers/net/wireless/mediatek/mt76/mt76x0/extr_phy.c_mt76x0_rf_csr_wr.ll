; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_rf_csr_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_rf_csr_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MT76_REMOVED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_KICK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_DATA = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_BANK = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_ID = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error: RF write %d:%d failed:%d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32, i32)* @mt76x0_rf_csr_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_rf_csr_wr(%struct.mt76x02_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @MT76_REMOVED, align 4
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @MT_RF_BANK(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @MT_RF_REG(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 127
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 8
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %20
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %87

39:                                               ; preds = %30
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %44 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %45 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %46 = call i32 @mt76_poll(%struct.mt76x02_dev* %43, i32 %44, i32 %45, i32 0, i32 100)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %70

51:                                               ; preds = %39
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %53 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %54 = load i32, i32* @MT_RF_CSR_CFG_DATA, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @FIELD_PREP(i32 %54, i32 %55)
  %57 = load i32, i32* @MT_RF_CSR_CFG_REG_BANK, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @FIELD_PREP(i32 %57, i32 %58)
  %60 = or i32 %56, %59
  %61 = load i32, i32* @MT_RF_CSR_CFG_REG_ID, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @FIELD_PREP(i32 %61, i32 %62)
  %64 = or i32 %60, %63
  %65 = load i32, i32* @MT_RF_CSR_CFG_WR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @mt76_wr(%struct.mt76x02_dev* %52, i32 %53, i32 %68)
  br label %70

70:                                               ; preds = %51, %48
  %71 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %72 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %36, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @MT_RF_BANK(i32) #1

declare dso_local i32 @MT_RF_REG(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
