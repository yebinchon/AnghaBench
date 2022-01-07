; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wl1271_cmd_cal_p2g = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@DEBUG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"testmode cmd test\00", align 1
@WL1271_TM_ATTR_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WL1271_TM_ATTR_ANSWER = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"testmode cmd test failed: %d\00", align 1
@TEST_CMD_P2G_CAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"testmode cmd: radio status=%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl1271_tm_cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tm_cmd_test(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wl1271_cmd_cal_p2g*, align 8
  %13 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* @DEBUG_TESTMODE, align 4
  %15 = call i32 @wl1271_debug(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %165

24:                                               ; preds = %2
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i8* @nla_data(%struct.nlattr* %28)
  store i8* %29, i8** %10, align 8
  %30 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %31 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nla_len(%struct.nlattr* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @WL1271_TM_ATTR_ANSWER, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %42 = load i64, i64* @WL1271_TM_ATTR_ANSWER, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i64 @nla_get_u8(%struct.nlattr* %44)
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %40, %24
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %165

53:                                               ; preds = %46
  %54 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WLCORE_STATE_ON, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %160

68:                                               ; preds = %53
  %69 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pm_runtime_get_sync(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %77 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pm_runtime_put_noidle(i32 %78)
  br label %160

80:                                               ; preds = %68
  %81 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @wl1271_cmd_test(%struct.wl1271* %81, i8* %82, i32 %83, i64 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %151

91:                                               ; preds = %80
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %150

94:                                               ; preds = %91
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to %struct.wl1271_cmd_cal_p2g*
  store %struct.wl1271_cmd_cal_p2g* %96, %struct.wl1271_cmd_cal_p2g** %12, align 8
  %97 = load %struct.wl1271_cmd_cal_p2g*, %struct.wl1271_cmd_cal_p2g** %12, align 8
  %98 = getelementptr inbounds %struct.wl1271_cmd_cal_p2g, %struct.wl1271_cmd_cal_p2g* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le16_to_cpu(i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load %struct.wl1271_cmd_cal_p2g*, %struct.wl1271_cmd_cal_p2g** %12, align 8
  %102 = getelementptr inbounds %struct.wl1271_cmd_cal_p2g, %struct.wl1271_cmd_cal_p2g* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TEST_CMD_P2G_CAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %94
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @wl1271_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %116

113:                                              ; preds = %107, %94
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @wl1271_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @nla_total_size(i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %123, i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %9, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %116
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %151

131:                                              ; preds = %116
  %132 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %133 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = call i64 @nla_put(%struct.sk_buff* %132, i64 %133, i32 %134, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = call i32 @kfree_skb(%struct.sk_buff* %139)
  %141 = load i32, i32* @EMSGSIZE, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %151

143:                                              ; preds = %131
  %144 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %145 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %151

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %91
  br label %151

151:                                              ; preds = %150, %148, %138, %128, %88
  %152 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %153 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @pm_runtime_mark_last_busy(i32 %154)
  %156 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %157 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pm_runtime_put_autosuspend(i32 %158)
  br label %160

160:                                              ; preds = %151, %75, %65
  %161 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %162 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %161, i32 0, i32 1
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %160, %50, %21
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl1271_cmd_test(%struct.wl1271*, i8*, i32, i64) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wl1271_info(i8*, i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i64, i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_testmode_reply(%struct.sk_buff*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
