; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_init_channel_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_init_channel_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rt_channel_info = type { i32, i8* }

@MAX_CHANNEL_NUM = common dso_local global i32 0, align 4
@RT_CHANNEL_DOMAIN_MAX = common dso_local global i64 0, align 8
@RT_CHANNEL_DOMAIN_REALTEK_DEFINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"ChannelPlan ID %x error !!!!!\0A\00", align 1
@WIRELESS_11G = common dso_local global i32 0, align 4
@RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RTW_ChannelPlanMap = common dso_local global %struct.TYPE_6__* null, align 8
@RTW_ChannelPlan2G = common dso_local global %struct.TYPE_7__* null, align 8
@RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN = common dso_local global i64 0, align 8
@RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G = common dso_local global i64 0, align 8
@SCAN_ACTIVE = common dso_local global i8* null, align 8
@SCAN_PASSIVE = common dso_local global i8* null, align 8
@RT_CHANNEL_DOMAIN_WORLD_WIDE_13 = common dso_local global i64 0, align 8
@RT_CHANNEL_DOMAIN_2G_WORLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*, i64, %struct.rt_channel_info*)* @init_channel_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_channel_set(%struct.adapter* %0, i64 %1, %struct.rt_channel_info* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rt_channel_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rt_channel_info* %2, %struct.rt_channel_info** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %13 = load i32, i32* @MAX_CHANNEL_NUM, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(%struct.rt_channel_info* %12, i32 0, i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @RT_CHANNEL_DOMAIN_MAX, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @RT_CHANNEL_DOMAIN_REALTEK_DEFINE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @DBG_88E(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %4, align 8
  br label %168

29:                                               ; preds = %21, %3
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WIRELESS_11G, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  store i64 1, i64* %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @RT_CHANNEL_DOMAIN_REALTEK_DEFINE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE, i32 0, i32 0), align 8
  store i64 %42, i64* %11, align 8
  br label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @RTW_ChannelPlanMap, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %43, %41
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %166

53:                                               ; preds = %50
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %162, %53
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTW_ChannelPlan2G, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %55, %60
  br i1 %61, label %62, label %165

62:                                               ; preds = %54
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTW_ChannelPlan2G, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %71, i64 %72
  %74 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %62
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %124

82:                                               ; preds = %78, %62
  %83 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %83, i64 %84
  %86 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 1
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %90, i64 %91
  %93 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sle i32 %94, 11
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load i8*, i8** @SCAN_ACTIVE, align 8
  %98 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %98, i64 %99
  %101 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  br label %123

102:                                              ; preds = %89, %82
  %103 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %103, i64 %104
  %106 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 12
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %110, i64 %111
  %113 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sle i32 %114, 14
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i8*, i8** @SCAN_PASSIVE, align 8
  %118 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %118, i64 %119
  %121 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %120, i32 0, i32 1
  store i8* %117, i8** %121, align 8
  br label %122

122:                                              ; preds = %116, %109, %102
  br label %123

123:                                              ; preds = %122, %96
  br label %159

124:                                              ; preds = %78
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @RT_CHANNEL_DOMAIN_WORLD_WIDE_13, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @RT_CHANNEL_DOMAIN_2G_WORLD, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %128, %124
  %133 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %133, i64 %134
  %136 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sle i32 %137, 11
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i8*, i8** @SCAN_ACTIVE, align 8
  %141 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %141, i64 %142
  %144 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %143, i32 0, i32 1
  store i8* %140, i8** %144, align 8
  br label %151

145:                                              ; preds = %132
  %146 = load i8*, i8** @SCAN_PASSIVE, align 8
  %147 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %147, i64 %148
  %150 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %149, i32 0, i32 1
  store i8* %146, i8** %150, align 8
  br label %151

151:                                              ; preds = %145, %139
  br label %158

152:                                              ; preds = %128
  %153 = load i8*, i8** @SCAN_ACTIVE, align 8
  %154 = load %struct.rt_channel_info*, %struct.rt_channel_info** %7, align 8
  %155 = load i64, i64* %9, align 8
  %156 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %154, i64 %155
  %157 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %156, i32 0, i32 1
  store i8* %153, i8** %157, align 8
  br label %158

158:                                              ; preds = %152, %151
  br label %159

159:                                              ; preds = %158, %123
  %160 = load i64, i64* %9, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %9, align 8
  br label %162

162:                                              ; preds = %159
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %8, align 8
  br label %54

165:                                              ; preds = %54
  br label %166

166:                                              ; preds = %165, %50
  %167 = load i64, i64* %9, align 8
  store i64 %167, i64* %4, align 8
  br label %168

168:                                              ; preds = %166, %25
  %169 = load i64, i64* %4, align 8
  ret i64 %169
}

declare dso_local i32 @memset(%struct.rt_channel_info*, i32, i32) #1

declare dso_local i32 @DBG_88E(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
