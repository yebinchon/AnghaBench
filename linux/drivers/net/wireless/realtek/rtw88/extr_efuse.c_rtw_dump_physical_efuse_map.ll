; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_efuse.c_rtw_dump_physical_efuse_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_efuse.c_rtw_dump_physical_efuse_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_3__, %struct.rtw_chip_info* }
%struct.TYPE_3__ = type { i32 }
%struct.rtw_chip_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rtw_dev*, i32)* }

@REG_EFUSE_CTRL = common dso_local global i32 0, align 4
@BIT_MASK_EF_DATA = common dso_local global i32 0, align 4
@BITS_EF_ADDR = common dso_local global i32 0, align 4
@BIT_MASK_EF_ADDR = common dso_local global i32 0, align 4
@BIT_SHIFT_EF_ADDR = common dso_local global i32 0, align 4
@BIT_EF_FLAG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i64*)* @rtw_dump_physical_efuse_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_dump_physical_efuse_map(%struct.rtw_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.rtw_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 1
  %13 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  store %struct.rtw_chip_info* %13, %struct.rtw_chip_info** %6, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %19 = call i32 @switch_efuse_bank(%struct.rtw_dev* %18)
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %21 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.rtw_dev*, i32)*, i32 (%struct.rtw_dev*, i32)** %23, align 8
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %26 = call i32 %24(%struct.rtw_dev* %25, i32 0)
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %28 = load i32, i32* @REG_EFUSE_CTRL, align 4
  %29 = call i32 @rtw_read32(%struct.rtw_dev* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %82, %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %30
  %35 = load i32, i32* @BIT_MASK_EF_DATA, align 4
  %36 = load i32, i32* @BITS_EF_ADDR, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @BIT_MASK_EF_ADDR, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @BIT_SHIFT_EF_ADDR, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %49 = load i32, i32* @REG_EFUSE_CTRL, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BIT_EF_FLAG, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @rtw_write32(%struct.rtw_dev* %48, i32 %49, i32 %53)
  store i32 1000000, i32* %10, align 4
  br label %55

55:                                               ; preds = %67, %34
  %56 = call i32 @udelay(i32 1)
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %58 = load i32, i32* @REG_EFUSE_CTRL, align 4
  %59 = call i32 @rtw_read32(%struct.rtw_dev* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %86

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @BIT_EF_FLAG, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %55, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @BIT_MASK_EF_DATA, align 4
  %76 = and i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = load i64*, i64** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %77, i64* %81, align 8
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %30

85:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %63
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @switch_efuse_bank(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
