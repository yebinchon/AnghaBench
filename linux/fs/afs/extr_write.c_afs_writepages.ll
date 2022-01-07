; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i8* }
%struct.writeback_control = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LLONG_MAX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %9 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %6, align 8
  %18 = load %struct.address_space*, %struct.address_space** %3, align 8
  %19 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @afs_writepages_region(%struct.address_space* %18, %struct.writeback_control* %19, i8* %20, i8* %21, i8** %7)
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ugt i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %14
  %26 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %27 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.address_space*, %struct.address_space** %3, align 8
  %35 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @afs_writepages_region(%struct.address_space* %34, %struct.writeback_control* %35, i8* null, i8* %36, i8** %7)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %30, %25, %14
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.address_space*, %struct.address_space** %3, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %93

42:                                               ; preds = %2
  %43 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %44 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %49 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LLONG_MAX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load i32, i32* @LLONG_MAX, align 4
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %6, align 8
  %59 = load %struct.address_space*, %struct.address_space** %3, align 8
  %60 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @afs_writepages_region(%struct.address_space* %59, %struct.writeback_control* %60, i8* null, i8* %61, i8** %7)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %64 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.address_space*, %struct.address_space** %3, align 8
  %70 = getelementptr inbounds %struct.address_space, %struct.address_space* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %53
  br label %92

72:                                               ; preds = %47, %42
  %73 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %74 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PAGE_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %5, align 8
  %80 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %81 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %6, align 8
  %87 = load %struct.address_space*, %struct.address_space** %3, align 8
  %88 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @afs_writepages_region(%struct.address_space* %87, %struct.writeback_control* %88, i8* %89, i8* %90, i8** %7)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %72, %71
  br label %93

93:                                               ; preds = %92, %38
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @afs_writepages_region(%struct.address_space*, %struct.writeback_control*, i8*, i8*, i8**) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
