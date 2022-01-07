; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_namei.c_erofs_namei.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_namei.c_erofs_namei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i64, i64 }
%struct.page = type { i32, i32 }
%struct.erofs_dirent = type { i32, i32 }
%struct.erofs_qstr = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EROFS_BLKSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @erofs_namei(%struct.inode* %0, %struct.qstr* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.erofs_dirent*, align 8
  %14 = alloca %struct.erofs_qstr, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %80

22:                                               ; preds = %4
  %23 = load %struct.qstr*, %struct.qstr** %7, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.erofs_qstr, %struct.erofs_qstr* %14, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.qstr*, %struct.qstr** %7, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qstr*, %struct.qstr** %7, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = getelementptr inbounds %struct.erofs_qstr, %struct.erofs_qstr* %14, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %10, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call %struct.page* @find_target_block_classic(%struct.inode* %35, %struct.erofs_qstr* %14, i32* %10)
  store %struct.page* %36, %struct.page** %11, align 8
  %37 = load %struct.page*, %struct.page** %11, align 8
  %38 = call i64 @IS_ERR(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load %struct.page*, %struct.page** %11, align 8
  %42 = call i32 @PTR_ERR(%struct.page* %41)
  store i32 %42, i32* %5, align 4
  br label %80

43:                                               ; preds = %22
  %44 = load %struct.page*, %struct.page** %11, align 8
  %45 = call i8* @kmap_atomic(%struct.page* %44)
  store i8* %45, i8** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* @EROFS_BLKSIZ, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.page* @find_target_dirent(%struct.erofs_qstr* %14, i8* %49, i32 %50, i32 %51)
  %53 = bitcast %struct.page* %52 to %struct.erofs_dirent*
  store %struct.erofs_dirent* %53, %struct.erofs_dirent** %13, align 8
  br label %57

54:                                               ; preds = %43
  %55 = load i8*, i8** %12, align 8
  %56 = bitcast i8* %55 to %struct.erofs_dirent*
  store %struct.erofs_dirent* %56, %struct.erofs_dirent** %13, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.erofs_dirent*, %struct.erofs_dirent** %13, align 8
  %59 = bitcast %struct.erofs_dirent* %58 to %struct.page*
  %60 = call i64 @IS_ERR(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.erofs_dirent*, %struct.erofs_dirent** %13, align 8
  %64 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le64_to_cpu(i32 %65)
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.erofs_dirent*, %struct.erofs_dirent** %13, align 8
  %69 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %62, %57
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @kunmap_atomic(i8* %73)
  %75 = load %struct.page*, %struct.page** %11, align 8
  %76 = call i32 @put_page(%struct.page* %75)
  %77 = load %struct.erofs_dirent*, %struct.erofs_dirent** %13, align 8
  %78 = bitcast %struct.erofs_dirent* %77 to %struct.page*
  %79 = call i32 @PTR_ERR_OR_ZERO(%struct.page* %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %72, %40, %19
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.page* @find_target_block_classic(%struct.inode*, %struct.erofs_qstr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local %struct.page* @find_target_dirent(%struct.erofs_qstr*, i8*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
