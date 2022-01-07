; ModuleID = '/home/carl/AnghaBench/linux/drivers/zorro/extr_zorro-sysfs.c_zorro_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/zorro/extr_zorro-sysfs.c_zorro_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.zorro_dev = type { i32, i32, i32 }
%struct.ConfigDev = type { i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @zorro_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zorro_read_config(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.zorro_dev*, align 8
  %14 = alloca %struct.ConfigDev, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %15 = load %struct.kobject*, %struct.kobject** %8, align 8
  %16 = call i32 @kobj_to_dev(%struct.kobject* %15)
  %17 = call %struct.zorro_dev* @to_zorro_dev(i32 %16)
  store %struct.zorro_dev* %17, %struct.zorro_dev** %13, align 8
  %18 = call i32 @memset(%struct.ConfigDev* %14, i32 0, i32 40)
  %19 = load %struct.zorro_dev*, %struct.zorro_dev** %13, align 8
  %20 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ConfigDev, %struct.ConfigDev* %14, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load %struct.zorro_dev*, %struct.zorro_dev** %13, align 8
  %24 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_be16(i32 %25)
  %27 = getelementptr inbounds %struct.ConfigDev, %struct.ConfigDev* %14, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load %struct.zorro_dev*, %struct.zorro_dev** %13, align 8
  %29 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_be16(i32 %30)
  %32 = getelementptr inbounds %struct.ConfigDev, %struct.ConfigDev* %14, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.zorro_dev*, %struct.zorro_dev** %13, align 8
  %34 = call i32 @zorro_resource_start(%struct.zorro_dev* %33)
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = getelementptr inbounds %struct.ConfigDev, %struct.ConfigDev* %14, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.zorro_dev*, %struct.zorro_dev** %13, align 8
  %38 = call i32 @zorro_resource_len(%struct.zorro_dev* %37)
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = getelementptr inbounds %struct.ConfigDev, %struct.ConfigDev* %14, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @memory_read_from_buffer(i8* %41, i64 %42, i32* %11, %struct.ConfigDev* %14, i32 40)
  ret i32 %43
}

declare dso_local %struct.zorro_dev* @to_zorro_dev(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @memset(%struct.ConfigDev*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @zorro_resource_start(%struct.zorro_dev*) #1

declare dso_local i32 @zorro_resource_len(%struct.zorro_dev*) #1

declare dso_local i32 @memory_read_from_buffer(i8*, i64, i32*, %struct.ConfigDev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
