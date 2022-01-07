; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_start_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_start_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32*, i32*, i64, i32, i32 (i32, i32)*, i64, i64*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i16, i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i16 0, align 2
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@IW_MODE_MONITOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_start_protocol(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  store i16 0, i16* %3, align 2
  store i32 0, i32* %4, align 4
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %6 = call i32 @rtllib_update_active_chan_map(%struct.rtllib_device* %5)
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %150

12:                                               ; preds = %1
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %16 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i16, i16* %3, align 2
  %24 = add i16 %23, 1
  store i16 %24, i16* %3, align 2
  %25 = load i16, i16* %3, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* @MAX_CHANNEL_NUMBER, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %150

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %34 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = load i16, i16* %3, align 2
  %37 = sext i16 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %22, label %42

42:                                               ; preds = %32
  %43 = load i16, i16* %3, align 2
  %44 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %45 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i16 %43, i16* %46, align 8
  br label %47

47:                                               ; preds = %42, %12
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %55 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 100, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %47
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 17
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %63 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 -1, i32* %67, align 4
  %68 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %69 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 -1, i32* %73, align 4
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 7
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %58

83:                                               ; preds = %58
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %85 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %84, i32 0, i32 5
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = icmp ne i32 (i32, i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %90 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %89, i32 0, i32 5
  %91 = load i32 (i32, i32)*, i32 (i32, i32)** %90, align 8
  %92 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %93 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32 %94, i32 0)
  br label %96

96:                                               ; preds = %88, %83
  %97 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %98 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %100 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IW_MODE_INFRA, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %106 = call i32 @rtllib_start_bss(%struct.rtllib_device* %105)
  br label %150

107:                                              ; preds = %96
  %108 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %109 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IW_MODE_ADHOC, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %115 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %114, i32 0, i32 5
  %116 = load i32 (i32, i32)*, i32 (i32, i32)** %115, align 8
  %117 = icmp ne i32 (i32, i32)* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %120 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %119, i32 0, i32 5
  %121 = load i32 (i32, i32)*, i32 (i32, i32)** %120, align 8
  %122 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %123 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %121(i32 %124, i32 1)
  br label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %128 = call i32 @rtllib_start_ibss(%struct.rtllib_device* %127)
  br label %149

129:                                              ; preds = %107
  %130 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %131 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IW_MODE_MASTER, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %137 = call i32 @rtllib_start_master_bss(%struct.rtllib_device* %136)
  br label %148

138:                                              ; preds = %129
  %139 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %140 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @IW_MODE_MONITOR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %146 = call i32 @rtllib_start_monitor_mode(%struct.rtllib_device* %145)
  br label %147

147:                                              ; preds = %144, %138
  br label %148

148:                                              ; preds = %147, %135
  br label %149

149:                                              ; preds = %148, %126
  br label %150

150:                                              ; preds = %11, %30, %149, %104
  ret void
}

declare dso_local i32 @rtllib_update_active_chan_map(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_start_bss(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_start_ibss(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_start_master_bss(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_start_monitor_mode(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
