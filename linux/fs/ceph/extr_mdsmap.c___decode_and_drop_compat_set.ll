; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mdsmap.c___decode_and_drop_compat_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mdsmap.c___decode_and_drop_compat_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @__decode_and_drop_compat_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__decode_and_drop_compat_set(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @bad, align 4
  %16 = call i32 @ceph_decode_need(i8** %13, i8* %14, i32 8, i32 %15)
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 4
  store i8* %19, i8** %17, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = call i32 @ceph_decode_32(i8** %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %26, %12
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @bad, align 4
  %30 = call i32 @ceph_decode_need(i8** %27, i8* %28, i32 8, i32 %29)
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr i8, i8* %32, i64 4
  store i8* %33, i8** %31, align 8
  %34 = load i8**, i8*** %4, align 8
  %35 = call i32 @ceph_decode_32(i8** %34)
  store i32 %35, i32* %8, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @bad, align 4
  %40 = call i32 @ceph_decode_need(i8** %36, i8* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = sext i32 %41 to i64
  %45 = getelementptr i8, i8* %43, i64 %44
  store i8* %45, i8** %42, align 8
  br label %22

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %9

50:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; No predecessors!
  store i32 -1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
