; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c___ffs_epfile_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c___ffs_epfile_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_epfile = type { i32 }
%struct.iov_iter = type { i32 }
%struct.ffs_buffer = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"functionfs read size %d > requested size %zd, splitting request into multiple reads.\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffs_epfile*, i8*, i32, %struct.iov_iter*)* @__ffs_epfile_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ffs_epfile_read_data(%struct.ffs_epfile* %0, i8* %1, i32 %2, %struct.iov_iter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ffs_epfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca %struct.ffs_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.ffs_epfile* %0, %struct.ffs_epfile** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.iov_iter* %3, %struct.iov_iter** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %15 = call i32 @copy_to_iter(i8* %12, i32 %13, %struct.iov_iter* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %79

24:                                               ; preds = %4
  %25 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %26 = call i32 @iov_iter_count(%struct.iov_iter* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %79

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 12, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ffs_buffer* @kmalloc(i32 %42, i32 %43)
  store %struct.ffs_buffer* %44, %struct.ffs_buffer** %10, align 8
  %45 = load %struct.ffs_buffer*, %struct.ffs_buffer** %10, align 8
  %46 = icmp ne %struct.ffs_buffer* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %79

50:                                               ; preds = %32
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ffs_buffer*, %struct.ffs_buffer** %10, align 8
  %53 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ffs_buffer*, %struct.ffs_buffer** %10, align 8
  %55 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ffs_buffer*, %struct.ffs_buffer** %10, align 8
  %58 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ffs_buffer*, %struct.ffs_buffer** %10, align 8
  %60 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(i32 %61, i8* %65, i32 %66)
  %68 = load %struct.ffs_epfile*, %struct.ffs_epfile** %6, align 8
  %69 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %68, i32 0, i32 0
  %70 = load %struct.ffs_buffer*, %struct.ffs_buffer** %10, align 8
  %71 = call i32 @cmpxchg(i32* %69, i32* null, %struct.ffs_buffer* %70)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %50
  %75 = load %struct.ffs_buffer*, %struct.ffs_buffer** %10, align 8
  %76 = call i32 @kfree(%struct.ffs_buffer* %75)
  br label %77

77:                                               ; preds = %74, %50
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %47, %29, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @copy_to_iter(i8*, i32, %struct.iov_iter*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local %struct.ffs_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cmpxchg(i32*, i32*, %struct.ffs_buffer*) #1

declare dso_local i32 @kfree(%struct.ffs_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
