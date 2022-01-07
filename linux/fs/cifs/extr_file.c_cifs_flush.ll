; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Flush inode %p file %p rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.inode* @file_inode(%struct.file* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FMODE_WRITE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @filemap_write_and_wait(i32 %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @FYI, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.file*, %struct.file** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cifs_dbg(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.inode* %22, %struct.file* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.inode*, %struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
