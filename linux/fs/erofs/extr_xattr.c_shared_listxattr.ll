; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_shared_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_shared_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listxattr_iter = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.erofs_inode = type { i32, i32* }
%struct.erofs_sb_info = type { i32 }

@list_xattr_handlers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.listxattr_iter*)* @shared_listxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shared_listxattr(%struct.listxattr_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.listxattr_iter*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.erofs_inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.erofs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.listxattr_iter* %0, %struct.listxattr_iter** %3, align 8
  %11 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %12 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %15)
  store %struct.erofs_inode* %16, %struct.erofs_inode** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %6, align 8
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = call %struct.erofs_sb_info* @EROFS_SB(%struct.super_block* %20)
  store %struct.erofs_sb_info* %21, %struct.erofs_sb_info** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %106, %1
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.erofs_inode*, %struct.erofs_inode** %5, align 8
  %25 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %109

28:                                               ; preds = %22
  %29 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %7, align 8
  %30 = load %struct.erofs_inode*, %struct.erofs_inode** %5, align 8
  %31 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @xattrblock_addr(%struct.erofs_sb_info* %29, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %7, align 8
  %39 = load %struct.erofs_inode*, %struct.erofs_inode** %5, align 8
  %40 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xattrblock_offset(%struct.erofs_sb_info* %38, i32 %45)
  %47 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %48 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %28
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %55 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %52, %28
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %64 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %63, i32 0, i32 1
  %65 = call i32 @xattr_iter_end(%struct.TYPE_4__* %64, i32 1)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.super_block*, %struct.super_block** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @erofs_get_meta_page(%struct.super_block* %67, i64 %68)
  %70 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %71 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %74 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %81 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %129

85:                                               ; preds = %66
  %86 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %87 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @kmap_atomic(i32 %89)
  %91 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %92 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %96 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  br label %98

98:                                               ; preds = %85, %52
  %99 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %100 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %99, i32 0, i32 1
  %101 = call i32 @xattr_foreach(%struct.TYPE_4__* %100, i32* @list_xattr_handlers, i32* null)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %109

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %22

109:                                              ; preds = %104, %22
  %110 = load %struct.erofs_inode*, %struct.erofs_inode** %5, align 8
  %111 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %116 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %115, i32 0, i32 1
  %117 = call i32 @xattr_iter_end_final(%struct.TYPE_4__* %116)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  br label %127

123:                                              ; preds = %118
  %124 = load %struct.listxattr_iter*, %struct.listxattr_iter** %3, align 8
  %125 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  br label %127

127:                                              ; preds = %123, %121
  %128 = phi i32 [ %122, %121 ], [ %126, %123 ]
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %79
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.inode* @d_inode(i32) #1

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
