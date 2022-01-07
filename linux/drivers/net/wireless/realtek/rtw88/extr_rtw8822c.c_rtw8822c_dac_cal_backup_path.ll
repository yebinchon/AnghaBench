; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_dac_cal_backup_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_backup_path(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 28, i32* %5, align 4
  store i32 44, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rtw8822c_get_path_write_addr(i32 %16)
  %18 = add nsw i32 %17, 176
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rtw8822c_get_path_read_addr(i32 %19)
  %21 = add nsw i32 %20, 16
  store i32 %21, i32* %8, align 4
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @rtw8822c_dac_cal_backup_vec(%struct.rtw_dev* %22, i32 %23, i32 0, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @rtw8822c_get_path_write_addr(i32 %27)
  %29 = add nsw i32 %28, 176
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rtw8822c_get_path_read_addr(i32 %32)
  %34 = add nsw i32 %33, 16
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @rtw8822c_dac_cal_backup_vec(%struct.rtw_dev* %37, i32 %38, i32 1, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rtw8822c_get_path_write_addr(i32) #1

declare dso_local i32 @rtw8822c_get_path_read_addr(i32) #1

declare dso_local i32 @rtw8822c_dac_cal_backup_vec(%struct.rtw_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
