; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.key = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @afs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call %struct.key* @afs_file_key(%struct.file* %11)
  store %struct.key* %12, %struct.key** %5, align 8
  %13 = load %struct.key*, %struct.key** %5, align 8
  %14 = icmp ne %struct.key* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.key*, %struct.key** %5, align 8
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @afs_page_filler(%struct.key* %17, %struct.page* %18)
  store i32 %19, i32* %6, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_4__* @AFS_FS_S(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.key* @afs_request_key(i32 %31)
  store %struct.key* %32, %struct.key** %5, align 8
  %33 = load %struct.key*, %struct.key** %5, align 8
  %34 = call i64 @IS_ERR(%struct.key* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load %struct.key*, %struct.key** %5, align 8
  %38 = call i32 @PTR_ERR(%struct.key* %37)
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %20
  %40 = load %struct.key*, %struct.key** %5, align 8
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @afs_page_filler(%struct.key* %40, %struct.page* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.key*, %struct.key** %5, align 8
  %44 = call i32 @key_put(%struct.key* %43)
  br label %45

45:                                               ; preds = %39, %36
  br label %46

46:                                               ; preds = %45, %10
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.key* @afs_file_key(%struct.file*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @afs_page_filler(%struct.key*, %struct.page*) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local %struct.TYPE_4__* @AFS_FS_S(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
