; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_put_sysnames.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_put_sysnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_sysnames = type { i32, i64*, i64, i32 }

@afs_init_sysname = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_put_sysnames(%struct.afs_sysnames* %0) #0 {
  %2 = alloca %struct.afs_sysnames*, align 8
  %3 = alloca i32, align 4
  store %struct.afs_sysnames* %0, %struct.afs_sysnames** %2, align 8
  %4 = load %struct.afs_sysnames*, %struct.afs_sysnames** %2, align 8
  %5 = icmp ne %struct.afs_sysnames* %4, null
  br i1 %5, label %6, label %54

6:                                                ; preds = %1
  %7 = load %struct.afs_sysnames*, %struct.afs_sysnames** %2, align 8
  %8 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %7, i32 0, i32 3
  %9 = call i64 @refcount_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %50, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.afs_sysnames*, %struct.afs_sysnames** %2, align 8
  %15 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load %struct.afs_sysnames*, %struct.afs_sysnames** %2, align 8
  %20 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @afs_init_sysname, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %18
  %29 = load %struct.afs_sysnames*, %struct.afs_sysnames** %2, align 8
  %30 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.afs_sysnames*, %struct.afs_sysnames** %2, align 8
  %37 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load %struct.afs_sysnames*, %struct.afs_sysnames** %2, align 8
  %42 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @kfree(i64 %47)
  br label %49

49:                                               ; preds = %40, %28, %18
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %12

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %53, %6, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
