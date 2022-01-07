; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"write_begin from %lld len %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @cifs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  %21 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page** %5, %struct.page*** %13, align 8
  store i8** %6, i8*** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PAGE_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %32 = load i32, i32* @FYI, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @cifs_dbg(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %103, %7
  %38 = load %struct.address_space*, %struct.address_space** %9, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %38, i32 %39, i32 %40)
  store %struct.page* %41, %struct.page** %20, align 8
  %42 = load %struct.page*, %struct.page** %20, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %21, align 4
  br label %111

47:                                               ; preds = %37
  %48 = load %struct.page*, %struct.page** %20, align 8
  %49 = call i64 @PageUptodate(%struct.page* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %111

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %111

57:                                               ; preds = %52
  %58 = load %struct.address_space*, %struct.address_space** %9, align 8
  %59 = getelementptr inbounds %struct.address_space, %struct.address_space* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CIFS_I(i32 %60)
  %62 = call i64 @CIFS_CACHE_READ(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %57
  %65 = load %struct.address_space*, %struct.address_space** %9, align 8
  %66 = getelementptr inbounds %struct.address_space, %struct.address_space* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @i_size_read(i32 %67)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %76, %77
  %79 = load i32, i32* %19, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75, %64
  %82 = load %struct.page*, %struct.page** %20, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %84, %85
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = call i32 @zero_user_segments(%struct.page* %82, i32 0, i32 %83, i32 %86, i32 %87)
  %89 = load %struct.page*, %struct.page** %20, align 8
  %90 = call i32 @SetPageChecked(%struct.page* %89)
  br label %111

91:                                               ; preds = %75, %72
  br label %92

92:                                               ; preds = %91, %57
  %93 = load %struct.file*, %struct.file** %8, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @O_ACCMODE, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @O_WRONLY, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load %struct.file*, %struct.file** %8, align 8
  %105 = load %struct.page*, %struct.page** %20, align 8
  %106 = call i32 @cifs_readpage_worker(%struct.file* %104, %struct.page* %105, i32* %18)
  %107 = load %struct.page*, %struct.page** %20, align 8
  %108 = call i32 @put_page(%struct.page* %107)
  store i32 1, i32* %15, align 4
  br label %37

109:                                              ; preds = %100, %92
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %81, %56, %51, %44
  %112 = load %struct.page*, %struct.page** %20, align 8
  %113 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page* %112, %struct.page** %113, align 8
  %114 = load i32, i32* %21, align 4
  ret i32 %114
}

declare dso_local i32 @cifs_dbg(i32, i8*, i64, i32) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i64 @CIFS_CACHE_READ(i32) #1

declare dso_local i32 @CIFS_I(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @zero_user_segments(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @cifs_readpage_worker(%struct.file*, %struct.page*, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
