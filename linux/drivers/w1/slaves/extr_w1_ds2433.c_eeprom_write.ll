; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2433.c_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2433.c_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@W1_EEPROM_SIZE = common dso_local global i32 0, align 4
@W1_PAGE_SIZE = common dso_local global i32 0, align 4
@W1_PAGE_MASK = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@CRC16_INIT = common dso_local global i32 0, align 4
@CRC16_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
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
  %23 = call i64 @w1_f23_fix_count(i64 %20, i64 %21, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %89

26:                                               ; preds = %6
  %27 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %28 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %77, %26
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %32
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* @W1_PAGE_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @W1_PAGE_MASK, align 8
  %48 = and i64 %46, %47
  %49 = sub i64 %44, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %53, %55
  %57 = icmp ugt i64 %52, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %37
  %59 = load i64, i64* %13, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %59, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %58, %37
  %65 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i64 @w1_f23_write(%struct.w1_slave* %65, i32 %66, i32 %67, i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i64, i64* @EIO, align 8
  %76 = sub i64 0, %75
  store i64 %76, i64* %13, align 8
  br label %82

77:                                               ; preds = %64
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %17, align 4
  br label %32

81:                                               ; preds = %32
  br label %82

82:                                               ; preds = %81, %74
  %83 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %84 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %13, align 8
  store i64 %88, i64* %7, align 8
  br label %89

89:                                               ; preds = %82, %25
  %90 = load i64, i64* %7, align 8
  ret i64 %90
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i64 @w1_f23_fix_count(i64, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_f23_write(%struct.w1_slave*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
