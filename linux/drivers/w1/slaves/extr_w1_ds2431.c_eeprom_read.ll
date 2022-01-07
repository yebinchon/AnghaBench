; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2431.c_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2431.c_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@W1_F2D_EEPROM_SIZE = common dso_local global i32 0, align 4
@W1_F2D_READ_MAXLEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eeprom_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.kobject*, %struct.kobject** %9, align 8
  %18 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %17)
  store %struct.w1_slave* %18, %struct.w1_slave** %14, align 8
  %19 = load i64, i64* %13, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i64, i64* %13, align 8
  %23 = load i32, i32* @W1_F2D_EEPROM_SIZE, align 4
  %24 = call i64 @w1_f2d_fix_count(i32 %21, i64 %22, i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %73

28:                                               ; preds = %6
  %29 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %30 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  br label %34

34:                                               ; preds = %55, %28
  %35 = load i32, i32* %15, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @W1_F2D_READ_MAXLEN, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @W1_F2D_READ_MAXLEN, align 4
  store i32 %42, i32* %16, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @w1_f2d_readblock(%struct.w1_slave* %46, i32 %47, i32 %48, i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* @EIO, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* @W1_F2D_READ_MAXLEN, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* @W1_F2D_READ_MAXLEN, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %11, align 8
  %63 = load i32, i32* @W1_F2D_READ_MAXLEN, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %68 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %13, align 8
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %66, %27
  %74 = load i64, i64* %7, align 8
  ret i64 %74
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i64 @w1_f2d_fix_count(i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_f2d_readblock(%struct.w1_slave*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
