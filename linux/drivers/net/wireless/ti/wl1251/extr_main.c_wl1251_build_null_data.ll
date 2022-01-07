; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_build_null_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_build_null_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i32, i32 }
%struct.sk_buff = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@CMD_NULL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cmd buld null data failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*)* @wl1251_build_null_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_build_null_data(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %10 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  store i8* null, i8** %5, align 8
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %17 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %20 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.sk_buff* @ieee80211_nullfunc_get(i32 %18, i32 %21, i32 0)
  store %struct.sk_buff* %22, %struct.sk_buff** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %39

26:                                               ; preds = %15
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %26, %14
  %34 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %35 = load i32, i32* @CMD_NULL_DATA, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %34, i32 %35, i8* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @dev_kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @wl1251_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.sk_buff* @ieee80211_nullfunc_get(i32, i32, i32) #1

declare dso_local i32 @wl1251_cmd_template_set(%struct.wl1251*, i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
