; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_set_channel_bwmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_set_channel_bwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@HT_CHANNEL_WIDTH_20 = common dso_local global i16 0, align 2
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i8 0, align 1
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_channel_bwmode(%struct.adapter* %0, i8 zeroext %1, i8 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i16 %3, i16* %8, align 2
  %10 = load i16, i16* %8, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @HT_CHANNEL_WIDTH_20, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %4
  %22 = load i8, i8* %6, align 1
  store i8 %22, i8* %9, align 1
  br label %40

23:                                               ; preds = %15
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @HAL_PRIME_CHNL_OFFSET_LOWER, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, 2
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  br label %39

34:                                               ; preds = %23
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 %36, 2
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @rtw_set_oper_ch(%struct.adapter* %41, i8 zeroext %42)
  %44 = load %struct.adapter*, %struct.adapter** %5, align 8
  %45 = load i16, i16* %8, align 2
  %46 = call i32 @rtw_set_oper_bw(%struct.adapter* %44, i16 zeroext %45)
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = load i8, i8* %7, align 1
  %49 = call i32 @rtw_set_oper_choffset(%struct.adapter* %47, i8 zeroext %48)
  %50 = load %struct.adapter*, %struct.adapter** %5, align 8
  %51 = load i8, i8* %9, align 1
  %52 = call i32 @rtw_hal_set_chan(%struct.adapter* %50, i8 zeroext %51)
  %53 = load %struct.adapter*, %struct.adapter** %5, align 8
  %54 = load i16, i16* %8, align 2
  %55 = load i8, i8* %7, align 1
  %56 = call i32 @SetBWMode(%struct.adapter* %53, i16 zeroext %54, i8 zeroext %55)
  ret void
}

declare dso_local i32 @rtw_set_oper_ch(%struct.adapter*, i8 zeroext) #1

declare dso_local i32 @rtw_set_oper_bw(%struct.adapter*, i16 zeroext) #1

declare dso_local i32 @rtw_set_oper_choffset(%struct.adapter*, i8 zeroext) #1

declare dso_local i32 @rtw_hal_set_chan(%struct.adapter*, i8 zeroext) #1

declare dso_local i32 @SetBWMode(%struct.adapter*, i16 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
