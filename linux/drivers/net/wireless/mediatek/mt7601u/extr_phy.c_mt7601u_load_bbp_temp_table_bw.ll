; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_load_bbp_temp_table_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_load_bbp_temp_table_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_table = type { i32, i32 }
%struct.mt7601u_dev = type { i64, i64 }

@MT_TEMP_MODE_LOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@bbp_mode_table = common dso_local global %struct.reg_table** null, align 8
@MT_MCU_MEMMAP_BBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*)* @mt7601u_load_bbp_temp_table_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_load_bbp_temp_table_bw(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.reg_table*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %5 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MT_TEMP_MODE_LOW, align 8
  %9 = icmp ugt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.reg_table**, %struct.reg_table*** @bbp_mode_table, align 8
  %18 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.reg_table*, %struct.reg_table** %17, i64 %20
  %22 = load %struct.reg_table*, %struct.reg_table** %21, align 8
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.reg_table, %struct.reg_table* %22, i64 %25
  store %struct.reg_table* %26, %struct.reg_table** %4, align 8
  %27 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %28 = load i32, i32* @MT_MCU_MEMMAP_BBP, align 4
  %29 = load %struct.reg_table*, %struct.reg_table** %4, align 8
  %30 = getelementptr inbounds %struct.reg_table, %struct.reg_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.reg_table*, %struct.reg_table** %4, align 8
  %33 = getelementptr inbounds %struct.reg_table, %struct.reg_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %27, i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
