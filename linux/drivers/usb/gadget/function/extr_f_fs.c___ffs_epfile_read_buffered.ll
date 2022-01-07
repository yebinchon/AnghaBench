; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c___ffs_epfile_read_buffered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c___ffs_epfile_read_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_buffer = type { i64, i64 }
%struct.ffs_epfile = type { i32 }
%struct.iov_iter = type { i32 }

@READ_BUFFER_DROP = common dso_local global %struct.ffs_buffer* null, align 8
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ffs_epfile*, %struct.iov_iter*)* @__ffs_epfile_read_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__ffs_epfile_read_buffered(%struct.ffs_epfile* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ffs_epfile*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.ffs_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.ffs_epfile* %0, %struct.ffs_epfile** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %8 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %9 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %8, i32 0, i32 0
  %10 = call %struct.ffs_buffer* @xchg(i32* %9, i32* null)
  store %struct.ffs_buffer* %10, %struct.ffs_buffer** %6, align 8
  %11 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %12 = icmp ne %struct.ffs_buffer* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %15 = load %struct.ffs_buffer*, %struct.ffs_buffer** @READ_BUFFER_DROP, align 8
  %16 = icmp eq %struct.ffs_buffer* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i64 0, i64* %3, align 8
  br label %66

18:                                               ; preds = %13
  %19 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = call i64 @copy_to_iter(i64 %21, i64 %24, %struct.iov_iter* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %34 = call i32 @kfree(%struct.ffs_buffer* %33)
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %3, align 8
  br label %66

36:                                               ; preds = %18
  %37 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %38 = call i32 @iov_iter_count(%struct.iov_iter* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* @EFAULT, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %7, align 8
  br label %55

44:                                               ; preds = %36
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.ffs_buffer, %struct.ffs_buffer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %44, %41
  %56 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %57 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %56, i32 0, i32 0
  %58 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %59 = call i64 @cmpxchg(i32* %57, i32* null, %struct.ffs_buffer* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.ffs_buffer*, %struct.ffs_buffer** %6, align 8
  %63 = call i32 @kfree(%struct.ffs_buffer* %62)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %64, %32, %17
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local %struct.ffs_buffer* @xchg(i32*, i32*) #1

declare dso_local i64 @copy_to_iter(i64, i64, %struct.iov_iter*) #1

declare dso_local i32 @kfree(%struct.ffs_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @cmpxchg(i32*, i32*, %struct.ffs_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
