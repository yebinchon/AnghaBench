; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_write_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_write_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.esas2r_adapter = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"write_hw kzalloc failed for %zu bytes\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @write_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_hw(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.esas2r_adapter*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call %struct.esas2r_adapter* @esas2r_adapter_from_kobj(%struct.kobject* %16)
  store %struct.esas2r_adapter* %17, %struct.esas2r_adapter** %14, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @min(i32 4, i64 %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 4, i32 %25)
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %30 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %35 = call i32 @esas2r_log(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 4)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %51

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %6
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %41 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  %44 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %45 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @memcpy(i32* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %39, %33
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.esas2r_adapter* @esas2r_adapter_from_kobj(%struct.kobject*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
