; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.wl1251_cmd_scan = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i64, i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i8*, i8* }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cmd scan channels %d\00", align 1
@SCAN_MAX_NUM_OF_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFG_RX_ALL_GOOD = common dso_local global i32 0, align 4
@CFG_RX_PRSP_EN = common dso_local global i32 0, align 4
@CFG_RX_MGMT_EN = common dso_local global i32 0, align 4
@CFG_RX_BCN_EN = common dso_local global i32 0, align 4
@WL1251_SCAN_OPT_PRIORITY_HIGH = common dso_local global i32 0, align 4
@WL1251_SCAN_MIN_DURATION = common dso_local global i32 0, align 4
@WL1251_SCAN_MAX_DURATION = common dso_local global i32 0, align 4
@CMD_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cmd scan failed: %d\00", align 1
@CMD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cmd scan status wasn't success: %d\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_scan(%struct.wl1251* %0, i32* %1, i64 %2, %struct.ieee80211_channel** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl1251*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ieee80211_channel**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wl1251_cmd_scan*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.ieee80211_channel** %3, %struct.ieee80211_channel*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @DEBUG_CMD, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @wl1251_debug(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @SCAN_MAX_NUM_OF_CHANNELS, align 4
  %22 = icmp ugt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.wl1251_cmd_scan* @kzalloc(i32 72, i32 %25)
  store %struct.wl1251_cmd_scan* %26, %struct.wl1251_cmd_scan** %14, align 8
  %27 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %28 = icmp ne %struct.wl1251_cmd_scan* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %200

32:                                               ; preds = %6
  %33 = load i32, i32* @CFG_RX_ALL_GOOD, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %36 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 8
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @CFG_RX_PRSP_EN, align 4
  %39 = load i32, i32* @CFG_RX_MGMT_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CFG_RX_BCN_EN, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %45 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 7
  store i8* %43, i8** %46, align 8
  %47 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %48 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  store i32 0, i32* %49, align 4
  %50 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %51 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @is_zero_ether_addr(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %32
  %56 = load i32, i32* @WL1251_SCAN_OPT_PRIORITY_HIGH, align 4
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %59 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %55, %32
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %66 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %70 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = call i32 @cpu_to_le16(i32 2)
  %73 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %74 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 8
  %76 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %77 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %146, %63
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %149

83:                                               ; preds = %79
  %84 = load i32, i32* @WL1251_SCAN_MIN_DURATION, align 4
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %87 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  store i8* %85, i8** %92, align 8
  %93 = load i32, i32* @WL1251_SCAN_MAX_DURATION, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %96 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  store i8* %94, i8** %101, align 8
  %102 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %103 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = call i32 @memset(i32* %108, i32 255, i32 4)
  %110 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %111 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = call i32 @memset(i32* %116, i32 255, i32 2)
  %118 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %119 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %126 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %11, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %132, i64 %134
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %135, align 8
  %137 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %140 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 8
  br label %146

146:                                              ; preds = %83
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %79

149:                                              ; preds = %79
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %152 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  store i64 %150, i64* %153, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %158 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call i32 @memcpy(i32 %160, i32* %161, i64 %162)
  br label %164

164:                                              ; preds = %156, %149
  %165 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %166 = load i32, i32* @CMD_SCAN, align 4
  %167 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %168 = call i32 @wl1251_cmd_send(%struct.wl1251* %165, i32 %166, %struct.wl1251_cmd_scan* %167, i32 72)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @wl1251_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  br label %196

174:                                              ; preds = %164
  %175 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %176 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %177 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %180 = call i32 @wl1251_mem_read(%struct.wl1251* %175, i32 %178, %struct.wl1251_cmd_scan* %179, i32 72)
  %181 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %182 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @CMD_STATUS_SUCCESS, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %174
  %188 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %189 = getelementptr inbounds %struct.wl1251_cmd_scan, %struct.wl1251_cmd_scan* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @wl1251_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %16, align 4
  br label %196

195:                                              ; preds = %174
  br label %196

196:                                              ; preds = %195, %187, %171
  %197 = load %struct.wl1251_cmd_scan*, %struct.wl1251_cmd_scan** %14, align 8
  %198 = call i32 @kfree(%struct.wl1251_cmd_scan* %197)
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %196, %29
  %201 = load i32, i32* %7, align 4
  ret i32 %201
}

declare dso_local i32 @wl1251_debug(i32, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.wl1251_cmd_scan* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, %struct.wl1251_cmd_scan*, i32) #1

declare dso_local i32 @wl1251_error(i8*, i32) #1

declare dso_local i32 @wl1251_mem_read(%struct.wl1251*, i32, %struct.wl1251_cmd_scan*, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_cmd_scan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
