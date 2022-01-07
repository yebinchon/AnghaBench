; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_load_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_load_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MT76X0_EEPROM_SIZE = common dso_local global i32 0, align 4
@MT_EE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0_load_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_load_eeprom(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %5, i32 0, i32 0
  %7 = load i32, i32* @MT76X0_EEPROM_SIZE, align 4
  %8 = call i32 @mt76_eeprom_init(%struct.TYPE_4__* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %18 = call i32 @mt76x0_check_eeprom(%struct.mt76x02_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %38

21:                                               ; preds = %16, %13
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = call i32 @mt76x0_efuse_physical_size_check(%struct.mt76x02_dev* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MT76X0_EEPROM_SIZE, align 4
  %36 = load i32, i32* @MT_EE_READ, align 4
  %37 = call i32 @mt76x02_get_efuse_data(%struct.mt76x02_dev* %29, i32 0, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %28, %26, %20, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mt76_eeprom_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mt76x0_check_eeprom(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_efuse_physical_size_check(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_get_efuse_data(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
