; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup_vec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i64*** }

@DACK_MSBK_BACKUP_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i64, i64)* @rtw8822c_dac_cal_backup_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_backup_vec(%struct.rtw_dev* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rtw_dm_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_dm_info* %15, %struct.rtw_dm_info** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %52

22:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @DACK_MSBK_BACKUP_NUM, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @rtw_write32_mask(%struct.rtw_dev* %28, i64 %29, i32 -268435456, i64 %30)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @rtw_read32_mask(%struct.rtw_dev* %32, i64 %33, i32 133955584)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %11, align 8
  %37 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %36, i32 0, i32 0
  %38 = load i64***, i64**** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64**, i64*** %38, i64 %40
  %42 = load i64**, i64*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %35, i64* %48, align 8
  br label %49

49:                                               ; preds = %27
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %23

52:                                               ; preds = %21, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i64, i32, i64) #1

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
