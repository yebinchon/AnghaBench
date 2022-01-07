; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_efuse_physical_size_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_efuse_physical_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_MAP_READS = common dso_local global i32 0, align 4
@MT_EE_USAGE_MAP_START = common dso_local global i32 0, align 4
@MT_EE_PHYSICAL_READ = common dso_local global i32 0, align 4
@MT_EFUSE_USAGE_MAP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"driver does not support default EEPROM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0_efuse_physical_size_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_efuse_physical_size_check(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %12 = load i32, i32* @MT_MAP_READS, align 4
  %13 = mul nsw i32 %12, 16
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %18 = load i32, i32* @MT_EE_USAGE_MAP_START, align 4
  %19 = mul nuw i64 4, %14
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @MT_EE_PHYSICAL_READ, align 4
  %22 = call i32 @mt76x02_get_efuse_data(%struct.mt76x02_dev* %17, i32 %18, i32* %16, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %71

27:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MT_EFUSE_USAGE_MAP_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %16, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @MT_EE_USAGE_MAP_START, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @MT_EE_USAGE_MAP_START, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @MT_EFUSE_USAGE_MAP_SIZE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp slt i32 %60, 5
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %64 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %71

70:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %62, %25
  %72 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mt76x02_get_efuse_data(%struct.mt76x02_dev*, i32, i32*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
