; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cifsLockInfo = type { i32, i32, i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cifsLockInfo* (i8*, i8*, i32, i32)* @cifs_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cifsLockInfo* @cifs_lock_init(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cifsLockInfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifsLockInfo*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cifsLockInfo* @kmalloc(i32 40, i32 %11)
  store %struct.cifsLockInfo* %12, %struct.cifsLockInfo** %10, align 8
  %13 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %14 = icmp ne %struct.cifsLockInfo* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  store %struct.cifsLockInfo* %16, %struct.cifsLockInfo** %5, align 8
  br label %42

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %20 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %23 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %26 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %31 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %34 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %36 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  %39 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %38, i32 0, i32 0
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %10, align 8
  store %struct.cifsLockInfo* %41, %struct.cifsLockInfo** %5, align 8
  br label %42

42:                                               ; preds = %17, %15
  %43 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %5, align 8
  ret %struct.cifsLockInfo* %43
}

declare dso_local %struct.cifsLockInfo* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
