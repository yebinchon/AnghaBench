; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2406.c_w1_f12_write_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2406.c_w1_f12_write_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@W1_F12_FUNC_WRITE_STATUS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @w1_f12_write_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f12_write_output(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca [6 x i32], align 16
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
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %22 = load i32, i32* @W1_F12_FUNC_WRITE_STATUS, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 7, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %6
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %103

36:                                               ; preds = %30
  %37 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %38 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %43 = call i64 @w1_reset_select_slave(%struct.w1_slave* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %47 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %103

53:                                               ; preds = %36
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, 3
  %58 = shl i32 %57, 5
  %59 = or i32 %58, 31
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %62 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %65 = call i32 @w1_write_block(%struct.TYPE_4__* %63, i32* %64, i32 4)
  %66 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %67 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = call i32 @w1_read_block(%struct.TYPE_4__* %68, i32* %70, i32 2)
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %82, %53
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 6
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @crc16_byte(i32 %76, i32 %80)
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %72

85:                                               ; preds = %72
  %86 = load i32, i32* %16, align 4
  %87 = icmp eq i32 %86, 45057
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %90 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @w1_write_8(%struct.TYPE_4__* %91, i32 255)
  br label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %98 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %96, %45, %33
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @w1_read_block(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @crc16_byte(i32, i32) #1

declare dso_local i32 @w1_write_8(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
