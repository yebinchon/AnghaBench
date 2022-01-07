; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_fill_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_fill_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@__GFP_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"fill_inline_data %p %llx.%llx len %zu locked_page %p\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_fill_inline_data(%struct.inode* %0, %struct.page* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %9, align 8
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %18, %struct.page** %10, align 8
  br label %44

19:                                               ; preds = %4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i64 @i_size_read(%struct.inode* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %85

24:                                               ; preds = %19
  %25 = load %struct.address_space*, %struct.address_space** %9, align 8
  %26 = load %struct.address_space*, %struct.address_space** %9, align 8
  %27 = load i32, i32* @__GFP_FS, align 4
  %28 = xor i32 %27, -1
  %29 = call i32 @mapping_gfp_constraint(%struct.address_space* %26, i32 %28)
  %30 = call %struct.page* @find_or_create_page(%struct.address_space* %25, i32 0, i32 %29)
  store %struct.page* %30, %struct.page** %10, align 8
  %31 = load %struct.page*, %struct.page** %10, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %85

34:                                               ; preds = %24
  %35 = load %struct.page*, %struct.page** %10, align 8
  %36 = call i64 @PageUptodate(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.page*, %struct.page** %10, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = call i32 @put_page(%struct.page* %41)
  br label %85

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %17
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call i32 @ceph_vinop(%struct.inode* %46)
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @dout(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.inode* %45, i32 %47, i64 %48, %struct.page* %49)
  %51 = load i64, i64* %8, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.page*, %struct.page** %10, align 8
  %55 = call i8* @kmap_atomic(%struct.page* %54)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @kunmap_atomic(i8* %60)
  br label %62

62:                                               ; preds = %53, %44
  %63 = load %struct.page*, %struct.page** %10, align 8
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = icmp ne %struct.page* %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.page*, %struct.page** %10, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = call i32 @zero_user_segment(%struct.page* %71, i64 %72, i64 %73)
  br label %78

75:                                               ; preds = %66
  %76 = load %struct.page*, %struct.page** %10, align 8
  %77 = call i32 @flush_dcache_page(%struct.page* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = call i32 @SetPageUptodate(%struct.page* %79)
  %81 = load %struct.page*, %struct.page** %10, align 8
  %82 = call i32 @unlock_page(%struct.page* %81)
  %83 = load %struct.page*, %struct.page** %10, align 8
  %84 = call i32 @put_page(%struct.page* %83)
  br label %85

85:                                               ; preds = %23, %33, %38, %78, %62
  ret void
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mapping_gfp_constraint(%struct.address_space*, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i32, i64, %struct.page*) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i64, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
