; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_strtoUTF16.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_strtoUTF16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i32*)*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"strtoUTF16: char2uni of 0x%x returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_strtoUTF16(i32* %0, i8* %1, i32 %2, %struct.nls_table* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nls_table* %3, %struct.nls_table** %8, align 8
  %12 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %13 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strcmp(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @utf8s_to_utf16s(i8* %18, i32 %19, i32 %20, i32* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %72

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %71

39:                                               ; preds = %37
  %40 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %41 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %40, i32 0, i32 0
  %42 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %42(i8* %43, i32 %44, i32* %11)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* @VFS, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @cifs_dbg(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8 signext %51, i32 %52)
  store i32 63, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %39
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @put_unaligned_le16(i32 %55, i32* %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %29

71:                                               ; preds = %37
  br label %72

72:                                               ; preds = %71, %26
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @put_unaligned_le16(i32 0, i32* %76)
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i8 signext, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
