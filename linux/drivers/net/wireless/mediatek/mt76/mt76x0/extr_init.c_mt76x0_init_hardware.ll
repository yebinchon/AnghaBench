; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@Q_SELECT = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x0_init_hardware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  %9 = call i32 @mt76x02_wait_for_wpdma(%struct.TYPE_4__* %8, i32 1000)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %98

14:                                               ; preds = %1
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %15, i32 0, i32 0
  %17 = call i32 @mt76x02_wait_for_mac(%struct.TYPE_4__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %14
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %24 = call i32 @mt76x0_reset_csr_bbp(%struct.mt76x02_dev* %23)
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = load i32, i32* @Q_SELECT, align 4
  %27 = call i32 @mt76x02_mcu_function_select(%struct.mt76x02_dev* %25, i32 %26, i32 1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %98

32:                                               ; preds = %22
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = call i32 @mt76x0_init_mac_registers(%struct.mt76x02_dev* %33)
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %35, i32 0, i32 0
  %37 = call i32 @mt76x02_wait_for_txrx_idle(%struct.TYPE_4__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %98

42:                                               ; preds = %32
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %44 = call i32 @mt76x0_init_bbp(%struct.mt76x02_dev* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %98

49:                                               ; preds = %42
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %51 = load i32, i32* @MT_RX_FILTR_CFG, align 4
  %52 = call i32 @mt76_rr(%struct.mt76x02_dev* %50, i32 %51)
  %53 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %72, %49
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %68, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev* %64, i32 %65, i32 %66, i32* null)
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %60

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %56

75:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %83, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 256
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @mt76x02_mac_wcid_setup(%struct.mt76x02_dev* %80, i32 %81, i32 0, i32* null)
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %76

86:                                               ; preds = %76
  %87 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %88 = call i32 @mt76x0_reset_counters(%struct.mt76x02_dev* %87)
  %89 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %90 = call i32 @mt76x0_eeprom_init(%struct.mt76x02_dev* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %98

95:                                               ; preds = %86
  %96 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %97 = call i32 @mt76x0_phy_init(%struct.mt76x02_dev* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %93, %47, %39, %30, %19, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mt76x02_wait_for_wpdma(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mt76x02_wait_for_mac(%struct.TYPE_4__*) #1

declare dso_local i32 @mt76x0_reset_csr_bbp(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_mcu_function_select(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x0_init_mac_registers(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_wait_for_txrx_idle(%struct.TYPE_4__*) #1

declare dso_local i32 @mt76x0_init_bbp(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev*, i32, i32, i32*) #1

declare dso_local i32 @mt76x02_mac_wcid_setup(%struct.mt76x02_dev*, i32, i32, i32*) #1

declare dso_local i32 @mt76x0_reset_counters(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_eeprom_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_phy_init(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
