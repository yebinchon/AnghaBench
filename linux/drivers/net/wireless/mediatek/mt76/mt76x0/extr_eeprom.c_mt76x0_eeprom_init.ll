; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@MT_EE_VERSION = common dso_local global i32 0, align 4
@MT76X0U_EE_MAX_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Warning: unsupported EEPROM version %02hhx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EEPROM ver:%02hhx fae:%02hhx\0A\00", align 1
@MT_EE_MAC_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x0_eeprom_init(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = call i32 @mt76x0_load_eeprom(%struct.mt76x02_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %16 = load i32, i32* @MT_EE_VERSION, align 4
  %17 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MT76X0U_EE_MAX_VER, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %14
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_info(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MT_EE_MAC_ADDR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @mt76x02_mac_setaddr(%struct.mt76x02_dev* %39, i64 %46)
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %49 = call i32 @mt76x0_set_chip_cap(%struct.mt76x02_dev* %48)
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %51 = call i32 @mt76x0_set_freq_offset(%struct.mt76x02_dev* %50)
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %53 = call i32 @mt76x0_set_temp_offset(%struct.mt76x02_dev* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %31, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @mt76x0_load_eeprom(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @mt76x02_mac_setaddr(%struct.mt76x02_dev*, i64) #1

declare dso_local i32 @mt76x0_set_chip_cap(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_set_freq_offset(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_set_temp_offset(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
