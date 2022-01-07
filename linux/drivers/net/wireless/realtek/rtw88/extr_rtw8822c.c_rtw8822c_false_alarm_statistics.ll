; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_false_alarm_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_false_alarm_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@REG_ENCCK = common dso_local global i32 0, align 4
@BIT_CCK_BLK_EN = common dso_local global i32 0, align 4
@REG_CCK_FACNT = common dso_local global i32 0, align 4
@REG_OFDM_FACNT1 = common dso_local global i32 0, align 4
@REG_OFDM_FACNT2 = common dso_local global i32 0, align 4
@REG_OFDM_FACNT3 = common dso_local global i32 0, align 4
@REG_OFDM_FACNT4 = common dso_local global i32 0, align 4
@REG_OFDM_FACNT5 = common dso_local global i32 0, align 4
@REG_CCANRX = common dso_local global i32 0, align 4
@BIT_CCK_FA_RST = common dso_local global i32 0, align 4
@BIT_OFDM_FA_RST = common dso_local global i32 0, align 4
@REG_RX_BREAK = common dso_local global i32 0, align 4
@BIT_COM_RX_GCK_EN = common dso_local global i32 0, align 4
@REG_CNT_CTRL = common dso_local global i32 0, align 4
@BIT_ALL_CNT_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_false_alarm_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_false_alarm_statistics(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %21, i32 0, i32 0
  store %struct.rtw_dm_info* %22, %struct.rtw_dm_info** %3, align 8
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %24 = load i32, i32* @REG_ENCCK, align 4
  %25 = call i32 @rtw_read32(%struct.rtw_dev* %23, i32 %24)
  %26 = load i32, i32* @BIT_CCK_BLK_EN, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = load i32, i32* @REG_CCK_FACNT, align 4
  %30 = call i32 @rtw_read16(%struct.rtw_dev* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %32 = load i32, i32* @REG_OFDM_FACNT1, align 4
  %33 = call i32 @rtw_read32(%struct.rtw_dev* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %35 = load i32, i32* @REG_OFDM_FACNT2, align 4
  %36 = call i32 @rtw_read32(%struct.rtw_dev* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %38 = load i32, i32* @REG_OFDM_FACNT3, align 4
  %39 = call i32 @rtw_read32(%struct.rtw_dev* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load i32, i32* @REG_OFDM_FACNT4, align 4
  %42 = call i32 @rtw_read32(%struct.rtw_dev* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = load i32, i32* @REG_OFDM_FACNT5, align 4
  %45 = call i32 @rtw_read32(%struct.rtw_dev* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = call i32 @GENMASK(i32 31, i32 16)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FIELD_GET(i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = call i32 @GENMASK(i32 15, i32 0)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @FIELD_GET(i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = call i32 @GENMASK(i32 31, i32 16)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @FIELD_GET(i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = call i32 @GENMASK(i32 15, i32 0)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @FIELD_GET(i32 %55, i32 %56)
  store i32 %57, i32* %19, align 4
  %58 = call i32 @GENMASK(i32 15, i32 0)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @FIELD_GET(i32 %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = call i32 @GENMASK(i32 31, i32 16)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @FIELD_GET(i32 %61, i32 %62)
  store i32 %63, i32* %20, align 4
  %64 = call i32 @GENMASK(i32 15, i32 0)
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @FIELD_GET(i32 %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = call i32 @GENMASK(i32 31, i32 16)
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @FIELD_GET(i32 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %87 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %90 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %93 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %1
  %97 = load i32, i32* %5, align 4
  br label %99

98:                                               ; preds = %1
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %102 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %106 = call i32 @rtw_read32(%struct.rtw_dev* %105, i32 11268)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, 65535
  %109 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %110 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, -65536
  %113 = lshr i32 %112, 16
  %114 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %115 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %117 = call i32 @rtw_read32(%struct.rtw_dev* %116, i32 11284)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, 65535
  %120 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %121 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, -65536
  %124 = lshr i32 %123, 16
  %125 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %126 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %128 = call i32 @rtw_read32(%struct.rtw_dev* %127, i32 11280)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, 65535
  %131 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %132 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, -65536
  %135 = lshr i32 %134, 16
  %136 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %137 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  %138 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %139 = call i32 @rtw_read32(%struct.rtw_dev* %138, i32 11276)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 65535
  %142 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %143 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %142, i32 0, i32 9
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, -65536
  %146 = lshr i32 %145, 16
  %147 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %148 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %147, i32 0, i32 10
  store i32 %146, i32* %148, align 4
  %149 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %150 = load i32, i32* @REG_CCANRX, align 4
  %151 = load i32, i32* @BIT_CCK_FA_RST, align 4
  %152 = call i32 @rtw_write32_mask(%struct.rtw_dev* %149, i32 %150, i32 %151, i32 0)
  %153 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %154 = load i32, i32* @REG_CCANRX, align 4
  %155 = load i32, i32* @BIT_CCK_FA_RST, align 4
  %156 = call i32 @rtw_write32_mask(%struct.rtw_dev* %153, i32 %154, i32 %155, i32 2)
  %157 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %158 = load i32, i32* @REG_CCANRX, align 4
  %159 = load i32, i32* @BIT_OFDM_FA_RST, align 4
  %160 = call i32 @rtw_write32_mask(%struct.rtw_dev* %157, i32 %158, i32 %159, i32 0)
  %161 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %162 = load i32, i32* @REG_CCANRX, align 4
  %163 = load i32, i32* @BIT_OFDM_FA_RST, align 4
  %164 = call i32 @rtw_write32_mask(%struct.rtw_dev* %161, i32 %162, i32 %163, i32 2)
  %165 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %166 = load i32, i32* @REG_RX_BREAK, align 4
  %167 = load i32, i32* @BIT_COM_RX_GCK_EN, align 4
  %168 = call i32 @rtw_write32_clr(%struct.rtw_dev* %165, i32 %166, i32 %167)
  %169 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %170 = load i32, i32* @REG_CNT_CTRL, align 4
  %171 = load i32, i32* @BIT_ALL_CNT_RST, align 4
  %172 = call i32 @rtw_write32_set(%struct.rtw_dev* %169, i32 %170, i32 %171)
  %173 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %174 = load i32, i32* @REG_CNT_CTRL, align 4
  %175 = load i32, i32* @BIT_ALL_CNT_RST, align 4
  %176 = call i32 @rtw_write32_clr(%struct.rtw_dev* %173, i32 %174, i32 %175)
  %177 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %178 = load i32, i32* @REG_RX_BREAK, align 4
  %179 = load i32, i32* @BIT_COM_RX_GCK_EN, align 4
  %180 = call i32 @rtw_write32_set(%struct.rtw_dev* %177, i32 %178, i32 %179)
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
