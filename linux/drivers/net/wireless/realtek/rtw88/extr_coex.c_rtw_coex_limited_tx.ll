; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_limited_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_limited_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex, %struct.rtw_chip_info* }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.rtw_chip_info = type { i32 }

@REG_DARFRC = common dso_local global i32 0, align 4
@REG_DARFRCH = common dso_local global i32 0, align 4
@REG_RETRY_LIMIT = common dso_local global i32 0, align 4
@REG_AMPDU_MAX_TIME_V1 = common dso_local global i32 0, align 4
@REG_TX_HANG_CTRL = common dso_local global i32 0, align 4
@BIT_EN_GNT_BT_AWAKE = common dso_local global i32 0, align 4
@REG_LIFETIME_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32)* @rtw_coex_limited_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_limited_tx(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca %struct.rtw_coex*, align 8
  %9 = alloca %struct.rtw_coex_stat*, align 8
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 1
  %13 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  store %struct.rtw_chip_info* %13, %struct.rtw_chip_info** %7, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_coex* %15, %struct.rtw_coex** %8, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %8, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 0
  store %struct.rtw_coex_stat* %17, %struct.rtw_coex_stat** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %19 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %147

23:                                               ; preds = %3
  %24 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %25 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %31 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %147

36:                                               ; preds = %29, %23
  %37 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %38 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = load i32, i32* @REG_DARFRC, align 4
  %44 = call i8* @rtw_read32(%struct.rtw_dev* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %47 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %49 = load i32, i32* @REG_DARFRCH, align 4
  %50 = call i8* @rtw_read32(%struct.rtw_dev* %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %53 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %55 = load i32, i32* @REG_RETRY_LIMIT, align 4
  %56 = call i32 @rtw_read16(%struct.rtw_dev* %54, i32 %55)
  %57 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %58 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %41, %36
  %60 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %61 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %66 = load i32, i32* @REG_AMPDU_MAX_TIME_V1, align 4
  %67 = call i32 @rtw_read8(%struct.rtw_dev* %65, i32 %66)
  %68 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %69 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %73 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %76 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %70
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %81 = load i32, i32* @REG_TX_HANG_CTRL, align 4
  %82 = load i32, i32* @BIT_EN_GNT_BT_AWAKE, align 4
  %83 = call i32 @rtw_write8_set(%struct.rtw_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %85 = load i32, i32* @REG_LIFETIME_EN, align 4
  %86 = call i32 @rtw_write8_set(%struct.rtw_dev* %84, i32 %85, i32 15)
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %88 = load i32, i32* @REG_RETRY_LIMIT, align 4
  %89 = call i32 @rtw_write16(%struct.rtw_dev* %87, i32 %88, i32 2056)
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %94 = load i32, i32* @REG_DARFRC, align 4
  %95 = call i32 @rtw_write32(%struct.rtw_dev* %93, i32 %94, i32 16777216)
  %96 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %97 = load i32, i32* @REG_DARFRCH, align 4
  %98 = call i32 @rtw_write32(%struct.rtw_dev* %96, i32 %97, i32 16843009)
  br label %106

99:                                               ; preds = %79
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %101 = load i32, i32* @REG_DARFRC, align 4
  %102 = call i32 @rtw_write32(%struct.rtw_dev* %100, i32 %101, i32 16777216)
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %104 = load i32, i32* @REG_DARFRCH, align 4
  %105 = call i32 @rtw_write32(%struct.rtw_dev* %103, i32 %104, i32 67305985)
  br label %106

106:                                              ; preds = %99, %92
  br label %133

107:                                              ; preds = %70
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %109 = load i32, i32* @REG_TX_HANG_CTRL, align 4
  %110 = load i32, i32* @BIT_EN_GNT_BT_AWAKE, align 4
  %111 = call i32 @rtw_write8_clr(%struct.rtw_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %113 = load i32, i32* @REG_LIFETIME_EN, align 4
  %114 = call i32 @rtw_write8_clr(%struct.rtw_dev* %112, i32 %113, i32 15)
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %116 = load i32, i32* @REG_RETRY_LIMIT, align 4
  %117 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %118 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rtw_write16(%struct.rtw_dev* %115, i32 %116, i32 %119)
  %121 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %122 = load i32, i32* @REG_DARFRC, align 4
  %123 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %124 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @rtw_write32(%struct.rtw_dev* %121, i32 %122, i32 %125)
  %127 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %128 = load i32, i32* @REG_DARFRCH, align 4
  %129 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %130 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rtw_write32(%struct.rtw_dev* %127, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %107, %106
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %138 = load i32, i32* @REG_AMPDU_MAX_TIME_V1, align 4
  %139 = call i32 @rtw_write8(%struct.rtw_dev* %137, i32 %138, i32 32)
  br label %147

140:                                              ; preds = %133
  %141 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %142 = load i32, i32* @REG_AMPDU_MAX_TIME_V1, align 4
  %143 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %144 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @rtw_write8(%struct.rtw_dev* %141, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %22, %35, %140, %136
  ret void
}

declare dso_local i8* @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8_clr(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
