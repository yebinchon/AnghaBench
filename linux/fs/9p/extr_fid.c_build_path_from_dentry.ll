; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_build_path_from_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_build_path_from_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.dentry* }
%struct.TYPE_2__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, %struct.dentry*, i8***)* @build_path_from_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_path_from_dentry(%struct.v9fs_session_info* %0, %struct.dentry* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v9fs_session_info*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %12, %struct.dentry** %11, align 8
  br label %13

13:                                               ; preds = %21, %3
  %14 = load %struct.dentry*, %struct.dentry** %11, align 8
  %15 = call i32 @IS_ROOT(%struct.dentry* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.dentry*, %struct.dentry** %11, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  store %struct.dentry* %24, %struct.dentry** %11, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8** @kmalloc_array(i32 %26, i32 8, i32 %27)
  store i8** %28, i8*** %10, align 8
  %29 = load i8**, i8*** %10, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %58

32:                                               ; preds = %25
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %33, %struct.dentry** %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %48, %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.dentry*, %struct.dentry** %11, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 1
  %53 = load %struct.dentry*, %struct.dentry** %52, align 8
  store %struct.dentry* %53, %struct.dentry** %11, align 8
  br label %36

54:                                               ; preds = %36
  %55 = load i8**, i8*** %10, align 8
  %56 = load i8***, i8**** %7, align 8
  store i8** %55, i8*** %56, align 8
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %31
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i8** @kmalloc_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
