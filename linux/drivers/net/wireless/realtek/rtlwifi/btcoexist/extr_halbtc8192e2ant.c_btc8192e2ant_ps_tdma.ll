; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[BTCoex], %s turn %s PS TDMA, type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"[BTCoex], bPrePsTdmaOn = %d, bCurPsTdmaOn = %d!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"[BTCoex], prePsTdma = %d, curPsTdma = %d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8192e2ant_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 1
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %9, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %36 = load i32, i32* @COMP_BT_COEXIST, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %46 = load i32, i32* @COMP_BT_COEXIST, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %34
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %177

71:                                               ; preds = %62, %34
  br label %72

72:                                               ; preds = %71, %4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %145

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %78 [
    i32 1, label %77
    i32 2, label %81
    i32 3, label %84
    i32 4, label %87
    i32 5, label %90
    i32 6, label %93
    i32 7, label %96
    i32 8, label %99
    i32 9, label %102
    i32 10, label %105
    i32 11, label %108
    i32 12, label %111
    i32 13, label %114
    i32 14, label %117
    i32 15, label %120
    i32 16, label %123
    i32 17, label %126
    i32 18, label %129
    i32 19, label %132
    i32 20, label %135
    i32 21, label %138
    i32 71, label %141
  ]

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %75, %77
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %80 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %79, i32 227, i32 26, i32 26, i32 225, i32 144)
  br label %144

81:                                               ; preds = %75
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %83 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %82, i32 227, i32 18, i32 18, i32 225, i32 144)
  br label %144

84:                                               ; preds = %75
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %86 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %85, i32 227, i32 28, i32 3, i32 241, i32 144)
  br label %144

87:                                               ; preds = %75
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %89 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %88, i32 227, i32 16, i32 3, i32 241, i32 144)
  br label %144

90:                                               ; preds = %75
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %92 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %91, i32 227, i32 26, i32 26, i32 96, i32 144)
  br label %144

93:                                               ; preds = %75
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %95 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %94, i32 227, i32 18, i32 18, i32 96, i32 144)
  br label %144

96:                                               ; preds = %75
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %98 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %97, i32 227, i32 28, i32 3, i32 112, i32 144)
  br label %144

99:                                               ; preds = %75
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %101 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %100, i32 163, i32 16, i32 3, i32 112, i32 144)
  br label %144

102:                                              ; preds = %75
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %104 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %103, i32 227, i32 26, i32 26, i32 225, i32 16)
  br label %144

105:                                              ; preds = %75
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %107 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %106, i32 227, i32 18, i32 18, i32 225, i32 16)
  br label %144

108:                                              ; preds = %75
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %110 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %109, i32 227, i32 28, i32 3, i32 241, i32 16)
  br label %144

111:                                              ; preds = %75
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %113 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %112, i32 227, i32 16, i32 3, i32 241, i32 16)
  br label %144

114:                                              ; preds = %75
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %116 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %115, i32 227, i32 26, i32 26, i32 224, i32 16)
  br label %144

117:                                              ; preds = %75
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %119 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %118, i32 227, i32 18, i32 18, i32 224, i32 16)
  br label %144

120:                                              ; preds = %75
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %122 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %121, i32 227, i32 28, i32 3, i32 240, i32 16)
  br label %144

123:                                              ; preds = %75
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %125 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %124, i32 227, i32 18, i32 3, i32 240, i32 16)
  br label %144

126:                                              ; preds = %75
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %128 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %127, i32 97, i32 32, i32 3, i32 16, i32 16)
  br label %144

129:                                              ; preds = %75
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %131 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %130, i32 227, i32 5, i32 5, i32 225, i32 144)
  br label %144

132:                                              ; preds = %75
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %134 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %133, i32 227, i32 37, i32 37, i32 225, i32 144)
  br label %144

135:                                              ; preds = %75
  %136 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %137 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %136, i32 227, i32 37, i32 37, i32 96, i32 144)
  br label %144

138:                                              ; preds = %75
  %139 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %140 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %139, i32 227, i32 21, i32 3, i32 112, i32 144)
  br label %144

141:                                              ; preds = %75
  %142 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %143 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %142, i32 227, i32 26, i32 26, i32 225, i32 144)
  br label %144

144:                                              ; preds = %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78
  br label %166

145:                                              ; preds = %72
  %146 = load i32, i32* %8, align 4
  switch i32 %146, label %147 [
    i32 0, label %148
    i32 1, label %156
  ]

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %145, %147
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %150 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %149, i32 8, i32 0, i32 0, i32 0, i32 0)
  %151 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %152 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %151, i32 0, i32 0
  %153 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %152, align 8
  %154 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %155 = call i32 %153(%struct.btc_coexist* %154, i32 2348, i32 4)
  br label %165

156:                                              ; preds = %145
  %157 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %158 = call i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %157, i32 0, i32 0, i32 0, i32 8, i32 0)
  %159 = call i32 @mdelay(i32 5)
  %160 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %161 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %160, i32 0, i32 0
  %162 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %161, align 8
  %163 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %164 = call i32 %162(%struct.btc_coexist* %163, i32 2348, i32 32)
  br label %165

165:                                              ; preds = %156, %148
  br label %166

166:                                              ; preds = %165, %144
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %166, %70
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
