; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sd.c_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sd.c_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.sclp_sd_file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @data_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sclp_sd_file*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load %struct.kobject*, %struct.kobject** %8, align 8
  %17 = call %struct.sclp_sd_file* @to_sd_file(%struct.kobject* %16)
  store %struct.sclp_sd_file* %17, %struct.sclp_sd_file** %13, align 8
  %18 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %13, align 8
  %19 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %13, align 8
  %22 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %13, align 8
  %26 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %14, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %6
  store i64 0, i64* %12, align 8
  br label %53

36:                                               ; preds = %31
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %14, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %11, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @memcpy(i8* %47, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %46, %35
  %54 = load %struct.sclp_sd_file*, %struct.sclp_sd_file** %13, align 8
  %55 = getelementptr inbounds %struct.sclp_sd_file, %struct.sclp_sd_file* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %12, align 8
  ret i64 %57
}

declare dso_local %struct.sclp_sd_file* @to_sd_file(%struct.kobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
