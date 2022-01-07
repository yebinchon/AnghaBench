; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_ascii_ssetup_strings.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_ascii_ssetup_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32*, i32* }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { i8* }

@CIFS_MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@CIFS_MAX_DOMAINNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Linux version \00", align 1
@CIFS_NETWORK_OPSYS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.cifs_ses*, %struct.nls_table*)* @ascii_ssetup_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ascii_ssetup_strings(i8** %0, %struct.cifs_ses* %1, %struct.nls_table* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.nls_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store %struct.nls_table* %2, %struct.nls_table** %6, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %12 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %18 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @CIFS_MAX_USERNAME_LEN, align 4
  %21 = call i32 @strscpy(i8* %16, i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @CIFS_MAX_USERNAME_LEN, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i8*, i8** %7, align 8
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %40 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %46 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @CIFS_MAX_DOMAINNAME_LEN, align 4
  %49 = call i32 @strscpy(i8* %44, i32* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON_ONCE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @CIFS_MAX_DOMAINNAME_LEN, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %43
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %58, %35
  %64 = load i8*, i8** %7, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %69 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call %struct.TYPE_2__* (...) @init_utsname()
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcpy(i8* %72, i8* %75)
  %77 = call %struct.TYPE_2__* (...) @init_utsname()
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = add nsw i64 %80, 1
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** @CIFS_NETWORK_OPSYS, align 8
  %86 = call i32 @strcpy(i8* %84, i8* %85)
  %87 = load i8*, i8** @CIFS_NETWORK_OPSYS, align 8
  %88 = call i64 @strlen(i8* %87)
  %89 = add nsw i64 %88, 1
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i8**, i8*** %4, align 8
  store i8* %92, i8** %93, align 8
  ret void
}

declare dso_local i32 @strscpy(i8*, i32*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
