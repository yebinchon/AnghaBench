; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_int_phy_up_down_bcast_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_int_phy_up_down_bcast_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@CHNL_INT_STATUS = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i32 0, align 4
@PHY_STATE = common dso_local global i32 0, align 4
@CHL_INT0_SL_PHY_ENABLE_MSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i64 0, align 8
@CHL_INT0_SL_RX_BCST_ACK_MSK = common dso_local global i32 0, align 4
@CHL_INT0_NOT_RDY_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @int_phy_up_down_bcast_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @int_phy_up_down_bcast_v3_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.hisi_hba*
  store %struct.hisi_hba* %13, %struct.hisi_hba** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i64, i64* @IRQ_NONE, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %16 = load i32, i32* @CHNL_INT_STATUS, align 4
  %17 = call i32 @hisi_sas_read32(%struct.hisi_hba* %15, i32 %16)
  %18 = and i32 %17, 286331153
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %85, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %90

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %85

26:                                               ; preds = %22
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CHL_INT0, align 4
  %30 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %32 = load i32, i32* @PHY_STATE, align 4
  %33 = call i32 @hisi_sas_read32(%struct.hisi_hba* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %26
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CHL_INT0_SL_PHY_ENABLE_MSK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %48 = call i64 @phy_up_v3_hw(i32 %46, %struct.hisi_hba* %47)
  %49 = load i64, i64* @IRQ_HANDLED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @CHL_INT0_SL_RX_BCST_ACK_MSK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %62 = call i64 @phy_bcast_v3_hw(i32 %60, %struct.hisi_hba* %61)
  %63 = load i64, i64* @IRQ_HANDLED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %65, %59
  br label %68

68:                                               ; preds = %67, %54
  br label %84

69:                                               ; preds = %26
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CHL_INT0_NOT_RDY_MSK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %77 = call i64 @phy_down_v3_hw(i32 %75, %struct.hisi_hba* %76)
  %78 = load i64, i64* @IRQ_HANDLED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %80, %74
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %22
  %86 = load i32, i32* %6, align 4
  %87 = ashr i32 %86, 4
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %19

90:                                               ; preds = %19
  %91 = load i64, i64* %8, align 8
  ret i64 %91
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i64 @phy_up_v3_hw(i32, %struct.hisi_hba*) #1

declare dso_local i64 @phy_bcast_v3_hw(i32, %struct.hisi_hba*) #1

declare dso_local i64 @phy_down_v3_hw(i32, %struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
