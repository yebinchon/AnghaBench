; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_namei.c_find_target_block_classic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_namei.c_find_target_block_classic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.erofs_qstr = type { i32*, i32* }
%struct.erofs_dirent = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EROFS_BLKSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"corrupted dir block %d @ nid %llu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.inode*, %struct.erofs_qstr*, i32*)* @find_target_block_classic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @find_target_block_classic(%struct.inode* %0, %struct.erofs_qstr* %1, i32* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.erofs_qstr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.erofs_dirent*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.erofs_qstr, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.erofs_qstr* %1, %struct.erofs_qstr** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.address_space*, %struct.address_space** %23, align 8
  store %struct.address_space* %24, %struct.address_space** %12, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.page* @ERR_PTR(i32 %26)
  store %struct.page* %27, %struct.page** %13, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call i32 @erofs_inode_datablocks(%struct.inode* %28)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %144, %3
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %155

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.address_space*, %struct.address_space** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call %struct.page* @read_mapping_page(%struct.address_space* %42, i32 %43, i32* null)
  store %struct.page* %44, %struct.page** %15, align 8
  %45 = load %struct.page*, %struct.page** %15, align 8
  %46 = call i32 @IS_ERR(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %145, label %48

48:                                               ; preds = %35
  %49 = load %struct.page*, %struct.page** %15, align 8
  %50 = call %struct.erofs_dirent* @kmap_atomic(%struct.page* %49)
  store %struct.erofs_dirent* %50, %struct.erofs_dirent** %16, align 8
  %51 = load %struct.erofs_dirent*, %struct.erofs_dirent** %16, align 8
  %52 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EROFS_BLKSIZ, align 4
  %55 = call i32 @nameoff_from_disk(i32 %53, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %48
  %63 = load %struct.erofs_dirent*, %struct.erofs_dirent** %16, align 8
  %64 = call i32 @kunmap_atomic(%struct.erofs_dirent* %63)
  %65 = load %struct.page*, %struct.page** %15, align 8
  %66 = call i32 @put_page(%struct.page* %65)
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call %struct.TYPE_2__* @EROFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @erofs_err(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %74)
  %76 = call i32 @DBG_BUGON(i32 1)
  %77 = load i32, i32* @EFSCORRUPTED, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.page* @ERR_PTR(i32 %78)
  store %struct.page* %79, %struct.page** %15, align 8
  br label %146

80:                                               ; preds = %48
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @min(i32 %81, i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load %struct.erofs_dirent*, %struct.erofs_dirent** %16, align 8
  %85 = bitcast %struct.erofs_dirent* %84 to i32*
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = getelementptr inbounds %struct.erofs_qstr, %struct.erofs_qstr* %21, i32 0, i32 1
  store i32* %88, i32** %89, align 8
  %90 = load i32, i32* %18, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load %struct.erofs_dirent*, %struct.erofs_dirent** %16, align 8
  %94 = bitcast %struct.erofs_dirent* %93 to i32*
  %95 = load i32, i32* @EROFS_BLKSIZ, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = getelementptr inbounds %struct.erofs_qstr, %struct.erofs_qstr* %21, i32 0, i32 0
  store i32* %97, i32** %98, align 8
  br label %111

99:                                               ; preds = %80
  %100 = load %struct.erofs_dirent*, %struct.erofs_dirent** %16, align 8
  %101 = bitcast %struct.erofs_dirent* %100 to i32*
  %102 = load %struct.erofs_dirent*, %struct.erofs_dirent** %16, align 8
  %103 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %102, i64 1
  %104 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @EROFS_BLKSIZ, align 4
  %107 = call i32 @nameoff_from_disk(i32 %105, i32 %106)
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %101, i64 %108
  %110 = getelementptr inbounds %struct.erofs_qstr, %struct.erofs_qstr* %21, i32 0, i32 0
  store i32* %109, i32** %110, align 8
  br label %111

111:                                              ; preds = %99, %92
  %112 = load %struct.erofs_qstr*, %struct.erofs_qstr** %6, align 8
  %113 = call i32 @erofs_dirnamecmp(%struct.erofs_qstr* %112, %struct.erofs_qstr* %21, i32* %20)
  store i32 %113, i32* %19, align 4
  %114 = load %struct.erofs_dirent*, %struct.erofs_dirent** %16, align 8
  %115 = call i32 @kunmap_atomic(%struct.erofs_dirent* %114)
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  %119 = load i32*, i32** %7, align 8
  store i32 0, i32* %119, align 4
  br label %146

120:                                              ; preds = %111
  %121 = load i32, i32* %19, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %20, align 4
  store i32 %126, i32* %8, align 4
  %127 = load %struct.page*, %struct.page** %13, align 8
  %128 = call i32 @IS_ERR(%struct.page* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = load %struct.page*, %struct.page** %13, align 8
  %132 = call i32 @put_page(%struct.page* %131)
  br label %133

133:                                              ; preds = %130, %123
  %134 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %134, %struct.page** %13, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  br label %143

137:                                              ; preds = %120
  %138 = load %struct.page*, %struct.page** %15, align 8
  %139 = call i32 @put_page(%struct.page* %138)
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %20, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %137, %133
  br label %144

144:                                              ; preds = %143
  br label %31

145:                                              ; preds = %35
  br label %146

146:                                              ; preds = %145, %118, %62
  %147 = load %struct.page*, %struct.page** %13, align 8
  %148 = call i32 @IS_ERR(%struct.page* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load %struct.page*, %struct.page** %13, align 8
  %152 = call i32 @put_page(%struct.page* %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %154, %struct.page** %4, align 8
  br label %157

155:                                              ; preds = %31
  %156 = load %struct.page*, %struct.page** %13, align 8
  store %struct.page* %156, %struct.page** %4, align 8
  br label %157

157:                                              ; preds = %155, %153
  %158 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %158
}

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @erofs_inode_datablocks(%struct.inode*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local %struct.erofs_dirent* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @nameoff_from_disk(i32, i32) #1

declare dso_local i32 @kunmap_atomic(%struct.erofs_dirent*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @erofs_err(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @erofs_dirnamecmp(%struct.erofs_qstr*, %struct.erofs_qstr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
