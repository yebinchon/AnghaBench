; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RF_PATH_A = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dac_cal_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_backup(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca [3 x i32], align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = call i32 @rtw_read32(%struct.rtw_dev* %4, i32 6240)
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 %5, i32* %6, align 4
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = call i32 @rtw_read32(%struct.rtw_dev* %7, i32 16736)
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 %8, i32* %9, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = call i32 @rtw_read32(%struct.rtw_dev* %10, i32 2484)
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = call i32 @rtw_write32(%struct.rtw_dev* %13, i32 2484, i32 -614016256)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = call i32 @BIT(i32 30)
  %17 = call i32 @rtw_write32_clr(%struct.rtw_dev* %15, i32 6192, i32 %16)
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %18, i32 6240, i32 -67108864, i32 60)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %21 = load i32, i32* @RF_PATH_A, align 4
  %22 = call i32 @rtw8822c_dac_cal_backup_path(%struct.rtw_dev* %20, i32 %21)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %24 = call i32 @BIT(i32 30)
  %25 = call i32 @rtw_write32_clr(%struct.rtw_dev* %23, i32 16688, i32 %24)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %26, i32 16736, i32 -67108864, i32 60)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = load i32, i32* @RF_PATH_B, align 4
  %30 = call i32 @rtw8822c_dac_cal_backup_path(%struct.rtw_dev* %28, i32 %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %32 = call i32 @rtw8822c_dac_cal_backup_dck(%struct.rtw_dev* %31)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %34 = call i32 @BIT(i32 30)
  %35 = call i32 @rtw_write32_set(%struct.rtw_dev* %33, i32 6192, i32 %34)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %37 = call i32 @BIT(i32 30)
  %38 = call i32 @rtw_write32_set(%struct.rtw_dev* %36, i32 16688, i32 %37)
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rtw_write32(%struct.rtw_dev* %39, i32 6240, i32 %41)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtw_write32(%struct.rtw_dev* %43, i32 16736, i32 %45)
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rtw_write32(%struct.rtw_dev* %47, i32 2484, i32 %49)
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw8822c_dac_cal_backup_path(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw8822c_dac_cal_backup_dck(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
