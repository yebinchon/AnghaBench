; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_int.c_vnt_int_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_int.c_vnt_int_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.ieee80211_low_level_stats }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.vnt_interrupt_data = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"---->s_nsInterruptProcessData\0A\00", align 1
@TSR_VALID = common dso_local global i32 0, align 4
@ISR_BNTX = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@WLAN_CMD_BECON_SEND = common dso_local global i32 0, align 4
@ISR_TBTT = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@WLAN_CMD_TBTT_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_int_process_data(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca %struct.vnt_interrupt_data*, align 8
  %4 = alloca %struct.ieee80211_low_level_stats*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 6
  store %struct.ieee80211_low_level_stats* %6, %struct.ieee80211_low_level_stats** %4, align 8
  %7 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vnt_interrupt_data*
  store %struct.vnt_interrupt_data* %16, %struct.vnt_interrupt_data** %3, align 8
  %17 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %18 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TSR_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %25 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %26 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %29 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vnt_int_report_rate(%struct.vnt_private* %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %34 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TSR_VALID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %41 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %42 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %45 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vnt_int_report_rate(%struct.vnt_private* %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %32
  %49 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %50 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TSR_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %57 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %58 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %61 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vnt_int_report_rate(%struct.vnt_private* %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %55, %48
  %65 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %66 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TSR_VALID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %73 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %74 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %77 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @vnt_int_report_rate(%struct.vnt_private* %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %71, %64
  %81 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %82 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %190

85:                                               ; preds = %80
  %86 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %87 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ISR_BNTX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %94 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %100 = load i32, i32* @WLAN_CMD_BECON_SEND, align 4
  %101 = call i32 @vnt_schedule_command(%struct.vnt_private* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %92, %85
  %103 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %104 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ISR_TBTT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %102
  %110 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %111 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %110, i32 0, i32 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %109
  %120 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %121 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %126 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %125, i32 0, i32 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %132 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %124, %119
  %134 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %135 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %139 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %144 = load i32, i32* @WLAN_CMD_TBTT_WAKEUP, align 4
  %145 = call i32 @vnt_schedule_command(%struct.vnt_private* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %133
  br label %147

147:                                              ; preds = %146, %109, %102
  %148 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %149 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @le64_to_cpu(i32 %150)
  %152 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %153 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %155 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %158 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %156
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 4
  %163 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %164 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %167 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 4
  %172 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %173 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %176 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %174
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load %struct.vnt_interrupt_data*, %struct.vnt_interrupt_data** %3, align 8
  %182 = getelementptr inbounds %struct.vnt_interrupt_data, %struct.vnt_interrupt_data* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %185 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 4
  br label %190

190:                                              ; preds = %147, %80
  %191 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %192 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @vnt_int_report_rate(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_schedule_command(%struct.vnt_private*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
