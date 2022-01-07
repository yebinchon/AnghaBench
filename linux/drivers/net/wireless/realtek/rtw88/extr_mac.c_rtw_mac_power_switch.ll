; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_power_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_power_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info* }
%struct.TYPE_2__ = type { i64 }
%struct.rtw_chip_info = type { %struct.rtw_pwr_seq_cmd**, %struct.rtw_pwr_seq_cmd** }
%struct.rtw_pwr_seq_cmd = type { i32 }

@REG_MCUFW_CTRL = common dso_local global i32 0, align 4
@BIT_RPWM_TOGGLE = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i64 0, align 8
@RTW_HCI_TYPE_USB = common dso_local global i64 0, align 8
@REG_SYS_STATUS1 = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32)* @rtw_mac_power_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_mac_power_switch(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_chip_info*, align 8
  %7 = alloca %struct.rtw_pwr_seq_cmd**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 1
  %12 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %11, align 8
  store %struct.rtw_chip_info* %12, %struct.rtw_chip_info** %6, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @rtw_read8(%struct.rtw_dev* %13, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %20 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %21 = call i32 @rtw_read16(%struct.rtw_dev* %19, i32 %20)
  %22 = icmp eq i32 %21, 49272
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BIT_RPWM_TOGGLE, align 4
  %26 = xor i32 %24, %25
  %27 = load i32, i32* @BIT_RPWM_TOGGLE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rtw_write8(%struct.rtw_dev* %29, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %23, %2
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %38 = load i64, i64* @REG_CR, align 8
  %39 = call i32 @rtw_read8(%struct.rtw_dev* %37, i64 %38)
  %40 = icmp eq i32 %39, 234
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %58

42:                                               ; preds = %36
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %44 = call i64 @rtw_hci_type(%struct.rtw_dev* %43)
  %45 = load i64, i64* @RTW_HCI_TYPE_USB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %49 = load i64, i64* @REG_SYS_STATUS1, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i32 @rtw_read8(%struct.rtw_dev* %48, i64 %50)
  %52 = call i32 @BIT(i32 0)
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %57

56:                                               ; preds = %47, %42
  store i32 1, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EALREADY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %88

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %72 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %71, i32 0, i32 1
  %73 = load %struct.rtw_pwr_seq_cmd**, %struct.rtw_pwr_seq_cmd*** %72, align 8
  br label %78

74:                                               ; preds = %67
  %75 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %76 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %75, i32 0, i32 0
  %77 = load %struct.rtw_pwr_seq_cmd**, %struct.rtw_pwr_seq_cmd*** %76, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi %struct.rtw_pwr_seq_cmd** [ %73, %70 ], [ %77, %74 ]
  store %struct.rtw_pwr_seq_cmd** %79, %struct.rtw_pwr_seq_cmd*** %7, align 8
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %81 = load %struct.rtw_pwr_seq_cmd**, %struct.rtw_pwr_seq_cmd*** %7, align 8
  %82 = call i64 @rtw_pwr_seq_parser(%struct.rtw_dev* %80, %struct.rtw_pwr_seq_cmd** %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %64
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i64 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @rtw_pwr_seq_parser(%struct.rtw_dev*, %struct.rtw_pwr_seq_cmd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
