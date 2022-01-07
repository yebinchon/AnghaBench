; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2406.c_w1_f12_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2406.c_w1_f12_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@W1_F12_FUNC_READ_STATUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @w1_f12_read_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f12_read_state(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [6 x i32], align 16
  %15 = alloca %struct.w1_slave*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %20 = load i32, i32* @W1_F12_FUNC_READ_STATUS, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 7, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.kobject*, %struct.kobject** %9, align 8
  %27 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %26)
  store %struct.w1_slave* %27, %struct.w1_slave** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %100

31:                                               ; preds = %6
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %100

37:                                               ; preds = %31
  %38 = load %struct.w1_slave*, %struct.w1_slave** %15, align 8
  %39 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.w1_slave*, %struct.w1_slave** %15, align 8
  %44 = call i64 @w1_reset_select_slave(%struct.w1_slave* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.w1_slave*, %struct.w1_slave** %15, align 8
  %48 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %100

54:                                               ; preds = %37
  %55 = load %struct.w1_slave*, %struct.w1_slave** %15, align 8
  %56 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %59 = call i32 @w1_write_block(%struct.TYPE_3__* %57, i32* %58, i32 3)
  %60 = load %struct.w1_slave*, %struct.w1_slave** %15, align 8
  %61 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = call i32 @w1_read_block(%struct.TYPE_3__* %62, i32* %64, i32 3)
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %76, %54
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 6
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @crc16_byte(i32 %70, i32 %74)
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %66

79:                                               ; preds = %66
  %80 = load i32, i32* %16, align 4
  %81 = icmp eq i32 %80, 45057
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 5
  %86 = and i32 %85, 3
  %87 = or i32 %86, 48
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %11, align 8
  store i8 %88, i8* %89, align 1
  br label %93

90:                                               ; preds = %79
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %90, %82
  %94 = load %struct.w1_slave*, %struct.w1_slave** %15, align 8
  %95 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %93, %46, %34, %30
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @w1_read_block(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @crc16_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
