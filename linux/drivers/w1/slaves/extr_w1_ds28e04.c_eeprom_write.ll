; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@W1_EEPROM_SIZE = common dso_local global i32 0, align 4
@w1_enable_crccheck = common dso_local global i64 0, align 8
@W1_PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"invalid offset/count off=%d cnt=%zd\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@CRC16_INIT = common dso_local global i32 0, align 4
@W1_PAGE_SIZE = common dso_local global i32 0, align 4
@CRC16_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"bad CRC at offset %d\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eeprom_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.kobject*, %struct.kobject** %9, align 8
  %19 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %18)
  store %struct.w1_slave* %19, %struct.w1_slave** %14, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i32, i32* @W1_EEPROM_SIZE, align 4
  %23 = call i64 @w1_f1C_fix_count(i64 %20, i64 %21, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %142

27:                                               ; preds = %6
  %28 = load i64, i64* @w1_enable_crccheck, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %27
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @W1_PAGE_MASK, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @W1_PAGE_MASK, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35, %30
  %41 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %42 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %41, i32 0, i32 1
  %43 = load i64, i64* %12, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %13, align 8
  %46 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %45)
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %7, align 8
  br label %142

49:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %13, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load i32, i32* @CRC16_INIT, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* @W1_PAGE_SIZE, align 4
  %62 = call i64 @crc16(i32 %56, i8* %60, i32 %61)
  %63 = load i64, i64* @CRC16_VALID, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %67 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %66, i32 0, i32 1
  %68 = load i64, i64* %12, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %7, align 8
  br label %142

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* @W1_PAGE_SIZE, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %50

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %78, %27
  %80 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %81 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %130, %79
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %13, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %134

90:                                               ; preds = %85
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %91, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* @W1_PAGE_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @W1_PAGE_MASK, align 8
  %101 = and i64 %99, %100
  %102 = sub i64 %97, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %13, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %106, %108
  %110 = icmp ugt i64 %105, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %90
  %112 = load i64, i64* %13, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %112, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %111, %90
  %118 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i64 @w1_f1C_write(%struct.w1_slave* %118, i32 %119, i32 %120, i8* %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i64, i64* @EIO, align 8
  %129 = sub i64 0, %128
  store i64 %129, i64* %13, align 8
  br label %135

130:                                              ; preds = %117
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %17, align 4
  br label %85

134:                                              ; preds = %85
  br label %135

135:                                              ; preds = %134, %127
  %136 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %137 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i64, i64* %13, align 8
  store i64 %141, i64* %7, align 8
  br label %142

142:                                              ; preds = %135, %65, %40, %26
  %143 = load i64, i64* %7, align 8
  ret i64 %143
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i64 @w1_f1C_fix_count(i64, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i64 @crc16(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_f1C_write(%struct.w1_slave*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
