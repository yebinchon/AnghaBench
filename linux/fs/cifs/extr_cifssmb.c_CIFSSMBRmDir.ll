; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBRmDir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBRmDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.smb_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"In CIFSSMBRmDir\0A\00", align 1
@SMB_COM_DELETE_DIRECTORY = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error in RMDir = %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBRmDir(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.cifs_sb_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.cifs_sb_info* %3, %struct.cifs_sb_info** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %17 = call i32 @cifs_remap(%struct.cifs_sb_info* %16)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @FYI, align 4
  %19 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %99, %4
  %21 = load i32, i32* @SMB_COM_DELETE_DIRECTORY, align 4
  %22 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %23 = bitcast %struct.TYPE_10__** %10 to i8**
  %24 = bitcast i32** %11 to i8**
  %25 = call i32 @smb_init(i32 %21, i32 0, %struct.cifs_tcon* %22, i8** %23, i8** %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %102

30:                                               ; preds = %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* @PATH_MAX, align 4
  %45 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %46 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @cifsConvertToUTF16(i32* %42, i8* %43, i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %14, align 4
  br label %60

54:                                               ; preds = %30
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @copy_path_name(i64 %57, i8* %58)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %54, %38
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 4, i32* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @inc_rfc1001_len(%struct.TYPE_10__* %63, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @cpu_to_le16(i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %74 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = bitcast %struct.TYPE_10__* %76 to %struct.smb_hdr*
  %78 = load i32*, i32** %11, align 8
  %79 = bitcast i32* %78 to %struct.smb_hdr*
  %80 = call i32 @SendReceive(i32 %72, i32 %75, %struct.smb_hdr* %77, %struct.smb_hdr* %79, i32* %13, i32 0)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %82 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = call i32 @cifs_stats_inc(i32* %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %60
  %89 = load i32, i32* @FYI, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %60
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = call i32 @cifs_buf_release(%struct.TYPE_10__* %93)
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %20

100:                                              ; preds = %92
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %28
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i32 @cifsConvertToUTF16(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @copy_path_name(i64, i8*) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
