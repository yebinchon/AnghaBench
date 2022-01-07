; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/fuse/extr_fuse-tegra.c_fuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/fuse/extr_fuse-tegra.c_fuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }
%struct.device = type { i32 }
%struct.tegra_fuse = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @fuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.tegra_fuse*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.kobject*, %struct.kobject** %9, align 8
  %18 = call %struct.device* @kobj_to_dev(%struct.kobject* %17)
  store %struct.device* %18, %struct.device** %14, align 8
  %19 = load %struct.device*, %struct.device** %14, align 8
  %20 = call %struct.tegra_fuse* @dev_get_drvdata(%struct.device* %19)
  store %struct.tegra_fuse* %20, %struct.tegra_fuse** %15, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %26 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %6
  store i32 0, i32* %7, align 4
  br label %66

30:                                               ; preds = %23
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %33 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp ugt i64 %31, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %40 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %38, %30
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %13, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.tegra_fuse*, %struct.tegra_fuse** %15, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call signext i8 @fuse_readb(%struct.tegra_fuse* %51, i64 %55)
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 %56, i8* %60, align 1
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %29
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.tegra_fuse* @dev_get_drvdata(%struct.device*) #1

declare dso_local signext i8 @fuse_readb(%struct.tegra_fuse*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
