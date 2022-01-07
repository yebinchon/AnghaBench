; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_channel.c_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_channel.c_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i64*, i64, i64, i64, i32, i32, i64, i32, i64, i64 }
%struct.ieee80211_channel = type { i32 }

@MAC_REG_MACCR = common dso_local global i32 0, align 4
@MACCR_CLRNAV = common dso_local global i32 0, align 4
@RF_AIROHA7230 = common dso_local global i64 0, align 8
@REV_ID_VT3253_B1 = common dso_local global i64 0, align 8
@RATE_1M = common dso_local global i32 0, align 4
@MAC_REG_PWRCCK = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i32 0, align 4
@MAC_REG_PWROFDM = common dso_local global i64 0, align 8
@BB_TYPE_11B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_channel(%struct.vnt_private* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %9 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %172

17:                                               ; preds = %2
  %18 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %19 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %39 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %41 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @BBvSetVGAGainOffset(%struct.vnt_private* %40, i64 %43)
  br label %45

45:                                               ; preds = %32, %22, %17
  %46 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @MAC_REG_MACCR, align 4
  %50 = load i32, i32* @MACCR_CLRNAV, align 4
  %51 = call i32 @MACvRegBitsOn(i64 %48, i32 %49, i32 %50)
  %52 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RF_AIROHA7230, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %59 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %60 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RFbAL7230SelectChannelPostProcess(%struct.vnt_private* %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %57, %45
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %71 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %73 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %74 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @RFbSelectChannel(%struct.vnt_private* %72, i64 %75, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %83 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %66
  %87 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %88 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @RFvWriteWakeProgSyn(%struct.vnt_private* %87, i64 %90, i32 %93)
  br label %95

95:                                               ; preds = %86, %66
  %96 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %97 = call i32 @BBvSoftwareReset(%struct.vnt_private* %96)
  %98 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %99 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @REV_ID_VT3253_B1, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %150

103:                                              ; preds = %95
  %104 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %105 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %104, i32 0, i32 6
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %109 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @MACvSelectPage1(i64 %110)
  %112 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %113 = load i32, i32* @RATE_1M, align 4
  %114 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %115 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @RFbSetPower(%struct.vnt_private* %112, i32 %113, i32 %116)
  %118 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %119 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MAC_REG_PWRCCK, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %124 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @VNSvOutPortB(i64 %122, i32 %125)
  %127 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %128 = load i32, i32* @RATE_6M, align 4
  %129 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %130 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @RFbSetPower(%struct.vnt_private* %127, i32 %128, i32 %131)
  %133 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %134 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MAC_REG_PWROFDM, align 8
  %137 = add nsw i64 %135, %136
  %138 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %139 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @VNSvOutPortB(i64 %137, i32 %140)
  %142 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %143 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @MACvSelectPage0(i64 %144)
  %146 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %147 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %146, i32 0, i32 6
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  br label %150

150:                                              ; preds = %103, %95
  %151 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %152 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @BB_TYPE_11B, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %158 = load i32, i32* @RATE_1M, align 4
  %159 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %160 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @RFbSetPower(%struct.vnt_private* %157, i32 %158, i32 %161)
  br label %170

163:                                              ; preds = %150
  %164 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %165 = load i32, i32* @RATE_6M, align 4
  %166 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %167 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @RFbSetPower(%struct.vnt_private* %164, i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %163, %156
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %15
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @BBvSetVGAGainOffset(%struct.vnt_private*, i64) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @RFbAL7230SelectChannelPostProcess(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @RFbSelectChannel(%struct.vnt_private*, i64, i32) #1

declare dso_local i32 @RFvWriteWakeProgSyn(%struct.vnt_private*, i64, i32) #1

declare dso_local i32 @BBvSoftwareReset(%struct.vnt_private*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @RFbSetPower(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
