; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_namei.c_find_target_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_namei.c_find_target_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erofs_dirent = type { i32 }
%struct.erofs_qstr = type { i32*, i32* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.erofs_dirent* (%struct.erofs_qstr*, i32*, i32, i32)* @find_target_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.erofs_dirent* @find_target_dirent(%struct.erofs_qstr* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.erofs_dirent*, align 8
  %6 = alloca %struct.erofs_qstr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.erofs_dirent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.erofs_qstr, align 8
  %19 = alloca i32, align 4
  store %struct.erofs_qstr* %0, %struct.erofs_qstr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = bitcast i32* %20 to %struct.erofs_dirent*
  store %struct.erofs_dirent* %21, %struct.erofs_dirent** %14, align 8
  store i32 1, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %97, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %98

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %35, i64 %37
  %39 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @nameoff_from_disk(i32 %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @min(i32 %43, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = getelementptr inbounds %struct.erofs_qstr, %struct.erofs_qstr* %18, i32 0, i32 0
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %28
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  br label %69

56:                                               ; preds = %28
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %58, i64 %61
  %63 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @nameoff_from_disk(i32 %64, i32 %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %57, i64 %67
  br label %69

69:                                               ; preds = %56, %51
  %70 = phi i32* [ %55, %51 ], [ %68, %56 ]
  store i32* %70, i32** %46, align 8
  %71 = getelementptr inbounds %struct.erofs_qstr, %struct.erofs_qstr* %18, i32 0, i32 1
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %71, align 8
  %76 = load %struct.erofs_qstr*, %struct.erofs_qstr** %6, align 8
  %77 = call i32 @erofs_dirnamecmp(%struct.erofs_qstr* %76, %struct.erofs_qstr* %18, i32* %17)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %69
  %81 = load %struct.erofs_dirent*, %struct.erofs_dirent** %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.erofs_dirent, %struct.erofs_dirent* %81, i64 %83
  store %struct.erofs_dirent* %84, %struct.erofs_dirent** %5, align 8
  br label %102

85:                                               ; preds = %69
  %86 = load i32, i32* %19, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %12, align 4
  br label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96
  br label %24

98:                                               ; preds = %24
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  %101 = call %struct.erofs_dirent* @ERR_PTR(i32 %100)
  store %struct.erofs_dirent* %101, %struct.erofs_dirent** %5, align 8
  br label %102

102:                                              ; preds = %98, %80
  %103 = load %struct.erofs_dirent*, %struct.erofs_dirent** %5, align 8
  ret %struct.erofs_dirent* %103
}

declare dso_local i32 @nameoff_from_disk(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @erofs_dirnamecmp(%struct.erofs_qstr*, %struct.erofs_qstr*, i32*) #1

declare dso_local %struct.erofs_dirent* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
