; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_dir.c_erofs_fill_dentries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_dir.c_erofs_fill_dentries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_context = type { i32 }
%struct.erofs_dirent = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EROFS_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"bogus dirent @ nid %llu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dir_context*, i8*, i32*, i32, i32)* @erofs_fill_dentries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_fill_dentries(%struct.inode* %0, %struct.dir_context* %1, i8* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dir_context*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.erofs_dirent*, align 8
  %15 = alloca %struct.erofs_dirent*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.dir_context* %1, %struct.dir_context** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr i8, i8* %19, i64 %22
  %24 = bitcast i8* %23 to %struct.erofs_dirent*
  store %struct.erofs_dirent* %24, %struct.erofs_dirent** %14, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = bitcast i8* %28 to %struct.erofs_dirent*
  store %struct.erofs_dirent* %29, %struct.erofs_dirent** %15, align 8
  br label %30

30:                                               ; preds = %103, %6
  %31 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %32 = load %struct.erofs_dirent*, %struct.erofs_dirent** %15, align 8
  %33 = icmp ult %struct.erofs_dirent* %31, %32
  br i1 %33, label %34, label %111

34:                                               ; preds = %30
  %35 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %36 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call zeroext i8 @fs_ftype_to_dtype(i32 %37)
  store i8 %38, i8* %18, align 1
  %39 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %40 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %16, align 8
  %47 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %48 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %47, i64 1
  %49 = load %struct.erofs_dirent*, %struct.erofs_dirent** %15, align 8
  %50 = icmp uge %struct.erofs_dirent* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %34
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub i32 %53, %54
  %56 = call i32 @strnlen(i8* %52, i32 %55)
  store i32 %56, i32* %17, align 4
  br label %65

57:                                               ; preds = %34
  %58 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %59 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %58, i64 1
  %60 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = sub i32 %62, %63
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %17, align 4
  %68 = add i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @EROFS_NAME_LEN, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71, %65
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call %struct.TYPE_2__* @EROFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @erofs_err(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = call i32 @DBG_BUGON(i32 1)
  %85 = load i32, i32* @EFSCORRUPTED, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %114

87:                                               ; preds = %71
  %88 = load i8, i8* %18, align 1
  %89 = load i8*, i8** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @debug_one_dentry(i8 zeroext %88, i8* %89, i32 %90)
  %92 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %96 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le64_to_cpu(i32 %97)
  %99 = load i8, i8* %18, align 1
  %100 = call i32 @dir_emit(%struct.dir_context* %92, i8* %93, i32 %94, i32 %98, i8 zeroext %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %87
  store i32 1, i32* %7, align 4
  br label %114

103:                                              ; preds = %87
  %104 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %105 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %104, i32 1
  store %struct.erofs_dirent* %105, %struct.erofs_dirent** %14, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  %109 = add i64 %108, 12
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  br label %30

111:                                              ; preds = %30
  %112 = load i32, i32* %13, align 4
  %113 = load i32*, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %111, %102, %75
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local zeroext i8 @fs_ftype_to_dtype(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @erofs_err(i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @debug_one_dentry(i8 zeroext, i8*, i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i8 zeroext) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
