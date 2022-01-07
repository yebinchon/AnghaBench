; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_bt_var_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_bt_var_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BT Coexistence = 0x%x\0A\00", align 1
@ANT_X2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"BlueTooth BT_Ant_Num = Antx2\0A\00", align 1
@ANT_X1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"BlueTooth BT_Ant_Num = Antx1\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"BlueTooth BT_CoexistType = BT_2Wire\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"BlueTooth BT_CoexistType = BT_ISSC_3Wire\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"BlueTooth BT_CoexistType = BT_ACCEL\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"BlueTooth BT_CoexistType = BT_CSR_BC4\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"BlueTooth BT_CoexistType = BT_CSR_BC8\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"BlueTooth BT_CoexistType = BT_RTL8756\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BlueTooth BT_CoexistType = Unknown\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"BlueTooth BT_Ant_isolation = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"BT_RadioSharedType = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_bt_var_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_bt_var_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 17
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 14
  store i64 %9, i64* %12, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 16
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 11
  store i64 %30, i64* %33, align 8
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 15
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 10
  store i64 %37, i64* %40, align 8
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = load i32, i32* @COMP_BT_COEXIST, align 4
  %43 = load i32, i32* @DBG_TRACE, align 4
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 14
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 14
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %160

54:                                               ; preds = %1
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i32 0, i32* %57, align 8
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  store i32 0, i32* %60, align 4
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  store i32 0, i32* %63, align 8
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 13
  store i64 0, i64* %66, align 8
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 12
  store i64 0, i64* %69, align 8
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ANT_X2, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %54
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = load i32, i32* @COMP_BT_COEXIST, align 4
  %79 = load i32, i32* @DBG_TRACE, align 4
  %80 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %94

81:                                               ; preds = %54
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ANT_X1, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = load i32, i32* @COMP_BT_COEXIST, align 4
  %91 = load i32, i32* @DBG_TRACE, align 4
  %92 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %93, %76
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %129 [
    i32 133, label %99
    i32 129, label %104
    i32 132, label %109
    i32 131, label %114
    i32 130, label %119
    i32 128, label %124
  ]

99:                                               ; preds = %94
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %101 = load i32, i32* @COMP_BT_COEXIST, align 4
  %102 = load i32, i32* @DBG_TRACE, align 4
  %103 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %134

104:                                              ; preds = %94
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %106 = load i32, i32* @COMP_BT_COEXIST, align 4
  %107 = load i32, i32* @DBG_TRACE, align 4
  %108 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %134

109:                                              ; preds = %94
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %111 = load i32, i32* @COMP_BT_COEXIST, align 4
  %112 = load i32, i32* @DBG_TRACE, align 4
  %113 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %134

114:                                              ; preds = %94
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %116 = load i32, i32* @COMP_BT_COEXIST, align 4
  %117 = load i32, i32* @DBG_TRACE, align 4
  %118 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %134

119:                                              ; preds = %94
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = load i32, i32* @COMP_BT_COEXIST, align 4
  %122 = load i32, i32* @DBG_TRACE, align 4
  %123 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %134

124:                                              ; preds = %94
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %126 = load i32, i32* @COMP_BT_COEXIST, align 4
  %127 = load i32, i32* @DBG_TRACE, align 4
  %128 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %134

129:                                              ; preds = %94
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %131 = load i32, i32* @COMP_BT_COEXIST, align 4
  %132 = load i32, i32* @DBG_TRACE, align 4
  %133 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %130, i32 %131, i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %124, %119, %114, %109, %104, %99
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %136 = load i32, i32* @COMP_BT_COEXIST, align 4
  %137 = load i32, i32* @DBG_TRACE, align 4
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 11
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 %141)
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %144 = load i32, i32* @COMP_BT_COEXIST, align 4
  %145 = load i32, i32* @DBG_TRACE, align 4
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %147 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %143, i32 %144, i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i64 %149)
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %152 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 9
  store i64 0, i64* %153, align 8
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %155 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 7
  store i32 0, i32* %156, align 4
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %158 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 8
  store i32 0, i32* %159, align 8
  br label %160

160:                                              ; preds = %134, %1
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
