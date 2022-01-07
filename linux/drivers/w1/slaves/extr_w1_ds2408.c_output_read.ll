; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_output_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_output_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@W1_F29_REG_OUTPUT_LATCH_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @output_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.kobject*, %struct.kobject** %9, align 8
  %15 = call %struct.TYPE_5__* @kobj_to_w1_slave(%struct.kobject* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %18 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kobject*, %struct.kobject** %9, align 8
  %22 = load i64, i64* %12, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %13, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.kobject* %21, i32 %23, i64 %24, i8* %25)
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %6
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %41

35:                                               ; preds = %29
  %36 = load %struct.kobject*, %struct.kobject** %9, align 8
  %37 = call %struct.TYPE_5__* @kobj_to_w1_slave(%struct.kobject* %36)
  %38 = load i32, i32* @W1_F29_REG_OUTPUT_LATCH_STATE, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @_read_reg(%struct.TYPE_5__* %37, i32 %38, i8* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, %struct.kobject*, i32, i64, i8*) #1

declare dso_local %struct.TYPE_5__* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @_read_reg(%struct.TYPE_5__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
