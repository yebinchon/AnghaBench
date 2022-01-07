; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_get_num_entries_and_dos_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_get_num_entries_and_dos_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.uni_name_t = type { i32 }
%struct.dos_name_t = type { i32, i64 }
%struct.fs_info_t = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.uni_name_t*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@FFS_INVALIDPATH = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@reserved_names = common dso_local global i8** null, align 8
@FFS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_num_entries_and_dos_name(%struct.super_block* %0, %struct.chain_t* %1, %struct.uni_name_t* %2, i32* %3, %struct.dos_name_t* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.chain_t*, align 8
  %9 = alloca %struct.uni_name_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dos_name_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.chain_t* %1, %struct.chain_t** %8, align 8
  store %struct.uni_name_t* %2, %struct.uni_name_t** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.dos_name_t* %4, %struct.dos_name_t** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.fs_info_t* %19, %struct.fs_info_t** %16, align 8
  %20 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %21 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.uni_name_t*)*, i32 (%struct.uni_name_t*)** %23, align 8
  %25 = load %struct.uni_name_t*, %struct.uni_name_t** %9, align 8
  %26 = call i32 %24(%struct.uni_name_t* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @FFS_INVALIDPATH, align 4
  store i32 %30, i32* %6, align 4
  br label %93

31:                                               ; preds = %5
  %32 = load %struct.fs_info_t*, %struct.fs_info_t** %16, align 8
  %33 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EXFAT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %31
  %38 = load %struct.super_block*, %struct.super_block** %7, align 8
  %39 = load %struct.dos_name_t*, %struct.dos_name_t** %11, align 8
  %40 = load %struct.uni_name_t*, %struct.uni_name_t** %9, align 8
  %41 = call i32 @nls_uniname_to_dosname(%struct.super_block* %38, %struct.dos_name_t* %39, %struct.uni_name_t* %40, i32* %14)
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %47 = load %struct.dos_name_t*, %struct.dos_name_t** %11, align 8
  %48 = call i32 @fat_generate_dos_name(%struct.super_block* %45, %struct.chain_t* %46, %struct.dos_name_t* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %93

53:                                               ; preds = %44
  br label %82

54:                                               ; preds = %37
  %55 = load i8**, i8*** @reserved_names, align 8
  store i8** %55, i8*** %15, align 8
  br label %56

56:                                               ; preds = %72, %54
  %57 = load i8**, i8*** %15, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.dos_name_t*, %struct.dos_name_t** %11, align 8
  %62 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8**, i8*** %15, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strncmp(i8* %64, i8* %66, i32 8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @FFS_INVALIDPATH, align 4
  store i32 %70, i32* %6, align 4
  br label %93

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i8**, i8*** %15, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %15, align 8
  br label %56

75:                                               ; preds = %56
  %76 = load %struct.dos_name_t*, %struct.dos_name_t** %11, align 8
  %77 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 255
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %75
  br label %82

82:                                               ; preds = %81, %53
  %83 = load i32, i32* %13, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.dos_name_t*, %struct.dos_name_t** %11, align 8
  %87 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %31
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %69, %51, %29
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @nls_uniname_to_dosname(%struct.super_block*, %struct.dos_name_t*, %struct.uni_name_t*, i32*) #1

declare dso_local i32 @fat_generate_dos_name(%struct.super_block*, %struct.chain_t*, %struct.dos_name_t*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
