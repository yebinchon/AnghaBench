; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_fill_read_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_fill_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.configfs_buffer = type { i8*, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i8*)* }
%struct.configfs_fragment = type { i32, i32 }

@ENOENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIMPLE_ATTR_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.configfs_buffer*)* @fill_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_read_buffer(%struct.file* %0, %struct.configfs_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.configfs_buffer*, align 8
  %6 = alloca %struct.configfs_fragment*, align 8
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.configfs_buffer* %1, %struct.configfs_buffer** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.configfs_fragment* @to_frag(%struct.file* %8)
  store %struct.configfs_fragment* %9, %struct.configfs_fragment** %6, align 8
  %10 = load i64, i64* @ENOENT, align 8
  %11 = sub nsw i64 0, %10
  store i64 %11, i64* %7, align 8
  %12 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %22
  %31 = load %struct.configfs_fragment*, %struct.configfs_fragment** %6, align 8
  %32 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %31, i32 0, i32 0
  %33 = call i32 @down_read(i32* %32)
  %34 = load %struct.configfs_fragment*, %struct.configfs_fragment** %6, align 8
  %35 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %30
  %39 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64 (i32, i8*)*, i64 (i32, i8*)** %42, align 8
  %44 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 %43(i32 %46, i8* %49)
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %38, %30
  %52 = load %struct.configfs_fragment*, %struct.configfs_fragment** %6, align 8
  %53 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %52, i32 0, i32 0
  %54 = call i32 @up_read(i32* %53)
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %76

60:                                               ; preds = %51
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @SIMPLE_ATTR_SIZE, align 8
  %63 = icmp sgt i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON_ONCE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %76

70:                                               ; preds = %60
  %71 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %67, %57, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.configfs_fragment* @to_frag(%struct.file*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
