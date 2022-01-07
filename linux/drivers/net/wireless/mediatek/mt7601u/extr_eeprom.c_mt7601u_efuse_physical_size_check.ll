; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_efuse_physical_size_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_efuse_physical_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_EFUSE_USAGE_MAP_SIZE = common dso_local global i32 0, align 4
@MT_EE_USAGE_MAP_START = common dso_local global i32 0, align 4
@MT_EE_PHYSICAL_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Error: your device needs default EEPROM file and this driver doesn't support it!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*)* @mt7601u_efuse_physical_size_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_efuse_physical_size_check(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %13 = load i32, i32* @MT_EFUSE_USAGE_MAP_SIZE, align 4
  %14 = call i32 @DIV_ROUND_UP(i32 %13, i32 16)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @MT_EFUSE_USAGE_MAP_SIZE, align 4
  %16 = call i32 @round_up(i32 %15, i32 16)
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %41, %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %26 = load i32, i32* @MT_EE_USAGE_MAP_START, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 16
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %19, i64 %32
  %34 = load i32, i32* @MT_EE_PHYSICAL_READ, align 4
  %35 = call i32 @mt7601u_efuse_read(%struct.mt7601u_dev* %25, i32 %29, i32* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %87

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %20

44:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MT_EFUSE_USAGE_MAP_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %19, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @MT_EE_USAGE_MAP_START, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* @MT_EE_USAGE_MAP_START, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %45

70:                                               ; preds = %45
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @MT_EFUSE_USAGE_MAP_SIZE, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp slt i32 %77, 5
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %87

86:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %79, %38
  %88 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mt7601u_efuse_read(%struct.mt7601u_dev*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
