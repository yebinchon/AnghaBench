; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@MAC_REG_RCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"rx mode in = %x\0A\00", align 1
@MAC_REG_MAR0 = common dso_local global i64 0, align 8
@RCR_MULTICAST = common dso_local global i32 0, align 4
@RCR_BROADCAST = common dso_local global i32 0, align 4
@RCR_BSSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rx mode out= %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @vnt_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_configure(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnt_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.vnt_private*, %struct.vnt_private** %13, align 8
  store %struct.vnt_private* %14, %struct.vnt_private** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @FIF_ALLMULTI, align 4
  %16 = load i32, i32* @FIF_OTHER_BSS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC_REG_RCR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @VNSvInPortB(i64 %27, i32* %10)
  %29 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @FIF_ALLMULTI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %119

39:                                               ; preds = %4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FIF_ALLMULTI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %111

45:                                               ; preds = %39
  %46 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 3
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %51 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %76

54:                                               ; preds = %45
  %55 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %56 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @MACvSelectPage1(i64 %57)
  %59 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %60 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MAC_REG_MAR0, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @VNSvOutPortD(i64 %63, i32 -1)
  %65 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %66 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MAC_REG_MAR0, align 8
  %69 = add nsw i64 %67, %68
  %70 = add nsw i64 %69, 4
  %71 = call i32 @VNSvOutPortD(i64 %70, i32 -1)
  %72 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %73 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @MACvSelectPage0(i64 %74)
  br label %101

76:                                               ; preds = %45
  %77 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %78 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @MACvSelectPage1(i64 %79)
  %81 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %82 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MAC_REG_MAR0, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @VNSvOutPortD(i64 %85, i32 %86)
  %88 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MAC_REG_MAR0, align 8
  %92 = add nsw i64 %90, %91
  %93 = add nsw i64 %92, 4
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 32
  %96 = call i32 @VNSvOutPortD(i64 %93, i32 %95)
  %97 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %98 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @MACvSelectPage0(i64 %99)
  br label %101

101:                                              ; preds = %76, %54
  %102 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %103 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %102, i32 0, i32 3
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i32, i32* @RCR_MULTICAST, align 4
  %107 = load i32, i32* @RCR_BROADCAST, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %118

111:                                              ; preds = %39
  %112 = load i32, i32* @RCR_MULTICAST, align 4
  %113 = load i32, i32* @RCR_BROADCAST, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %111, %101
  br label %119

119:                                              ; preds = %118, %4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @FIF_OTHER_BSS, align 4
  %122 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %119
  %127 = load i32, i32* @RCR_MULTICAST, align 4
  %128 = load i32, i32* @RCR_BROADCAST, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @FIF_OTHER_BSS, align 4
  %135 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %126
  %140 = load i32, i32* @RCR_BSSID, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %148

144:                                              ; preds = %126
  %145 = load i32, i32* @RCR_BSSID, align 4
  %146 = load i32, i32* %10, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %144, %139
  br label %149

149:                                              ; preds = %148, %119
  %150 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %151 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MAC_REG_RCR, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @VNSvOutPortB(i64 %154, i32 %155)
  %157 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %158 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @dev_dbg(i32* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  ret void
}

declare dso_local i32 @VNSvInPortB(i64, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
