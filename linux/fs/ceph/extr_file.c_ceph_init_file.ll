; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_init_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_init_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.file*)*, i32 }
%struct.file = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"init_file %p %p 0%o (symlink)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"init_file %p %p 0%o (special)\0A\00", align 1
@ceph_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32)* @ceph_init_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_init_file(%struct.inode* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @S_IFMT, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %45 [
    i32 128, label %14
    i32 130, label %20
    i32 129, label %34
  ]

14:                                               ; preds = %3
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call i32 @ceph_fscache_register_inode_cookie(%struct.inode* %15)
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = call i32 @ceph_fscache_file_set_cookie(%struct.inode* %17, %struct.file* %18)
  br label %20

20:                                               ; preds = %3, %14
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @S_ISDIR(i32 %26)
  %28 = call i32 @ceph_init_file_info(%struct.inode* %21, %struct.file* %22, i32 %23, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %20
  br label %73

34:                                               ; preds = %3
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.inode* %35, %struct.file* %36, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @ceph_inode(%struct.inode* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ceph_put_fmode(i32 %42, i32 %43)
  br label %73

45:                                               ; preds = %3
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %46, %struct.file* %47, i32 %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @ceph_inode(%struct.inode* %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ceph_put_fmode(i32 %53, i32 %54)
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ceph_release, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %68, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load %struct.file*, %struct.file** %6, align 8
  %72 = call i32 %69(%struct.inode* %70, %struct.file* %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %45, %34, %33
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %31
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ceph_fscache_register_inode_cookie(%struct.inode*) #1

declare dso_local i32 @ceph_fscache_file_set_cookie(%struct.inode*, %struct.file*) #1

declare dso_local i32 @ceph_init_file_info(%struct.inode*, %struct.file*, i32, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.file*, i32) #1

declare dso_local i32 @ceph_put_fmode(i32, i32) #1

declare dso_local i32 @ceph_inode(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
