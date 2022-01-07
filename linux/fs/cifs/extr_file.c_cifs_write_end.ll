; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.page = type { i32 }
%struct.cifs_sb_info = type { i32 }

@CIFS_MOUNT_RWPIDFORWARD = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"write_end for page %p from pos %lld with %d bytes\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @cifs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.cifsFileInfo*, align 8
  %18 = alloca %struct.cifs_sb_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %23 = load %struct.address_space*, %struct.address_space** %9, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %16, align 8
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %27, align 8
  store %struct.cifsFileInfo* %28, %struct.cifsFileInfo** %17, align 8
  %29 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %30 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.cifs_sb_info* @CIFS_SB(i32 %33)
  store %struct.cifs_sb_info* %34, %struct.cifs_sb_info** %18, align 8
  %35 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %18, align 8
  %36 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CIFS_MOUNT_RWPIDFORWARD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %7
  %42 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %43 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %19, align 4
  br label %49

45:                                               ; preds = %7
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %19, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @FYI, align 4
  %51 = load %struct.page*, %struct.page** %13, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @cifs_dbg(i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.page* %51, i32 %52, i32 %53)
  %55 = load %struct.page*, %struct.page** %13, align 8
  %56 = call i64 @PageChecked(%struct.page* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.page*, %struct.page** %13, align 8
  %64 = call i32 @SetPageUptodate(%struct.page* %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = call i32 @ClearPageChecked(%struct.page* %66)
  br label %80

68:                                               ; preds = %49
  %69 = load %struct.page*, %struct.page** %13, align 8
  %70 = call i32 @PageUptodate(%struct.page* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.page*, %struct.page** %13, align 8
  %78 = call i32 @SetPageUptodate(%struct.page* %77)
  br label %79

79:                                               ; preds = %76, %72, %68
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.page*, %struct.page** %13, align 8
  %82 = call i32 @PageUptodate(%struct.page* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = sub i32 %86, 1
  %88 = and i32 %85, %87
  store i32 %88, i32* %21, align 4
  %89 = call i32 (...) @get_xid()
  store i32 %89, i32* %22, align 4
  %90 = load %struct.page*, %struct.page** %13, align 8
  %91 = call i8* @kmap(%struct.page* %90)
  store i8* %91, i8** %20, align 8
  %92 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %93 = load i32, i32* %19, align 4
  %94 = load i8*, i8** %20, align 8
  %95 = load i32, i32* %21, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @cifs_write(%struct.cifsFileInfo* %92, i32 %93, i8* %97, i32 %98, i32* %10)
  store i32 %99, i32* %15, align 4
  %100 = load %struct.page*, %struct.page** %13, align 8
  %101 = call i32 @kunmap(%struct.page* %100)
  %102 = load i32, i32* %22, align 4
  %103 = call i32 @free_xid(i32 %102)
  br label %111

104:                                              ; preds = %80
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load %struct.page*, %struct.page** %13, align 8
  %110 = call i32 @set_page_dirty(%struct.page* %109)
  br label %111

111:                                              ; preds = %104, %84
  %112 = load i32, i32* %15, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load %struct.inode*, %struct.inode** %16, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 1
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.inode*, %struct.inode** %16, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ugt i32 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load %struct.inode*, %struct.inode** %16, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @i_size_write(%struct.inode* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %114
  %128 = load %struct.inode*, %struct.inode** %16, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock(i32* %129)
  br label %131

131:                                              ; preds = %127, %111
  %132 = load %struct.page*, %struct.page** %13, align 8
  %133 = call i32 @unlock_page(%struct.page* %132)
  %134 = load %struct.page*, %struct.page** %13, align 8
  %135 = call i32 @put_page(%struct.page* %134)
  %136 = load i32, i32* %15, align 4
  ret i32 %136
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.page*, i32, i32) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @cifs_write(%struct.cifsFileInfo*, i32, i8*, i32, i32*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
