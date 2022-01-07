; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_set_entry_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_set_entry_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry_t = type { i32 }
%struct.file_dentry_t = type { i32, i32 }

@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_DELETED = common dso_local global i64 0, align 8
@TYPE_STREAM = common dso_local global i64 0, align 8
@TYPE_EXTEND = common dso_local global i64 0, align 8
@TYPE_BITMAP = common dso_local global i64 0, align 8
@TYPE_UPCASE = common dso_local global i64 0, align 8
@TYPE_VOLUME = common dso_local global i64 0, align 8
@TYPE_DIR = common dso_local global i64 0, align 8
@ATTR_SUBDIR = common dso_local global i32 0, align 4
@TYPE_FILE = common dso_local global i64 0, align 8
@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@TYPE_SYMLINK = common dso_local global i64 0, align 8
@ATTR_SYMLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exfat_set_entry_type(%struct.dentry_t* %0, i64 %1) #0 {
  %3 = alloca %struct.dentry_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.file_dentry_t*, align 8
  store %struct.dentry_t* %0, %struct.dentry_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dentry_t*, %struct.dentry_t** %3, align 8
  %7 = bitcast %struct.dentry_t* %6 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %7, %struct.file_dentry_t** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TYPE_UNUSED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %13 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %105

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @TYPE_DELETED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %20 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -129
  store i32 %22, i32* %20, align 4
  br label %104

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @TYPE_STREAM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %29 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %28, i32 0, i32 0
  store i32 192, i32* %29, align 4
  br label %103

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @TYPE_EXTEND, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %36 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %35, i32 0, i32 0
  store i32 193, i32* %36, align 4
  br label %102

37:                                               ; preds = %30
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @TYPE_BITMAP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %43 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %42, i32 0, i32 0
  store i32 129, i32* %43, align 4
  br label %101

44:                                               ; preds = %37
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @TYPE_UPCASE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %50 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %49, i32 0, i32 0
  store i32 130, i32* %50, align 4
  br label %100

51:                                               ; preds = %44
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @TYPE_VOLUME, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %57 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %56, i32 0, i32 0
  store i32 131, i32* %57, align 4
  br label %99

58:                                               ; preds = %51
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @TYPE_DIR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %64 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %63, i32 0, i32 0
  store i32 133, i32* %64, align 4
  %65 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %66 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATTR_SUBDIR, align 4
  %69 = call i32 @SET16_A(i32 %67, i32 %68)
  br label %98

70:                                               ; preds = %58
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @TYPE_FILE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %76 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %75, i32 0, i32 0
  store i32 133, i32* %76, align 4
  %77 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %78 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ATTR_ARCHIVE, align 4
  %81 = call i32 @SET16_A(i32 %79, i32 %80)
  br label %97

82:                                               ; preds = %70
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @TYPE_SYMLINK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %88 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %87, i32 0, i32 0
  store i32 133, i32* %88, align 4
  %89 = load %struct.file_dentry_t*, %struct.file_dentry_t** %5, align 8
  %90 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ATTR_ARCHIVE, align 4
  %93 = load i32, i32* @ATTR_SYMLINK, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @SET16_A(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %86, %82
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %62
  br label %99

99:                                               ; preds = %98, %55
  br label %100

100:                                              ; preds = %99, %48
  br label %101

101:                                              ; preds = %100, %41
  br label %102

102:                                              ; preds = %101, %34
  br label %103

103:                                              ; preds = %102, %27
  br label %104

104:                                              ; preds = %103, %18
  br label %105

105:                                              ; preds = %104, %11
  ret void
}

declare dso_local i32 @SET16_A(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
