; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_decode_unicode_ssetup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_decode_unicode_ssetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, i32 }
%struct.nls_table = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bleft %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"serverOS=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"serverNOS=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"serverDomain=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, %struct.cifs_ses*, %struct.nls_table*)* @decode_unicode_ssetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_unicode_ssetup(i8** %0, i32 %1, %struct.cifs_ses* %2, %struct.nls_table* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cifs_ses* %2, %struct.cifs_ses** %7, align 8
  store %struct.nls_table* %3, %struct.nls_table** %8, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32, i32* @FYI, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cifs_dbg(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %17 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %23 = call i8* @cifs_strndup_from_utf16(i8* %20, i32 %21, i32 1, %struct.nls_table* %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %26 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @FYI, align 4
  %28 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %29 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cifs_dbg(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %34, 2
  %36 = call i32 @UniStrnlen(i32* %33, i32 %35)
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  br label %100

49:                                               ; preds = %4
  %50 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %51 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kfree(i32 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %57 = call i8* @cifs_strndup_from_utf16(i8* %54, i32 %55, i32 1, %struct.nls_table* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %60 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @FYI, align 4
  %62 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %63 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cifs_dbg(i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %68, 2
  %70 = call i32 @UniStrnlen(i32* %67, i32 %69)
  %71 = mul nsw i32 %70, 2
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %49
  br label %100

83:                                               ; preds = %49
  %84 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %85 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @kfree(i32 %86)
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %91 = call i8* @cifs_strndup_from_utf16(i8* %88, i32 %89, i32 1, %struct.nls_table* %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %94 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @FYI, align 4
  %96 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %97 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cifs_dbg(i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %83, %82, %48
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i8* @cifs_strndup_from_utf16(i8*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @UniStrnlen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
