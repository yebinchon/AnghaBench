; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_decode_ntlmssp_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_decode_ntlmssp_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"challenge blob len %d too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"NTLMSSP\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"blob signature incorrect %s\0A\00", align 1
@NtLmChallenge = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Incorrect message type %d\0A\00", align 1
@CIFS_CRYPTO_KEY_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"tioffset + tilen too high %u + %u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Challenge target info alloc failure\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_ntlmssp_challenge(i8* %0, i32 %1, %struct.cifs_ses* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cifs_ses* %2, %struct.cifs_ses** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 24
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @VFS, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %126

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @memcmp(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @VFS, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %126

36:                                               ; preds = %22
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NtLmChallenge, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* @VFS, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %126

50:                                               ; preds = %36
  %51 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %52 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CIFS_CRYPTO_KEY_SIZE, align 4
  %60 = call i32 @memcpy(i32 %55, i32 %58, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %66 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i8* %64, i8** %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le32_to_cpu(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %50
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83, %50
  %90 = load i32, i32* @VFS, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %126

96:                                               ; preds = %83
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i32 @kmemdup(i8* %103, i32 %104, i32 %105)
  %107 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %108 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %111 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* @VFS, align 4
  %117 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %126

120:                                              ; preds = %99
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %123 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  br label %125

125:                                              ; preds = %120, %96
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %115, %89, %42, %28, %16
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
