; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_dm_fast_training_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_dm_fast_training_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32*, i32, %struct.fast_ant_train, %struct.adapter* }
%struct.fast_ant_train = type { i32, i64, i64*, i64*, i64*, i64* }
%struct.adapter = type { i32 }

@FAT_NORMAL_STATE = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*)* @dm_fast_training_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_fast_training_init(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fast_ant_train*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %7, i32 0, i32 3
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 2
  store %struct.fast_ant_train* %11, %struct.fast_ant_train** %6, align 8
  %12 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %13 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %154

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load %struct.fast_ant_train*, %struct.fast_ant_train** %6, align 8
  %24 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %23, i32 0, i32 5
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.fast_ant_train*, %struct.fast_ant_train** %6, align 8
  %30 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.fast_ant_train*, %struct.fast_ant_train** %6, align 8
  %36 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load %struct.fast_ant_train*, %struct.fast_ant_train** %6, align 8
  %42 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %22
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %19

50:                                               ; preds = %19
  %51 = load %struct.fast_ant_train*, %struct.fast_ant_train** %6, align 8
  %52 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @FAT_NORMAL_STATE, align 4
  %54 = load %struct.fast_ant_train*, %struct.fast_ant_train** %6, align 8
  %55 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = load i32, i32* @bMaskDWord, align 4
  %58 = call i32 @phy_query_bb_reg(%struct.adapter* %56, i32 76, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = load i32, i32* @bMaskDWord, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @BIT(i32 23)
  %63 = call i32 @BIT(i32 25)
  %64 = or i32 %62, %63
  %65 = or i32 %61, %64
  %66 = call i32 @phy_set_bb_reg(%struct.adapter* %59, i32 76, i32 %60, i32 %65)
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = load i32, i32* @bMaskDWord, align 4
  %69 = call i32 @phy_query_bb_reg(%struct.adapter* %67, i32 1972, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = load i32, i32* @bMaskDWord, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @BIT(i32 16)
  %74 = call i32 @BIT(i32 17)
  %75 = or i32 %73, %74
  %76 = or i32 %72, %75
  %77 = call i32 @phy_set_bb_reg(%struct.adapter* %70, i32 1972, i32 %71, i32 %76)
  %78 = load %struct.adapter*, %struct.adapter** %3, align 8
  %79 = call i32 @phy_set_bb_reg(%struct.adapter* %78, i32 1972, i32 65535, i32 0)
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = load i32, i32* @bMaskDWord, align 4
  %82 = call i32 @phy_set_bb_reg(%struct.adapter* %80, i32 1968, i32 %81, i32 0)
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = call i32 @BIT(i32 9)
  %85 = call i32 @BIT(i32 8)
  %86 = or i32 %84, %85
  %87 = call i32 @phy_set_bb_reg(%struct.adapter* %83, i32 2160, i32 %86, i32 0)
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = call i32 @BIT(i32 10)
  %90 = call i32 @phy_set_bb_reg(%struct.adapter* %88, i32 2148, i32 %89, i32 0)
  %91 = load %struct.adapter*, %struct.adapter** %3, align 8
  %92 = call i32 @BIT(i32 22)
  %93 = call i32 @phy_set_bb_reg(%struct.adapter* %91, i32 2860, i32 %92, i32 0)
  %94 = load %struct.adapter*, %struct.adapter** %3, align 8
  %95 = call i32 @BIT(i32 31)
  %96 = call i32 @phy_set_bb_reg(%struct.adapter* %94, i32 2860, i32 %95, i32 1)
  %97 = load %struct.adapter*, %struct.adapter** %3, align 8
  %98 = load i32, i32* @bMaskDWord, align 4
  %99 = call i32 @phy_set_bb_reg(%struct.adapter* %97, i32 3236, i32 %98, i32 160)
  %100 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %101 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %50
  %105 = load %struct.adapter*, %struct.adapter** %3, align 8
  %106 = call i32 @BIT(i32 10)
  %107 = call i32 @BIT(i32 9)
  %108 = or i32 %106, %107
  %109 = call i32 @BIT(i32 8)
  %110 = or i32 %108, %109
  %111 = call i32 @phy_set_bb_reg(%struct.adapter* %105, i32 2136, i32 %110, i32 1)
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = call i32 @BIT(i32 13)
  %114 = call i32 @BIT(i32 12)
  %115 = or i32 %113, %114
  %116 = call i32 @BIT(i32 11)
  %117 = or i32 %115, %116
  %118 = call i32 @phy_set_bb_reg(%struct.adapter* %112, i32 2136, i32 %117, i32 2)
  br label %126

119:                                              ; preds = %50
  %120 = load %struct.adapter*, %struct.adapter** %3, align 8
  %121 = load i32, i32* @bMaskByte0, align 4
  %122 = call i32 @phy_set_bb_reg(%struct.adapter* %120, i32 2324, i32 %121, i32 1)
  %123 = load %struct.adapter*, %struct.adapter** %3, align 8
  %124 = load i32, i32* @bMaskByte1, align 4
  %125 = call i32 @phy_set_bb_reg(%struct.adapter* %123, i32 2324, i32 %124, i32 2)
  br label %126

126:                                              ; preds = %119, %104
  %127 = load %struct.adapter*, %struct.adapter** %3, align 8
  %128 = call i32 @BIT(i32 21)
  %129 = call i32 @phy_set_bb_reg(%struct.adapter* %127, i32 2060, i32 %128, i32 1)
  %130 = load %struct.adapter*, %struct.adapter** %3, align 8
  %131 = call i32 @BIT(i32 5)
  %132 = call i32 @BIT(i32 4)
  %133 = or i32 %131, %132
  %134 = call i32 @BIT(i32 3)
  %135 = or i32 %133, %134
  %136 = call i32 @phy_set_bb_reg(%struct.adapter* %130, i32 2148, i32 %135, i32 0)
  %137 = load %struct.adapter*, %struct.adapter** %3, align 8
  %138 = call i32 @BIT(i32 8)
  %139 = call i32 @BIT(i32 7)
  %140 = or i32 %138, %139
  %141 = call i32 @BIT(i32 6)
  %142 = or i32 %140, %141
  %143 = call i32 @phy_set_bb_reg(%struct.adapter* %137, i32 2148, i32 %142, i32 1)
  %144 = load %struct.adapter*, %struct.adapter** %3, align 8
  %145 = call i32 @BIT(i32 2)
  %146 = call i32 @BIT(i32 1)
  %147 = or i32 %145, %146
  %148 = call i32 @BIT(i32 0)
  %149 = or i32 %147, %148
  %150 = call i32 @phy_set_bb_reg(%struct.adapter* %144, i32 2148, i32 %149, i32 1)
  %151 = load %struct.adapter*, %struct.adapter** %3, align 8
  %152 = call i32 @BIT(i32 7)
  %153 = call i32 @phy_set_bb_reg(%struct.adapter* %151, i32 3152, i32 %152, i32 1)
  br label %154

154:                                              ; preds = %126, %17
  ret void
}

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
