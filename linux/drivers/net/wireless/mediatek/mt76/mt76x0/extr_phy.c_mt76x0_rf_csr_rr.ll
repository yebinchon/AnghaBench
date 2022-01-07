; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_rf_csr_rr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_rf_csr_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MT76_REMOVED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_KICK = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_BANK = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_REG_ID = common dso_local global i32 0, align 4
@MT_RF_CSR_CFG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error: RF read %d:%d failed:%d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32)* @mt76x0_rf_csr_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_rf_csr_rr(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ETIMEDOUT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @MT76_REMOVED, align 4
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %106

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @MT_RF_BANK(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @MT_RF_REG(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 127
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 8
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %21
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %106

40:                                               ; preds = %31
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %42 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %45 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %46 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %47 = call i32 @mt76_poll(%struct.mt76x02_dev* %44, i32 %45, i32 %46, i32 0, i32 100)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %89

50:                                               ; preds = %40
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %52 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %53 = load i32, i32* @MT_RF_CSR_CFG_REG_BANK, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @FIELD_PREP(i32 %53, i32 %54)
  %56 = load i32, i32* @MT_RF_CSR_CFG_REG_ID, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @FIELD_PREP(i32 %56, i32 %57)
  %59 = or i32 %55, %58
  %60 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @mt76_wr(%struct.mt76x02_dev* %51, i32 %52, i32 %61)
  %63 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %64 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %65 = load i32, i32* @MT_RF_CSR_CFG_KICK, align 4
  %66 = call i32 @mt76_poll(%struct.mt76x02_dev* %63, i32 %64, i32 %65, i32 0, i32 100)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %50
  br label %89

69:                                               ; preds = %50
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %71 = load i32, i32* @MT_RF_CSR_CFG, align 4
  %72 = call i32 @mt76_rr(%struct.mt76x02_dev* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @MT_RF_CSR_CFG_REG_ID, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @FIELD_GET(i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load i32, i32* @MT_RF_CSR_CFG_REG_BANK, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @FIELD_GET(i32 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @MT_RF_CSR_CFG_DATA, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @FIELD_GET(i32 %85, i32 %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %78, %69
  br label %89

89:                                               ; preds = %88, %68, %49
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %91 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %97 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %89
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %37, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @MT_RF_BANK(i32) #1

declare dso_local i32 @MT_RF_REG(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
