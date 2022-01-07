; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_oaktrail.c_oaktrail_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_oaktrail.c_oaktrail_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"oaktrail-wifi\00", align 1
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@OT_EC_WIFI_MASK = common dso_local global i32 0, align 4
@wifi_rfkill = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"oaktrail-bluetooth\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@OT_EC_BT_MASK = common dso_local global i32 0, align 4
@bt_rfkill = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"oaktrail-gps\00", align 1
@RFKILL_TYPE_GPS = common dso_local global i32 0, align 4
@OT_EC_GPS_MASK = common dso_local global i32 0, align 4
@gps_rfkill = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"oaktrail-wwan\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@OT_EC_WWAN_MASK = common dso_local global i32 0, align 4
@wwan_rfkill = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @oaktrail_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_rfkill_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %4 = load i32, i32* @OT_EC_WIFI_MASK, align 4
  %5 = call i32* @oaktrail_rfkill_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  store i32* %5, i32** @wifi_rfkill, align 8
  %6 = load i32*, i32** @wifi_rfkill, align 8
  %7 = call i64 @IS_ERR(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32*, i32** @wifi_rfkill, align 8
  %11 = call i32 @PTR_ERR(i32* %10)
  store i32 %11, i32* %2, align 4
  store i32* null, i32** @wifi_rfkill, align 8
  br label %43

12:                                               ; preds = %0
  %13 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %14 = load i32, i32* @OT_EC_BT_MASK, align 4
  %15 = call i32* @oaktrail_rfkill_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14)
  store i32* %15, i32** @bt_rfkill, align 8
  %16 = load i32*, i32** @bt_rfkill, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32*, i32** @bt_rfkill, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %2, align 4
  store i32* null, i32** @bt_rfkill, align 8
  br label %43

22:                                               ; preds = %12
  %23 = load i32, i32* @RFKILL_TYPE_GPS, align 4
  %24 = load i32, i32* @OT_EC_GPS_MASK, align 4
  %25 = call i32* @oaktrail_rfkill_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24)
  store i32* %25, i32** @gps_rfkill, align 8
  %26 = load i32*, i32** @gps_rfkill, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** @gps_rfkill, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  store i32 %31, i32* %2, align 4
  store i32* null, i32** @gps_rfkill, align 8
  br label %43

32:                                               ; preds = %22
  %33 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %34 = load i32, i32* @OT_EC_WWAN_MASK, align 4
  %35 = call i32* @oaktrail_rfkill_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %34)
  store i32* %35, i32** @wwan_rfkill, align 8
  %36 = load i32*, i32** @wwan_rfkill, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** @wwan_rfkill, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %2, align 4
  store i32* null, i32** @wwan_rfkill, align 8
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %46

43:                                               ; preds = %39, %29, %19, %9
  %44 = call i32 (...) @oaktrail_rfkill_cleanup()
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32* @oaktrail_rfkill_new(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @oaktrail_rfkill_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
