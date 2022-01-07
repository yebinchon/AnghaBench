; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_cifs_ssetup_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_cifs_ssetup_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@u32 = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i64 0, align 8
@MAX_CIFS_HDR_SIZE = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i32 0, align 4
@CAP_LARGE_FILES = common dso_local global i32 0, align 4
@CAP_NT_SMBS = common dso_local global i32 0, align 4
@CAP_LEVEL_II_OPLOCKS = common dso_local global i32 0, align 4
@CAP_LARGE_WRITE_X = common dso_local global i32 0, align 4
@CAP_LARGE_READ_X = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@CAP_UNICODE = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@CAP_STATUS32 = common dso_local global i32 0, align 4
@SMBFLG2_ERR_STATUS = common dso_local global i32 0, align 4
@CAP_DFS = common dso_local global i32 0, align 4
@SMBFLG2_DFS = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.TYPE_9__*)* @cifs_ssetup_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_ssetup_hdr(%struct.cifs_ses* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.cifs_ses*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store %struct.cifs_ses* %0, %struct.cifs_ses** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 255, i32* %8, align 8
  %9 = load i32, i32* @u32, align 4
  %10 = load i64, i64* @CIFSMaxBufSize, align 8
  %11 = load i64, i64* @MAX_CIFS_HDR_SIZE, align 8
  %12 = add nsw i64 %10, %11
  %13 = sub nsw i64 %12, 4
  %14 = load i32, i32* @USHRT_MAX, align 4
  %15 = call i32 @min_t(i32 %9, i64 %13, i32 %14)
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  store i8* %16, i8** %19, align 8
  %20 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %21 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i8* %25, i8** %28, align 8
  %29 = call i8* @cpu_to_le16(i32 1)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @CAP_LARGE_FILES, align 4
  %34 = load i32, i32* @CAP_NT_SMBS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CAP_LEVEL_II_OPLOCKS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CAP_LARGE_WRITE_X, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CAP_LARGE_READ_X, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %43 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %2
  %57 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %58 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CAP_UNICODE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @CAP_UNICODE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %63, %56
  %75 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %76 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAP_STATUS32, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, i32* @SMBFLG2_ERR_STATUS, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @CAP_STATUS32, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %81, %74
  %93 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %94 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CAP_DFS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load i32, i32* @SMBFLG2_DFS, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* @CAP_DFS, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %99, %92
  %111 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %112 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CAP_UNIX, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @CAP_UNIX, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %110
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
