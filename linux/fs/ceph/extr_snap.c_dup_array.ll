; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_dup_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_dup_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i64)* @dup_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dup_array(i32** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @kfree(i32* %10)
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call i32* @kcalloc(i64 %15, i32 4, i32 %16)
  %18 = load i32**, i32*** %5, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %14
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @get_unaligned_le64(i32* %33)
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %26

42:                                               ; preds = %26
  br label %45

43:                                               ; preds = %3
  %44 = load i32**, i32*** %5, align 8
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %43, %42
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @get_unaligned_le64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
