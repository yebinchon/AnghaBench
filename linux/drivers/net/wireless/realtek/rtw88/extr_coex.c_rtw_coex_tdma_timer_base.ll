; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_tdma_timer_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_tdma_timer_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32 }

@COEX_H2C69_TDMA_SLOT = common dso_local global i32 0, align 4
@PARA1_H2C69_TDMA_4SLOT = common dso_local global i32 0, align 4
@PARA1_H2C69_TDMA_2SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw_coex_tdma_timer_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_tdma_timer_base(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_stat*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_coex* %9, %struct.rtw_coex** %5, align 8
  %10 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %11 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %10, i32 0, i32 0
  store %struct.rtw_coex_stat* %11, %struct.rtw_coex_stat** %6, align 8
  %12 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %14 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %46

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @COEX_H2C69_TDMA_SLOT, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @PARA1_H2C69_TDMA_4SLOT, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  br label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @PARA1_H2C69_TDMA_2SLOT, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %38 = call i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev* %34, i32 %36, i32* %37)
  %39 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %40 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %45 = call i32 @rtw_coex_wl_ccklock_action(%struct.rtw_dev* %44)
  br label %46

46:                                               ; preds = %18, %43, %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev*, i32, i32*) #2

declare dso_local i32 @rtw_coex_wl_ccklock_action(%struct.rtw_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
