; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_uncompress.c_cramfs_uncompress_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_uncompress.c_cramfs_uncompress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8* }

@stream = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"zlib_inflateReset error %d\0A\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error %d while decompressing!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%p(%d)->%p(%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cramfs_uncompress_block(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stream, i32 0, i32 4), align 8
  %12 = load i32, i32* %9, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stream, i32 0, i32 0), align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stream, i32 0, i32 3), align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stream, i32 0, i32 1), align 4
  %15 = call i32 @zlib_inflateReset(%struct.TYPE_6__* @stream)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @Z_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @zlib_inflateEnd(%struct.TYPE_6__* @stream)
  %25 = call i32 @zlib_inflateInit(%struct.TYPE_6__* @stream)
  br label %26

26:                                               ; preds = %19, %4
  %27 = load i32, i32* @Z_FINISH, align 4
  %28 = call i32 @zlib_inflate(%struct.TYPE_6__* @stream, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @Z_STREAM_END, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stream, i32 0, i32 2), align 8
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %41, i8* %42, i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %35, %33
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @zlib_inflateReset(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @zlib_inflateEnd(%struct.TYPE_6__*) #1

declare dso_local i32 @zlib_inflateInit(%struct.TYPE_6__*) #1

declare dso_local i32 @zlib_inflate(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
