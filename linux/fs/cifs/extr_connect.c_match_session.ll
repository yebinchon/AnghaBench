; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32*, i32*, i32 }
%struct.smb_vol = type { i64, i8*, i8*, i32, i32 }

@Unspecified = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CIFS_MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@CIFS_MAX_PASSWORD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.smb_vol*)* @match_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_session(%struct.cifs_ses* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %6 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %7 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @Unspecified, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %13 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %16 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %104

21:                                               ; preds = %11, %2
  %22 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %23 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %36 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %27 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %30 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @uid_eq(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %104

35:                                               ; preds = %25
  br label %103

36:                                               ; preds = %21
  %37 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %38 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %43 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %104

47:                                               ; preds = %41
  br label %103

48:                                               ; preds = %36
  %49 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %50 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %53 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %58 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  br label %61

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %60 ]
  %63 = load i32, i32* @CIFS_MAX_USERNAME_LEN, align 4
  %64 = call i32 @strncmp(i32* %51, i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %104

67:                                               ; preds = %61
  %68 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %69 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %74 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %85 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %88 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %93 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  br label %96

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i8* [ %94, %91 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %95 ]
  %98 = load i32, i32* @CIFS_MAX_PASSWORD_LEN, align 4
  %99 = call i32 @strncmp(i32* %86, i8* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %104

102:                                              ; preds = %96, %78, %72, %67
  br label %103

103:                                              ; preds = %102, %47, %35
  store i32 1, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %101, %66, %46, %34, %20
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
