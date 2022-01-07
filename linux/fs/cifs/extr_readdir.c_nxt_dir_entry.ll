; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_nxt_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_nxt_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid offset %u\0A\00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"new entry %p old entry %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"search entry %p began after end of SMB %p old entry %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"search entry %p extends after end of SMB %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @nxt_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nxt_dir_entry(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = bitcast %struct.TYPE_4__* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %8, align 8
  br label %47

27:                                               ; preds = %3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @VFS, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i8* null, i8** %4, align 8
  br label %86

42:                                               ; preds = %27
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %8, align 8
  br label %47

47:                                               ; preds = %42, %17
  %48 = load i32, i32* @FYI, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp uge i8* %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @VFS, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %58, i8* %59)
  store i8* null, i8** %4, align 8
  br label %86

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ugt i8* %67, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ugt i8* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74, %65
  %80 = load i32, i32* @VFS, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %81, i8* %82)
  store i8* null, i8** %4, align 8
  br label %86

84:                                               ; preds = %74, %70
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %84, %79, %55, %38
  %87 = load i8*, i8** %4, align 8
  ret i8* %87
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
