; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_revalidate_file_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_revalidate_file_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.inode = type { i32 }
%struct.cifsFileInfo = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_revalidate_file_attr(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.cifsFileInfo*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.inode* @file_inode(%struct.file* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cifsFileInfo*
  store %struct.cifsFileInfo* %12, %struct.cifsFileInfo** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @cifs_inode_needs_reval(%struct.inode* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %20 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_2__* @tlink_tcon(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = call i32 @cifs_get_file_info_unix(%struct.file* %27)
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call i32 @cifs_get_file_info(%struct.file* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @cifs_inode_needs_reval(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @tlink_tcon(i32) #1

declare dso_local i32 @cifs_get_file_info_unix(%struct.file*) #1

declare dso_local i32 @cifs_get_file_info(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
