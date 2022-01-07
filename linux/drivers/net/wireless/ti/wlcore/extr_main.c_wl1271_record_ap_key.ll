; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_record_ap_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_record_ap_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wl1271_ap_key** }
%struct.wl1271_ap_key = type { i64, i32, i32, i64, i32, i64, i64 }

@DEBUG_CRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"record ap key id %d\00", align 1
@MAX_KEY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_NUM_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"trying to record key replacement\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, i64, i64, i64, i64*, i64, i32, i32)* @wl1271_record_ap_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_record_ap_key(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl1271*, align 8
  %12 = alloca %struct.wl12xx_vif*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.wl1271_ap_key*, align 8
  %21 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %11, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64* %5, i64** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* @DEBUG_CRYPT, align 4
  %23 = load i64, i64* %13, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @wl1271_debug(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* @MAX_KEY_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %9
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %117

32:                                               ; preds = %9
  store i32 0, i32* %21, align 4
  br label %33

33:                                               ; preds = %66, %32
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* @MAX_NUM_KEYS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.wl1271_ap_key**, %struct.wl1271_ap_key*** %40, align 8
  %42 = load i32, i32* %21, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %41, i64 %43
  %45 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %44, align 8
  %46 = icmp eq %struct.wl1271_ap_key* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %69

48:                                               ; preds = %37
  %49 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %50 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.wl1271_ap_key**, %struct.wl1271_ap_key*** %51, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %52, i64 %54
  %56 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %55, align 8
  %57 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = call i32 @wl1271_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %117

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %21, align 4
  br label %33

69:                                               ; preds = %47, %33
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* @MAX_NUM_KEYS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %117

76:                                               ; preds = %69
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.wl1271_ap_key* @kzalloc(i32 48, i32 %77)
  store %struct.wl1271_ap_key* %78, %struct.wl1271_ap_key** %20, align 8
  %79 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %80 = icmp ne %struct.wl1271_ap_key* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %117

84:                                               ; preds = %76
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %87 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %90 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %89, i32 0, i32 6
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %93 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %95 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i64*, i64** %16, align 8
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @memcpy(i32 %96, i64* %97, i64 %98)
  %100 = load i64, i64* %17, align 8
  %101 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %102 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %105 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %108 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %20, align 8
  %110 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %111 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load %struct.wl1271_ap_key**, %struct.wl1271_ap_key*** %112, align 8
  %114 = load i32, i32* %21, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %113, i64 %115
  store %struct.wl1271_ap_key* %109, %struct.wl1271_ap_key** %116, align 8
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %84, %81, %73, %61, %29
  %118 = load i32, i32* %10, align 4
  ret i32 %118
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local %struct.wl1271_ap_key* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
