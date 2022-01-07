; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file*, i32, i64, i32)* @cifs_copy_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_copy_file_range(%struct.file* %0, i32 %1, %struct.file* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = call i32 (...) @get_xid()
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.file*, %struct.file** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @cifs_file_copychunk_range(i32 %16, %struct.file* %17, i32 %18, %struct.file* %19, i32 %20, i64 %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @free_xid(i32 %24)
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @EXDEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30, %6
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.file*, %struct.file** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @generic_copy_file_range(%struct.file* %36, i32 %37, %struct.file* %38, i32 %39, i64 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %35, %30
  %44 = load i32, i32* %14, align 4
  ret i32 %44
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @cifs_file_copychunk_range(i32, %struct.file*, i32, %struct.file*, i32, i64, i32) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @generic_copy_file_range(%struct.file*, i32, %struct.file*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
