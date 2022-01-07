; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBDelFile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBDelFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_10__ = type { i32, i8*, i8*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.smb_hdr = type { i32 }

@SMB_COM_DELETE = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error in RMFile = %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBDelFile(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.cifs_sb_info* %3) #0 {
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
  br label %18

18:                                               ; preds = %105, %4
  %19 = load i32, i32* @SMB_COM_DELETE, align 4
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %21 = bitcast %struct.TYPE_10__** %10 to i8**
  %22 = bitcast i32** %11 to i8**
  %23 = call i32 @smb_init(i32 %19, i32 1, %struct.cifs_tcon* %20, i8** %21, i8** %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %108

28:                                               ; preds = %18
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @PATH_MAX, align 4
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %44 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @cifsConvertToUTF16(i32* %40, i8* %41, i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %14, align 4
  br label %58

52:                                               ; preds = %28
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @copy_path_name(i64 %55, i8* %56)
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %52, %36
  %59 = load i32, i32* @ATTR_READONLY, align 4
  %60 = load i32, i32* @ATTR_HIDDEN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ATTR_SYSTEM, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @inc_rfc1001_len(%struct.TYPE_10__* %69, i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %80 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = bitcast %struct.TYPE_10__* %82 to %struct.smb_hdr*
  %84 = load i32*, i32** %11, align 8
  %85 = bitcast i32* %84 to %struct.smb_hdr*
  %86 = call i32 @SendReceive(i32 %78, i32 %81, %struct.smb_hdr* %83, %struct.smb_hdr* %85, i32* %13, i32 0)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %88 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i32 @cifs_stats_inc(i32* %90)
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %58
  %95 = load i32, i32* @FYI, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @cifs_dbg(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %58
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = call i32 @cifs_buf_release(%struct.TYPE_10__* %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %18

106:                                              ; preds = %98
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %26
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i32 @cifsConvertToUTF16(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @copy_path_name(i64, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
