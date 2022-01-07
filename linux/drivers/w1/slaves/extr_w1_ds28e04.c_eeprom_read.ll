; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_2__*, %struct.w1_f1C_data* }
%struct.TYPE_2__ = type { i32 }
%struct.w1_f1C_data = type { i32* }

@W1_EEPROM_SIZE = common dso_local global i32 0, align 4
@w1_enable_crccheck = common dso_local global i64 0, align 8
@W1_PAGE_BITS = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eeprom_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca %struct.w1_f1C_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.kobject*, %struct.kobject** %9, align 8
  %20 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %19)
  store %struct.w1_slave* %20, %struct.w1_slave** %14, align 8
  %21 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %22 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %21, i32 0, i32 1
  %23 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %22, align 8
  store %struct.w1_f1C_data* %23, %struct.w1_f1C_data** %15, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i32, i32* @W1_EEPROM_SIZE, align 4
  %27 = call i64 @w1_f1C_fix_count(i64 %24, i64 %25, i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %92

31:                                               ; preds = %6
  %32 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %33 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i64, i64* @w1_enable_crccheck, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %31
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @W1_PAGE_BITS, align 8
  %42 = lshr i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %17, align 4
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %44, %45
  %47 = sub i64 %46, 1
  %48 = load i64, i64* @W1_PAGE_BITS, align 8
  %49 = lshr i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %66, %39
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %58 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @w1_f1C_refresh_block(%struct.w1_slave* %57, %struct.w1_f1C_data* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, i64* @EIO, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %13, align 8
  br label %85

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %52

69:                                               ; preds = %52
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %15, align 8
  %72 = getelementptr inbounds %struct.w1_f1C_data, %struct.w1_f1C_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @memcpy(i8* %70, i32* %75, i64 %76)
  br label %84

78:                                               ; preds = %31
  %79 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i64 @w1_f1C_read(%struct.w1_slave* %79, i64 %80, i64 %81, i8* %82)
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %78, %69
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %87 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %85, %30
  %93 = load i64, i64* %7, align 8
  ret i64 %93
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i64 @w1_f1C_fix_count(i64, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_f1C_refresh_block(%struct.w1_slave*, %struct.w1_f1C_data*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @w1_f1C_read(%struct.w1_slave*, i64, i64, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
