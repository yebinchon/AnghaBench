; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32, i8*, i8* }

@RF_PATH_A = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dpk_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_information(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dpk_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.rtw_dpk_info* %8, %struct.rtw_dpk_info** %3, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = load i32, i32* @RF_PATH_A, align 4
  %11 = load i32, i32* @RFREG_MASK, align 4
  %12 = call i32 @rtw_read_rf(%struct.rtw_dev* %9, i32 %10, i32 24, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = call i32 @BIT(i32 16)
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @FIELD_GET(i32 %13, i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %20 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @FIELD_GET(i32 255, i32 %21)
  %23 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %24 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @FIELD_GET(i32 12288, i32 %25)
  %27 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %28 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  ret void
}

declare dso_local i32 @rtw_read_rf(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
