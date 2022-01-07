; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_get_free_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_get_free_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_sec_desc = type { i32, i64 }

@RTW_MAX_SEC_CAM_NUM = common dso_local global i32 0, align 4
@RTW_SEC_DEFAULT_KEY_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_sec_get_free_cam(%struct.rtw_sec_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_sec_desc*, align 8
  store %struct.rtw_sec_desc* %0, %struct.rtw_sec_desc** %3, align 8
  %4 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %3, align 8
  %5 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RTW_MAX_SEC_CAM_NUM, align 4
  %13 = load i32, i32* @RTW_SEC_DEFAULT_KEY_NUM, align 4
  %14 = call i32 @find_next_zero_bit(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RTW_MAX_SEC_CAM_NUM, align 4
  %20 = call i32 @find_first_zero_bit(i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
