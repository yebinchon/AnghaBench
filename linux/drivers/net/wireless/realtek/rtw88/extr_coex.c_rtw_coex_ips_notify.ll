; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_ips_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_ips_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32 }

@COEX_IPS_ENTER = common dso_local global i64 0, align 8
@COEX_SCBD_ALL = common dso_local global i32 0, align 4
@COEX_SET_ANT_WOFF = common dso_local global i32 0, align 4
@COEX_IPS_LEAVE = common dso_local global i64 0, align 8
@COEX_SCBD_ACTIVE = common dso_local global i32 0, align 4
@COEX_SCBD_ONOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_ips_notify(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_stat*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_coex* %8, %struct.rtw_coex** %5, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 1
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %6, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %46

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @COEX_IPS_ENTER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = load i32, i32* @COEX_SCBD_ALL, align 4
  %25 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %23, i32 %24, i32 0)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = load i32, i32* @COEX_SET_ANT_WOFF, align 4
  %28 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %26, i32 1, i32 %27)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = call i32 @rtw_coex_action_coex_all_off(%struct.rtw_dev* %29)
  br label %46

31:                                               ; preds = %16
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @COEX_IPS_LEAVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %37 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %38 = load i32, i32* @COEX_SCBD_ONOFF, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %36, i32 %39, i32 1)
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %42 = call i32 @__rtw_coex_init_hw_config(%struct.rtw_dev* %41, i32 0)
  %43 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %44 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %31
  br label %46

46:                                               ; preds = %15, %45, %20
  ret void
}

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_action_coex_all_off(%struct.rtw_dev*) #1

declare dso_local i32 @__rtw_coex_init_hw_config(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
