; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBMkDir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBMkDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.smb_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"In CIFSSMBMkDir\0A\00", align 1
@SMB_COM_CREATE_DIRECTORY = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error in Mkdir = %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBMkDir(i32 %0, %struct.inode* %1, i32 %2, %struct.cifs_tcon* %3, i8* %4, %struct.cifs_sb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cifs_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.cifs_sb_info* %5, %struct.cifs_sb_info** %13, align 8
  store i32 0, i32* %14, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  store i32* null, i32** %16, align 8
  %20 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %21 = call i32 @cifs_remap(%struct.cifs_sb_info* %20)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @FYI, align 4
  %23 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %103, %6
  %25 = load i32, i32* @SMB_COM_CREATE_DIRECTORY, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %27 = bitcast %struct.TYPE_10__** %15 to i8**
  %28 = bitcast i32** %16 to i8**
  %29 = call i32 @smb_init(i32 %25, i32 0, %struct.cifs_tcon* %26, i8** %27, i8** %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %106

34:                                               ; preds = %24
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* @PATH_MAX, align 4
  %49 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %50 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @cifsConvertToUTF16(i32* %46, i8* %47, i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %18, align 4
  br label %64

58:                                               ; preds = %34
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @copy_path_name(i64 %61, i8* %62)
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %58, %42
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 4, i32* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @inc_rfc1001_len(%struct.TYPE_10__* %67, i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @cpu_to_le16(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %78 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %81 = bitcast %struct.TYPE_10__* %80 to %struct.smb_hdr*
  %82 = load i32*, i32** %16, align 8
  %83 = bitcast i32* %82 to %struct.smb_hdr*
  %84 = call i32 @SendReceive(i32 %76, i32 %79, %struct.smb_hdr* %81, %struct.smb_hdr* %83, i32* %17, i32 0)
  store i32 %84, i32* %14, align 4
  %85 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %86 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 @cifs_stats_inc(i32* %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %64
  %93 = load i32, i32* @FYI, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %64
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %98 = call i32 @cifs_buf_release(%struct.TYPE_10__* %97)
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %24

104:                                              ; preds = %96
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %32
  %107 = load i32, i32* %7, align 4
  ret i32 %107
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
