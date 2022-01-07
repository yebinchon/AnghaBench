; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_bl_ambient_light_zone_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_bl_ambient_light_zone_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adp8860_bl = type { i32, i32 }

@ADP8860_MDCR = common dso_local global i32 0, align 4
@CMP_AUTOEN = common dso_local global i32 0, align 4
@ADP8860_CFGR = common dso_local global i32 0, align 4
@CFGR_BLV_MASK = common dso_local global i64 0, align 8
@CFGR_BLV_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adp8860_bl_ambient_light_zone_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_bl_ambient_light_zone_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adp8860_bl*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.adp8860_bl* @dev_get_drvdata(%struct.device* %14)
  store %struct.adp8860_bl* %15, %struct.adp8860_bl** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 10, i64* %11)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %82

22:                                               ; preds = %4
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.adp8860_bl*, %struct.adp8860_bl** %10, align 8
  %27 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ADP8860_MDCR, align 4
  %30 = load i32, i32* @CMP_AUTOEN, align 4
  %31 = call i32 @adp8860_set_bits(i32 %28, i32 %29, i32 %30)
  br label %79

32:                                               ; preds = %22
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = icmp ule i64 %36, 3
  br i1 %37, label %38, label %78

38:                                               ; preds = %35
  %39 = load %struct.adp8860_bl*, %struct.adp8860_bl** %10, align 8
  %40 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ADP8860_MDCR, align 4
  %43 = load i32, i32* @CMP_AUTOEN, align 4
  %44 = call i32 @adp8860_clr_bits(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.adp8860_bl*, %struct.adp8860_bl** %10, align 8
  %46 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.adp8860_bl*, %struct.adp8860_bl** %10, align 8
  %49 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ADP8860_CFGR, align 4
  %52 = call i32 @adp8860_read(i32 %50, i32 %51, i64* %12)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %38
  %56 = load i64, i64* @CFGR_BLV_MASK, align 8
  %57 = load i64, i64* @CFGR_BLV_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = xor i64 %58, -1
  %60 = load i64, i64* %12, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = sub i64 %62, 1
  %64 = load i64, i64* @CFGR_BLV_SHIFT, align 8
  %65 = shl i64 %63, %64
  %66 = load i64, i64* %12, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %12, align 8
  %68 = load %struct.adp8860_bl*, %struct.adp8860_bl** %10, align 8
  %69 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ADP8860_CFGR, align 4
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @adp8860_write(i32 %70, i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %55, %38
  %75 = load %struct.adp8860_bl*, %struct.adp8860_bl** %10, align 8
  %76 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %35, %32
  br label %79

79:                                               ; preds = %78, %25
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %20
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.adp8860_bl* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @adp8860_set_bits(i32, i32, i32) #1

declare dso_local i32 @adp8860_clr_bits(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adp8860_read(i32, i32, i64*) #1

declare dso_local i32 @adp8860_write(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
