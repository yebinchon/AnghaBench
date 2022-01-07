; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_check_bb_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_check_bb_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64*, i32, i32, i32, %struct.TYPE_10__*, i32*, i64, %struct.TYPE_9__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@BB_VGA_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"First RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\0A\00", align 1
@BB_VGA_CHANGE_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @vnt_check_bb_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_check_bb_vga(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %140

10:                                               ; preds = %1
  %11 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %140

21:                                               ; preds = %10
  %22 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %23 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %22, i32 0, i32 7
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %31 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %21
  br label %140

35:                                               ; preds = %29
  %36 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %37 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @RFvRSSITodBm(%struct.vnt_private* %36, i32 %40, i64* %3)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %67, %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @BB_VGA_LEVEL, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %49 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %47, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %42

70:                                               ; preds = %56, %42
  %71 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %72 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %75 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %80 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %140

81:                                               ; preds = %70
  %82 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %83 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %87 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %112

90:                                               ; preds = %81
  %91 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %92 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %93 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @BBvSetVGAGainOffset(%struct.vnt_private* %91, i32 %94)
  %96 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %97 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %96, i32 0, i32 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %3, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %103 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %106 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %109 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_dbg(i32* %99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %90, %81
  %113 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %114 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BB_VGA_CHANGE_THRESHOLD, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %112
  %119 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %120 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %119, i32 0, i32 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %3, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %126 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %129 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %132 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_dbg(i32* %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %136 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %137 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BBvSetVGAGainOffset(%struct.vnt_private* %135, i32 %138)
  br label %140

140:                                              ; preds = %9, %20, %34, %78, %118, %112
  ret void
}

declare dso_local i32 @RFvRSSITodBm(%struct.vnt_private*, i32, i64*) #1

declare dso_local i32 @BBvSetVGAGainOffset(%struct.vnt_private*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
