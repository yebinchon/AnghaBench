; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_eeprom_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_eeprom_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@MT7662_EEPROM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MT_EE_READ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x2_eeprom_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2_eeprom_load(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  %9 = load i32, i32* @MT7662_EEPROM_SIZE, align 4
  %10 = call i32 @mt76_eeprom_init(%struct.TYPE_6__* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %21 = call i32 @mt76x2_check_eeprom(%struct.mt76x02_dev* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MT7662_EEPROM_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %32, i8** %36, align 8
  %37 = load i32, i32* @MT7662_EEPROM_SIZE, align 4
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 8
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %25
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %88

51:                                               ; preds = %25
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %4, align 8
  %57 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* @MT7662_EEPROM_SIZE, align 4
  %60 = load i32, i32* @MT_EE_READ, align 4
  %61 = call i64 @mt76x02_get_efuse_data(%struct.mt76x02_dev* %57, i32 0, i8* %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %81

64:                                               ; preds = %51
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @mt76x2_apply_cal_free_data(%struct.mt76x02_dev* %68, i8* %69)
  br label %80

71:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  %72 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @MT7662_EEPROM_SIZE, align 4
  %79 = call i32 @memcpy(i32 %76, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %67
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %84, %48, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @mt76_eeprom_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mt76x2_check_eeprom(%struct.mt76x02_dev*) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64 @mt76x02_get_efuse_data(%struct.mt76x02_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @mt76x2_apply_cal_free_data(%struct.mt76x02_dev*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
