; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_decode_ascii_ssetup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_decode_ascii_ssetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i64*, i64* }
%struct.nls_table = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"decode sessetup ascii. bleft %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OS/2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"OS/2 server\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ascii: bytes left %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, %struct.cifs_ses*, %struct.nls_table*)* @decode_ascii_ssetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ascii_ssetup(i8** %0, i32 %1, %struct.cifs_ses* %2, %struct.nls_table* %3) #0 {
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
  %15 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i8*, i8** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @strnlen(i8* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %128

23:                                               ; preds = %4
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = call i32 @kfree(i64* %26)
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to i64*
  %33 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %34 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %33, i32 0, i32 1
  store i64* %32, i64** %34, align 8
  %35 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %36 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %23
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %41 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @memcpy(i64* %42, i8* %43, i32 %44)
  %46 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %47 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %53 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = call i64 @strncmp(i64* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32, i32* @FYI, align 4
  %59 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %39
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i8*, i8** %10, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @strnlen(i8* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  br label %128

78:                                               ; preds = %61
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = call i32 @kfree(i64* %81)
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @kmalloc(i32 %84, i32 %85)
  %87 = bitcast i8* %86 to i64*
  %88 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %89 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %88, i32 0, i32 0
  store i64* %87, i64** %89, align 8
  %90 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %91 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %78
  %95 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %96 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @memcpy(i64* %97, i8* %98, i32 %99)
  %101 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %102 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %94, %78
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i8*, i8** %10, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %10, align 8
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @strnlen(i8* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  br label %128

124:                                              ; preds = %107
  %125 = load i32, i32* @FYI, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %124, %123, %77, %22
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i64 @strncmp(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
