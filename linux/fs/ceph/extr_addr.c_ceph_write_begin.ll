; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"write_begin file %p inode %p page %p %d~%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @ceph_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %20 = load %struct.file*, %struct.file** %9, align 8
  %21 = call %struct.inode* @file_inode(%struct.file* %20)
  store %struct.inode* %21, %struct.inode** %16, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %18, align 4
  br label %25

25:                                               ; preds = %55, %7
  %26 = load %struct.address_space*, %struct.address_space** %10, align 8
  %27 = load i32, i32* %18, align 4
  %28 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %26, i32 %27, i32 0)
  store %struct.page* %28, %struct.page** %17, align 8
  %29 = load %struct.page*, %struct.page** %17, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %62

34:                                               ; preds = %25
  %35 = load %struct.file*, %struct.file** %9, align 8
  %36 = load %struct.inode*, %struct.inode** %16, align 8
  %37 = load %struct.page*, %struct.page** %17, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @dout(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.file* %35, %struct.inode* %36, %struct.page* %37, i32 %38, i32 %39)
  %41 = load %struct.file*, %struct.file** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.page*, %struct.page** %17, align 8
  %45 = call i32 @ceph_update_writeable_page(%struct.file* %41, i32 %42, i32 %43, %struct.page* %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.page*, %struct.page** %17, align 8
  %50 = call i32 @put_page(%struct.page* %49)
  br label %54

51:                                               ; preds = %34
  %52 = load %struct.page*, %struct.page** %17, align 8
  %53 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %52, %struct.page** %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %25, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %31
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @dout(i8*, %struct.file*, %struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i32 @ceph_update_writeable_page(%struct.file*, i32, i32, %struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
