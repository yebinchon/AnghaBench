; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_c2h_cmd_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_c2h_cmd_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.rtw_c2h_cmd = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_fw_c2h_cmd_handle(%struct.rtw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtw_c2h_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  %18 = inttoptr i64 %17 to %struct.rtw_c2h_cmd*
  store %struct.rtw_c2h_cmd* %18, %struct.rtw_c2h_cmd** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %21, %22
  %24 = sub nsw i64 %23, 2
  store i64 %24, i64* %7, align 8
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.rtw_c2h_cmd*, %struct.rtw_c2h_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.rtw_c2h_cmd, %struct.rtw_c2h_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %49 [
    i32 130, label %31
    i32 128, label %38
    i32 129, label %45
  ]

31:                                               ; preds = %2
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load %struct.rtw_c2h_cmd*, %struct.rtw_c2h_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.rtw_c2h_cmd, %struct.rtw_c2h_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @rtw_coex_bt_info_notify(%struct.rtw_dev* %32, i32 %35, i64 %36)
  br label %50

38:                                               ; preds = %2
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = load %struct.rtw_c2h_cmd*, %struct.rtw_c2h_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.rtw_c2h_cmd, %struct.rtw_c2h_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @rtw_coex_wl_fwdbginfo_notify(%struct.rtw_dev* %39, i32 %42, i64 %43)
  br label %50

45:                                               ; preds = %2
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @rtw_fw_c2h_cmd_handle_ext(%struct.rtw_dev* %46, %struct.sk_buff* %47)
  br label %50

49:                                               ; preds = %2
  br label %50

50:                                               ; preds = %49, %45, %38, %31
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_coex_bt_info_notify(%struct.rtw_dev*, i32, i64) #1

declare dso_local i32 @rtw_coex_wl_fwdbginfo_notify(%struct.rtw_dev*, i32, i64) #1

declare dso_local i32 @rtw_fw_c2h_cmd_handle_ext(%struct.rtw_dev*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
