; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_firmware_checkready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_firmware_checkready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rt_firmware = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"LoadStaus(%d)\0A\00", align 1
@TCR = common dso_local global i32 0, align 4
@IMEM_CODE_DONE = common dso_local global i32 0, align 4
@IMEM_CHK_RPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"FW_STATUS_LOAD_IMEM FAIL CPU, Status=%x\0A\00", align 1
@EMEM_CODE_DONE = common dso_local global i32 0, align 4
@EMEM_CHK_RPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"FW_STATUS_LOAD_EMEM FAIL CPU, Status=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Enable CPU fail!\0A\00", align 1
@DMEM_CODE_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Polling DMEM code done fail ! cpustatus(%#x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"DMEM code download success, cpustatus(%#x)\0A\00", align 1
@FWRDY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Polling Load Firmware ready, cpustatus(%x)\0A\00", align 1
@LOAD_FW_READY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Polling Load Firmware ready fail ! cpustatus(%x)\0A\00", align 1
@TCR_ICV = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@RCR_APPFCS = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Current RCR settings(%#x)\0A\00", align 1
@LBKMD_SEL = common dso_local global i32 0, align 4
@LBK_NORMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Unknown status check!\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"loadfw_status(%d), rtstatus(%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92s_firmware_checkready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_firmware_checkready(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rt_firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %6, align 8
  %17 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.rt_firmware*
  store %struct.rt_firmware* %20, %struct.rt_firmware** %7, align 8
  store i32 0, i32* %9, align 4
  store i16 1000, i16* %10, align 2
  store i32 1, i32* %11, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = load i32, i32* @COMP_INIT, align 4
  %23 = load i32, i32* @DBG_LOUD, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.rt_firmware*, %struct.rt_firmware** %7, align 8
  %28 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %195 [
    i32 128, label %30
    i32 129, label %59
    i32 130, label %95
  ]

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %42, %30
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %33 = load i32, i32* @TCR, align 4
  %34 = call i32 @rtl_read_byte(%struct.rtl_priv* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @IMEM_CODE_DONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %46

40:                                               ; preds = %31
  %41 = call i32 @udelay(i32 5)
  br label %42

42:                                               ; preds = %40
  %43 = load i16, i16* %10, align 2
  %44 = add i16 %43, -1
  store i16 %44, i16* %10, align 2
  %45 = icmp ne i16 %43, 0
  br i1 %45, label %31, label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IMEM_CHK_RPT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i16, i16* %10, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %198

58:                                               ; preds = %51
  br label %197

59:                                               ; preds = %2
  br label %60

60:                                               ; preds = %71, %59
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = load i32, i32* @TCR, align 4
  %63 = call i32 @rtl_read_byte(%struct.rtl_priv* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @EMEM_CODE_DONE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %75

69:                                               ; preds = %60
  %70 = call i32 @udelay(i32 5)
  br label %71

71:                                               ; preds = %69
  %72 = load i16, i16* %10, align 2
  %73 = add i16 %72, -1
  store i16 %73, i16* %10, align 2
  %74 = icmp ne i16 %72, 0
  br i1 %74, label %60, label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @EMEM_CHK_RPT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i16, i16* %10, align 2
  %82 = sext i16 %81 to i32
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %198

87:                                               ; preds = %80
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = call i32 @_rtl92s_firmware_enable_cpu(%struct.ieee80211_hw* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %198

94:                                               ; preds = %87
  br label %197

95:                                               ; preds = %2
  br label %96

96:                                               ; preds = %107, %95
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %98 = load i32, i32* @TCR, align 4
  %99 = call i32 @rtl_read_byte(%struct.rtl_priv* %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @DMEM_CODE_DONE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %111

105:                                              ; preds = %96
  %106 = call i32 @udelay(i32 5)
  br label %107

107:                                              ; preds = %105
  %108 = load i16, i16* %10, align 2
  %109 = add i16 %108, -1
  store i16 %109, i16* %10, align 2
  %110 = icmp ne i16 %108, 0
  br i1 %110, label %96, label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @DMEM_CODE_DONE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i16, i16* %10, align 2
  %118 = sext i16 %117 to i32
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %198

123:                                              ; preds = %116
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %125 = load i32, i32* @COMP_INIT, align 4
  %126 = load i32, i32* @DBG_LOUD, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  store i16 2000, i16* %10, align 2
  br label %129

129:                                              ; preds = %140, %123
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %131 = load i32, i32* @TCR, align 4
  %132 = call i32 @rtl_read_byte(%struct.rtl_priv* %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @FWRDY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %144

138:                                              ; preds = %129
  %139 = call i32 @udelay(i32 40)
  br label %140

140:                                              ; preds = %138
  %141 = load i16, i16* %10, align 2
  %142 = add i16 %141, -1
  store i16 %142, i16* %10, align 2
  %143 = icmp ne i16 %141, 0
  br i1 %143, label %129, label %144

144:                                              ; preds = %140, %137
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %146 = load i32, i32* @COMP_INIT, align 4
  %147 = load i32, i32* @DBG_LOUD, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @LOAD_FW_READY, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* @LOAD_FW_READY, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %144
  %156 = load i16, i16* %10, align 2
  %157 = sext i16 %156 to i32
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155, %144
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %160)
  br label %198

162:                                              ; preds = %155
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = load i32, i32* @TCR, align 4
  %165 = call i32 @rtl_read_dword(%struct.rtl_priv* %163, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %167 = load i32, i32* @TCR, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @TCR_ICV, align 4
  %170 = xor i32 %169, -1
  %171 = and i32 %168, %170
  %172 = call i32 @rtl_write_dword(%struct.rtl_priv* %166, i32 %167, i32 %171)
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %174 = load i32, i32* @RCR, align 4
  %175 = call i32 @rtl_read_dword(%struct.rtl_priv* %173, i32 %174)
  store i32 %175, i32* %8, align 4
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %177 = load i32, i32* @RCR, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @RCR_APPFCS, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @RCR_APP_ICV, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @RCR_APP_MIC, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @rtl_write_dword(%struct.rtl_priv* %176, i32 %177, i32 %184)
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %187 = load i32, i32* @COMP_INIT, align 4
  %188 = load i32, i32* @DBG_LOUD, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %189)
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %192 = load i32, i32* @LBKMD_SEL, align 4
  %193 = load i32, i32* @LBK_NORMAL, align 4
  %194 = call i32 @rtl_write_byte(%struct.rtl_priv* %191, i32 %192, i32 %193)
  br label %197

195:                                              ; preds = %2
  %196 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %197

197:                                              ; preds = %195, %162, %94, %58
  br label %198

198:                                              ; preds = %197, %159, %120, %92, %84, %55
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %200 = load i32, i32* @COMP_INIT, align 4
  %201 = load i32, i32* @DBG_LOUD, align 4
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* %11, align 4
  %204 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %199, i32 %200, i32 %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %202, i32 %203)
  %205 = load i32, i32* %11, align 4
  ret i32 %205
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @_rtl92s_firmware_enable_cpu(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
