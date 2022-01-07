; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_inline_xattr_iter_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_inline_xattr_iter_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_iter = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.erofs_inode = type { i32, i32, i32 }
%struct.erofs_sb_info = type { i32 }

@ENOATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_iter*, %struct.inode*)* @inline_xattr_iter_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inline_xattr_iter_begin(%struct.xattr_iter* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xattr_iter*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.erofs_inode*, align 8
  %7 = alloca %struct.erofs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xattr_iter* %0, %struct.xattr_iter** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %10)
  store %struct.erofs_inode* %11, %struct.erofs_inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.erofs_sb_info* @EROFS_SB(i32 %14)
  store %struct.erofs_sb_info* %15, %struct.erofs_sb_info** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i32 @inlinexattr_header_size(%struct.inode* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %20 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %26 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @DBG_BUGON(i32 %29)
  %31 = load i32, i32* @ENOATTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %92

33:                                               ; preds = %2
  %34 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %35 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %7, align 8
  %40 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %41 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @iloc(%struct.erofs_sb_info* %39, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @erofs_blknr(i64 %46)
  %48 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %49 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %7, align 8
  %51 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %52 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @iloc(%struct.erofs_sb_info* %50, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = call i32 @erofs_blkoff(i64 %57)
  %59 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %60 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %65 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @erofs_get_meta_page(i32 %63, i32 %66)
  %68 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %69 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %71 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %33
  %76 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %77 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %92

80:                                               ; preds = %33
  %81 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %82 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @kmap_atomic(i32 %83)
  %85 = load %struct.xattr_iter*, %struct.xattr_iter** %4, align 8
  %86 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %88 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub i32 %89, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %75, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local %struct.erofs_sb_info* @EROFS_SB(i32) #1

declare dso_local i32 @inlinexattr_header_size(%struct.inode*) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @erofs_blknr(i64) #1

declare dso_local i64 @iloc(%struct.erofs_sb_info*, i32) #1

declare dso_local i32 @erofs_blkoff(i64) #1

declare dso_local i32 @erofs_get_meta_page(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kmap_atomic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
