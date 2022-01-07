; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_namei.c___affs_compare_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_namei.c___affs_compare_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32 }

@AFFSNAMEMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.qstr*, i64 (i32)*, i32)* @__affs_compare_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__affs_compare_dentry(i32 %0, i8* %1, %struct.qstr* %2, i64 (i32)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i64 (i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store i64 (i32)* %3, i64 (i32)** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  %15 = load %struct.qstr*, %struct.qstr** %9, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.qstr*, %struct.qstr** %9, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.qstr*, %struct.qstr** %9, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @affs_check_name(i8* %20, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %73

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AFFSNAMEMAX, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.qstr*, %struct.qstr** %9, align 8
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AFFSNAMEMAX, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %73

39:                                               ; preds = %32
  %40 = load i32, i32* @AFFSNAMEMAX, align 4
  store i32 %40, i32* %7, align 4
  br label %49

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.qstr*, %struct.qstr** %9, align 8
  %44 = getelementptr inbounds %struct.qstr, %struct.qstr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %73

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i32, i32* %7, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load i64 (i32)*, i64 (i32)** %10, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = call i64 %54(i32 %58)
  %60 = load i64 (i32)*, i64 (i32)** %10, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %13, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = call i64 %60(i32 %64)
  %66 = icmp ne i64 %59, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %73

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %7, align 4
  br label %50

72:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %67, %47, %38, %27
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @affs_check_name(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
