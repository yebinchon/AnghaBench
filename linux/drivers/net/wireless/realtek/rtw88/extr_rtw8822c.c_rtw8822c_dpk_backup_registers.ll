; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_backup_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_backup_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_backup_info = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64*, i64, %struct.rtw_backup_info*)* @rtw8822c_dpk_backup_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_backup_registers(%struct.rtw_dev* %0, i64* %1, i64 %2, %struct.rtw_backup_info* %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rtw_backup_info*, align 8
  %9 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.rtw_backup_info* %3, %struct.rtw_backup_info** %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %37, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %15, i64 %16
  %18 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %23, i64 %24
  %26 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %25, i32 0, i32 1
  store i64 %22, i64* %26, align 8
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @rtw_read32(%struct.rtw_dev* %27, i64 %31)
  %33 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %33, i64 %34
  %36 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  br label %37

37:                                               ; preds = %14
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %10

40:                                               ; preds = %10
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
