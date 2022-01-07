; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_u32_array_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_u32_array_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.array_data* }
%struct.array_data = type { i32, i32 }
%struct.file = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @u32_array_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_array_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.array_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.array_data*, %struct.array_data** %11, align 8
  store %struct.array_data* %12, %struct.array_data** %6, align 8
  %13 = load %struct.array_data*, %struct.array_data** %6, align 8
  %14 = getelementptr inbounds %struct.array_data, %struct.array_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %16, 11
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %2
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.array_data*, %struct.array_data** %6, align 8
  %38 = getelementptr inbounds %struct.array_data, %struct.array_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.array_data*, %struct.array_data** %6, align 8
  %41 = getelementptr inbounds %struct.array_data, %struct.array_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @u32_format_array(i8* %35, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = call i32 @nonseekable_open(%struct.inode* %44, %struct.file* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %27, %24
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @u32_format_array(i8*, i32, i32, i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
