; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_xattr_iter_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_xattr_iter_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_iter = type { i64, i32*, i32, i32, i32 }

@EROFS_BLKSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_iter*)* @xattr_iter_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_iter_fixup(%struct.xattr_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xattr_iter*, align 8
  %4 = alloca i32, align 4
  store %struct.xattr_iter* %0, %struct.xattr_iter** %3, align 8
  %5 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %6 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EROFS_BLKSIZ, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %13 = call i32 @xattr_iter_end(%struct.xattr_iter* %12, i32 1)
  %14 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %15 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @erofs_blknr(i64 %16)
  %18 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %19 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %25 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %28 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @erofs_get_meta_page(i32 %26, i32 %29)
  %31 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %32 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %34 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %11
  %39 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %40 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %44 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %11
  %47 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %48 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kmap_atomic(i32* %49)
  %51 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %52 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %54 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @erofs_blkoff(i64 %55)
  %57 = load %struct.xattr_iter*, %struct.xattr_iter** %3, align 8
  %58 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %46, %38, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @xattr_iter_end(%struct.xattr_iter*, i32) #1

declare dso_local i64 @erofs_blknr(i64) #1

declare dso_local i32* @erofs_get_meta_page(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @kmap_atomic(i32*) #1

declare dso_local i64 @erofs_blkoff(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
