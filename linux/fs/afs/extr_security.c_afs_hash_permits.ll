; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_hash_permits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_hash_permits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_permits = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_permits*)* @afs_hash_permits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_hash_permits(%struct.afs_permits* %0) #0 {
  %2 = alloca %struct.afs_permits*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.afs_permits* %0, %struct.afs_permits** %2, align 8
  %5 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %6 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %12 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %8
  %16 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %17 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %23, 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %28 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %15
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %43 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
