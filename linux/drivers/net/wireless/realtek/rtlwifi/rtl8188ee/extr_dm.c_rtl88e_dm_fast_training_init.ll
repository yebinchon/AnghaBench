; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_fast_training_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_fast_training_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_dm = type { %struct.fast_ant_training }
%struct.fast_ant_training = type { i32, i64, i64*, i64*, i64*, i64* }

@FAT_NORMAL_STATE = common dso_local global i32 0, align 4
@DM_REG_ANTSEL_PIN_11N = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@DM_REG_ANT_TRAIN_PARA2_11N = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@DM_REG_ANT_TRAIN_PARA1_11N = common dso_local global i32 0, align 4
@DM_REG_PIN_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_RX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_LNA_SWITCH_11N = common dso_local global i32 0, align 4
@DM_REG_ANTDIV_PARA1_11N = common dso_local global i32 0, align 4
@DM_REG_ANT_MAPPING1_11N = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@DM_REG_TX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_IGI_A_11N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_fast_training_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_fast_training_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_dm*, align 8
  %4 = alloca %struct.fast_ant_training*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_dm* @rtl_dm(i32 %9)
  store %struct.rtl_dm* %10, %struct.rtl_dm** %3, align 8
  %11 = load %struct.rtl_dm*, %struct.rtl_dm** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %11, i32 0, i32 0
  store %struct.fast_ant_training* %12, %struct.fast_ant_training** %4, align 8
  store i32 2, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load %struct.fast_ant_training*, %struct.fast_ant_training** %4, align 8
  %18 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %17, i32 0, i32 5
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load %struct.fast_ant_training*, %struct.fast_ant_training** %4, align 8
  %24 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %23, i32 0, i32 4
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.fast_ant_training*, %struct.fast_ant_training** %4, align 8
  %30 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.fast_ant_training*, %struct.fast_ant_training** %4, align 8
  %36 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.fast_ant_training*, %struct.fast_ant_training** %4, align 8
  %46 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @FAT_NORMAL_STATE, align 4
  %48 = load %struct.fast_ant_training*, %struct.fast_ant_training** %4, align 8
  %49 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = load i32, i32* @DM_REG_ANTSEL_PIN_11N, align 4
  %52 = load i32, i32* @MASKDWORD, align 4
  %53 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %50, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = load i32, i32* @DM_REG_ANTSEL_PIN_11N, align 4
  %56 = load i32, i32* @MASKDWORD, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BIT(i32 23)
  %59 = call i32 @BIT(i32 25)
  %60 = or i32 %58, %59
  %61 = or i32 %57, %60
  %62 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i32 %61)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = load i32, i32* @DM_REG_ANT_TRAIN_PARA2_11N, align 4
  %65 = load i32, i32* @MASKDWORD, align 4
  %66 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = load i32, i32* @DM_REG_ANT_TRAIN_PARA2_11N, align 4
  %69 = load i32, i32* @MASKDWORD, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @BIT(i32 16)
  %72 = call i32 @BIT(i32 17)
  %73 = or i32 %71, %72
  %74 = or i32 %70, %73
  %75 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %67, i32 %68, i32 %69, i32 %74)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = load i32, i32* @DM_REG_ANT_TRAIN_PARA2_11N, align 4
  %78 = load i32, i32* @MASKLWORD, align 4
  %79 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %76, i32 %77, i32 %78, i32 0)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load i32, i32* @DM_REG_ANT_TRAIN_PARA1_11N, align 4
  %82 = load i32, i32* @MASKDWORD, align 4
  %83 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %85 = load i32, i32* @DM_REG_PIN_CTRL_11N, align 4
  %86 = call i32 @BIT(i32 9)
  %87 = call i32 @BIT(i32 8)
  %88 = or i32 %86, %87
  %89 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 %88, i32 0)
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %91 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %92 = call i32 @BIT(i32 10)
  %93 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92, i32 0)
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = load i32, i32* @DM_REG_LNA_SWITCH_11N, align 4
  %96 = call i32 @BIT(i32 22)
  %97 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %94, i32 %95, i32 %96, i32 0)
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %99 = load i32, i32* @DM_REG_LNA_SWITCH_11N, align 4
  %100 = call i32 @BIT(i32 31)
  %101 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %98, i32 %99, i32 %100, i32 1)
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %103 = load i32, i32* @DM_REG_ANTDIV_PARA1_11N, align 4
  %104 = load i32, i32* @MASKDWORD, align 4
  %105 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %102, i32 %103, i32 %104, i32 160)
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %107 = load i32, i32* @DM_REG_ANT_MAPPING1_11N, align 4
  %108 = load i32, i32* @MASKBYTE0, align 4
  %109 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %106, i32 %107, i32 %108, i32 1)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %111 = load i32, i32* @DM_REG_ANT_MAPPING1_11N, align 4
  %112 = load i32, i32* @MASKBYTE1, align 4
  %113 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %110, i32 %111, i32 %112, i32 2)
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %115 = load i32, i32* @DM_REG_TX_ANT_CTRL_11N, align 4
  %116 = call i32 @BIT(i32 21)
  %117 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 %116, i32 1)
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %120 = call i32 @BIT(i32 5)
  %121 = call i32 @BIT(i32 4)
  %122 = or i32 %120, %121
  %123 = call i32 @BIT(i32 3)
  %124 = or i32 %122, %123
  %125 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %118, i32 %119, i32 %124, i32 0)
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %127 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %128 = call i32 @BIT(i32 8)
  %129 = call i32 @BIT(i32 7)
  %130 = or i32 %128, %129
  %131 = call i32 @BIT(i32 6)
  %132 = or i32 %130, %131
  %133 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %126, i32 %127, i32 %132, i32 1)
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %135 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %136 = call i32 @BIT(i32 2)
  %137 = call i32 @BIT(i32 1)
  %138 = or i32 %136, %137
  %139 = call i32 @BIT(i32 0)
  %140 = or i32 %138, %139
  %141 = load i32, i32* %5, align 4
  %142 = sub nsw i32 %141, 1
  %143 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %134, i32 %135, i32 %140, i32 %142)
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %145 = load i32, i32* @DM_REG_IGI_A_11N, align 4
  %146 = call i32 @BIT(i32 7)
  %147 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %144, i32 %145, i32 %146, i32 1)
  ret void
}

declare dso_local %struct.rtl_dm* @rtl_dm(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
