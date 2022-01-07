; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_rfe_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_rfe_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_efuse = type { i32, i64 }
%struct.rtw_coex = type { %struct.rtw_coex_rfe }
%struct.rtw_coex_rfe = type { i32, i32, i32, i32, i32, i64 }

@COEX_SCBD_EXTFEM = common dso_local global i32 0, align 4
@REG_RFE_CTRL_E = common dso_local global i32 0, align 4
@REG_RFESEL_CTRL = common dso_local global i64 0, align 8
@REG_RFE_INV16 = common dso_local global i64 0, align 8
@BIT_RFE_BUF_EN = common dso_local global i32 0, align 4
@LTE_COEX_CTRL = common dso_local global i32 0, align 4
@BIT_LTE_COEX_EN = common dso_local global i32 0, align 4
@LTE_WL_TRX_CTRL = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@LTE_BT_TRX_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_coex_cfg_rfe_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_coex_cfg_rfe_type(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_rfe*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  store %struct.rtw_coex* %8, %struct.rtw_coex** %3, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 0
  store %struct.rtw_coex_rfe* %10, %struct.rtw_coex_rfe** %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_efuse* %12, %struct.rtw_efuse** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %18 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %20 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %22 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %24 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 18
  br i1 %26, label %37, label %27

27:                                               ; preds = %1
  %28 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 21
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %34 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 22
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27, %1
  %38 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %39 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %42 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %45 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %50 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %43
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %55 = load i32, i32* @COEX_SCBD_EXTFEM, align 4
  %56 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %54, i32 %55, i32 1)
  store i32 1, i32* %6, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %59 = load i32, i32* @COEX_SCBD_EXTFEM, align 4
  %60 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %63 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %65 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %70 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %78 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %77, i32 0, i32 4
  store i32 1, i32* %78, align 8
  br label %82

79:                                               ; preds = %73, %68, %61
  %80 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %81 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %80, i32 0, i32 4
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %84 = load i32, i32* @REG_RFE_CTRL_E, align 4
  %85 = call i32 @rtw_write8(%struct.rtw_dev* %83, i32 %84, i32 255)
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %87 = load i64, i64* @REG_RFESEL_CTRL, align 8
  %88 = add nsw i64 %87, 1
  %89 = call i32 @rtw_write8_mask(%struct.rtw_dev* %86, i64 %88, i32 3, i32 0)
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %91 = load i64, i64* @REG_RFE_INV16, align 8
  %92 = load i32, i32* @BIT_RFE_BUF_EN, align 4
  %93 = call i32 @rtw_write8_mask(%struct.rtw_dev* %90, i64 %91, i32 %92, i32 0)
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %95 = load i32, i32* @LTE_COEX_CTRL, align 4
  %96 = load i32, i32* @BIT_LTE_COEX_EN, align 4
  %97 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %94, i32 %95, i32 %96, i32 0)
  %98 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %99 = load i32, i32* @LTE_WL_TRX_CTRL, align 4
  %100 = load i32, i32* @MASKLWORD, align 4
  %101 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %98, i32 %99, i32 %100, i32 65535)
  %102 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %103 = load i32, i32* @LTE_BT_TRX_CTRL, align 4
  %104 = load i32, i32* @MASKLWORD, align 4
  %105 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %102, i32 %103, i32 %104, i32 65535)
  ret void
}

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8_mask(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
