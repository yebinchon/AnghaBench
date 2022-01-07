; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @ecryptfs_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = call %struct.file* @ecryptfs_file_to_lower(%struct.file* %7)
  store %struct.file* %8, %struct.file** %6, align 8
  %9 = load %struct.file*, %struct.file** %6, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.file*, i32)**
  %14 = load i32 (%struct.file*, i32)*, i32 (%struct.file*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.file*, i32)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @filemap_write_and_wait(i32 %19)
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.file*, i32)**
  %26 = load i32 (%struct.file*, i32)*, i32 (%struct.file*, i32)** %25, align 8
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 %26(%struct.file* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.file* @ecryptfs_file_to_lower(%struct.file*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
