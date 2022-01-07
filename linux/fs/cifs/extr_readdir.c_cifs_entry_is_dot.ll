; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_entry_is_dot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_entry_is_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_dirent = type { i8*, i32 }

@UNICODE_DOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_dirent*, i32)* @cifs_entry_is_dot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_entry_is_dot(%struct.cifs_dirent* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_dirent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.cifs_dirent* %0, %struct.cifs_dirent** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %9 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  %17 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %18 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %7, align 8
  %21 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %22 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UNICODE_DOT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %53

33:                                               ; preds = %16
  %34 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %35 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UNICODE_DOT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UNICODE_DOT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 2, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %44, %38
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %32
  br label %94

54:                                               ; preds = %13
  %55 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %56 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %61 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %59
  br label %93

69:                                               ; preds = %54
  %70 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %71 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %76 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.cifs_dirent*, %struct.cifs_dirent** %4, align 8
  %84 = getelementptr inbounds %struct.cifs_dirent, %struct.cifs_dirent* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 46
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 2, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %82, %74
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %68
  br label %94

94:                                               ; preds = %93, %53
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
