; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_uniname_to_cstring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_uniname_to_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.uni_name_t = type { i64* }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { %struct.nls_table* }

@MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@UTF16_HOST_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nls_uniname_to_cstring(%struct.super_block* %0, i8* %1, %struct.uni_name_t* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uni_name_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.nls_table*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.uni_name_t* %2, %struct.uni_name_t** %6, align 8
  %15 = load i32, i32* @MAX_CHARSET_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.uni_name_t*, %struct.uni_name_t** %6, align 8
  %20 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %12, align 8
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.nls_table*, %struct.nls_table** %24, align 8
  store %struct.nls_table* %25, %struct.nls_table** %13, align 8
  %26 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %27 = icmp ne %struct.nls_table* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %3
  %29 = load i64*, i64** %12, align 8
  %30 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %31 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %34 = call i32 @utf16s_to_utf8s(i64* %29, i32 %30, i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  store i32 1, i32* %14, align 4
  br label %84

39:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %77, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %40
  %46 = load i64*, i64** %12, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %82

50:                                               ; preds = %45
  %51 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @convert_uni_to_ch(%struct.nls_table* %51, i8* %18, i64 %53, i32* null)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %18, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  store i8 %66, i8* %67, align 1
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %58

72:                                               ; preds = %58
  br label %77

73:                                               ; preds = %50
  %74 = load i8, i8* %18, align 16
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  store i8 %74, i8* %75, align 1
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i64*, i64** %12, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %12, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %40

82:                                               ; preds = %49, %40
  %83 = load i8*, i8** %5, align 8
  store i8 0, i8* %83, align 1
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %82, %28
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %14, align 4
  switch i32 %86, label %88 [
    i32 0, label %87
    i32 1, label %87
  ]

87:                                               ; preds = %84, %84
  ret void

88:                                               ; preds = %84
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #2

declare dso_local i32 @utf16s_to_utf8s(i64*, i32, i32, i8*, i32) #2

declare dso_local i32 @convert_uni_to_ch(%struct.nls_table*, i8*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
