; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, i64, i32, i32, i32, i8*, i8*, i32, i32 (i32)*, i64 (i32)*, i32 (i32, i8*, i8*)* }

@IEEE80211_PS_DISABLED = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*)* @ieee80211_sta_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_ps(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IEEE80211_PS_DISABLED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IW_MODE_INFRA, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_LINKED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23, %17, %1
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 5
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %35 = call i32 @ieee80211_sta_wakeup(%struct.ieee80211_device* %34, i32 1)
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 5
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %29, %23
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %42 = call signext i16 @ieee80211_sta_ps_sleep(%struct.ieee80211_device* %41, i8** %3, i8** %4)
  store i16 %42, i16* %5, align 2
  %43 = load i16, i16* %5, align 2
  %44 = sext i16 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %126

47:                                               ; preds = %40
  %48 = load i16, i16* %5, align 2
  %49 = sext i16 %48 to i32
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 11
  %59 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %58, align 8
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 %59(i32 %62, i8* %63, i8* %64)
  br label %108

66:                                               ; preds = %51
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 5
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %77 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %76, i32 0, i32 10
  %78 = load i64 (i32)*, i64 (i32)** %77, align 8
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %80 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = call i64 %78(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %71
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 3
  store i32 2, i32* %86, align 8
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 9
  %89 = load i32 (i32)*, i32 (i32)** %88, align 8
  %90 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %91 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %89(i32 %92)
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %95 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %94, i32 1)
  %96 = load i8*, i8** %3, align 8
  %97 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %98 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %84, %71
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %104 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %103, i32 0, i32 5
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  br label %107

107:                                              ; preds = %102, %66
  br label %108

108:                                              ; preds = %107, %56
  br label %125

109:                                              ; preds = %47
  %110 = load i16, i16* %5, align 2
  %111 = sext i16 %110 to i32
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %115 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %114, i32 0, i32 5
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %119 = call i32 @ieee80211_sta_wakeup(%struct.ieee80211_device* %118, i32 1)
  %120 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %121 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %120, i32 0, i32 5
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %113, %109
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125, %46
  %127 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %128 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %127, i32 0, i32 4
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_sta_wakeup(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local signext i16 @ieee80211_sta_ps_sleep(%struct.ieee80211_device*, i8**, i8**) #1

declare dso_local i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
