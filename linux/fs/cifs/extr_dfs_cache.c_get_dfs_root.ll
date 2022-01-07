; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_get_dfs_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_get_dfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_dfs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_dfs_root(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = call i8* @strchr(i8* %7, i8 signext 92)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i8* @ERR_PTR(i32 %13)
  store i8* %14, i8** %2, align 8
  br label %43

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i8* @strchr(i8* %17, i8 signext 92)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i8* @ERR_PTR(i32 %23)
  store i8* %24, i8** %2, align 8
  br label %43

25:                                               ; preds = %15
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kstrndup(i8* %26, i32 %32, i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i8* @ERR_PTR(i32 %39)
  store i8* %40, i8** %2, align 8
  br label %43

41:                                               ; preds = %25
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %41, %37, %21, %11
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
