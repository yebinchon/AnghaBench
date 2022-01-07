; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_shared_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_shared_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.getxattr_iter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.erofs_inode = type { i32, i32* }
%struct.erofs_sb_info = type { i32 }

@ENOATTR = common dso_local global i32 0, align 4
@find_xattr_handlers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.getxattr_iter*)* @shared_getxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shared_getxattr(%struct.inode* %0, %struct.getxattr_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.getxattr_iter*, align 8
  %6 = alloca %struct.erofs_inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.erofs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.getxattr_iter* %1, %struct.getxattr_iter** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %12)
  store %struct.erofs_inode* %13, %struct.erofs_inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %7, align 8
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = call %struct.erofs_sb_info* @EROFS_SB(%struct.super_block* %17)
  store %struct.erofs_sb_info* %18, %struct.erofs_sb_info** %8, align 8
  %19 = load i32, i32* @ENOATTR, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %107, %2
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %24 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %110

27:                                               ; preds = %21
  %28 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %8, align 8
  %29 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %30 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @xattrblock_addr(%struct.erofs_sb_info* %28, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %8, align 8
  %38 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %39 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xattrblock_offset(%struct.erofs_sb_info* %37, i32 %44)
  %46 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %47 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %27
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %54 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %51, %27
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %63 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %62, i32 0, i32 1
  %64 = call i32 @xattr_iter_end(%struct.TYPE_4__* %63, i32 1)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.super_block*, %struct.super_block** %7, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @erofs_get_meta_page(%struct.super_block* %66, i64 %67)
  %69 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %70 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %73 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %80 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %130

84:                                               ; preds = %65
  %85 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %86 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @kmap_atomic(i32 %88)
  %90 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %91 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %95 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %84, %51
  %98 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %99 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %98, i32 0, i32 1
  %100 = call i32 @xattr_foreach(%struct.TYPE_4__* %99, i32* @find_xattr_handlers, i32* null)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ENOATTR, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %110

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %21

110:                                              ; preds = %105, %21
  %111 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %112 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %117 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %116, i32 0, i32 1
  %118 = call i32 @xattr_iter_end_final(%struct.TYPE_4__* %117)
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  br label %128

124:                                              ; preds = %119
  %125 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %126 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  br label %128

128:                                              ; preds = %124, %122
  %129 = phi i32 [ %123, %122 ], [ %127, %124 ]
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %78
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local %struct.erofs_sb_info* @EROFS_SB(%struct.super_block*) #1

declare dso_local i64 @xattrblock_addr(%struct.erofs_sb_info*, i32) #1

declare dso_local i32 @xattrblock_offset(%struct.erofs_sb_info*, i32) #1

declare dso_local i32 @xattr_iter_end(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @erofs_get_meta_page(%struct.super_block*, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kmap_atomic(i32) #1

declare dso_local i32 @xattr_foreach(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @xattr_iter_end_final(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
