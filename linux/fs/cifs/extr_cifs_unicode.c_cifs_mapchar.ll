; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_mapchar.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_mapchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i32, i8*, i32)*, i32 }

@SFM_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@SFU_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.nls_table*, i32)* @cifs_mapchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_mapchar(i8* %0, i32* %1, %struct.nls_table* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.nls_table* %2, %struct.nls_table** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SFM_MAP_UNI_RSVD, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @convert_sfm_char(i32 %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %17, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SFU_MAP_UNI_RSVD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @convert_sfu_char(i32 %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %69

35:                                               ; preds = %28, %24
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %38 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %37, i32 0, i32 0
  %39 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %43 = call i32 %39(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %69

49:                                               ; preds = %46
  %50 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %51 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %66

56:                                               ; preds = %49
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @utf16s_to_utf8s(i32* %57, i32 3, i32 %58, i8* %59, i32 6)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %69

66:                                               ; preds = %63, %55
  %67 = load i8*, i8** %6, align 8
  store i8 63, i8* %67, align 1
  store i32 1, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %64, %47, %33, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @convert_sfm_char(i32, i8*) #1

declare dso_local i64 @convert_sfu_char(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @utf16s_to_utf8s(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
