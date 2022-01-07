; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_dot11d.c_to_legal_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_dot11d.c_to_legal_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.rt_dot11d_info = type { i64* }

@MAX_CHANNEL_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"is_legal_channel(): Invalid Channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_legal_channel(%struct.ieee80211_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rt_dot11d_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %10 = call %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.ieee80211_device* %9)
  store %struct.rt_dot11d_info* %10, %struct.rt_dot11d_info** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %8, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %6, align 8
  %17 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %7, align 8
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  br label %11

29:                                               ; preds = %23, %11
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netdev_err(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %29
  %41 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %6, align 8
  %42 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %5, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %40
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %48, %33
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
