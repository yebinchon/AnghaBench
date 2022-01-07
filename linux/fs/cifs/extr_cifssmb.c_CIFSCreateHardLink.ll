; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSCreateHardLink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSCreateHardLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i8*, %struct.TYPE_7__, i64, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.smb_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"In CIFSCreateHardLink\0A\00", align 1
@SMB_COM_NT_RENAME = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@CREATE_HARD_LINK = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Send error in hard link (NT rename) = %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSCreateHardLink(i32 %0, %struct.cifs_tcon* %1, i8* %2, i8* %3, %struct.cifs_sb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cifs_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.cifs_sb_info* %4, %struct.cifs_sb_info** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %21 = call i32 @cifs_remap(%struct.cifs_sb_info* %20)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @FYI, align 4
  %23 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %168, %5
  %25 = load i32, i32* @SMB_COM_NT_RENAME, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %27 = bitcast %struct.TYPE_10__** %13 to i8**
  %28 = bitcast i32** %14 to i8**
  %29 = call i32 @smb_init(i32 %25, i32 4, %struct.cifs_tcon* %26, i8** %27, i8** %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %171

34:                                               ; preds = %24
  %35 = load i32, i32* @ATTR_READONLY, align 4
  %36 = load i32, i32* @ATTR_HIDDEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ATTR_SYSTEM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ATTR_DIRECTORY, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @CREATE_HARD_LINK, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %106

60:                                               ; preds = %34
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @PATH_MAX, align 4
  %66 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %67 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @cifsConvertToUTF16(i32* %63, i8* %64, i32 %65, i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = mul nsw i32 %73, 2
  store i32 %74, i32* %16, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 4, i32* %80, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* @PATH_MAX, align 4
  %97 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %98 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @cifsConvertToUTF16(i32* %94, i8* %95, i32 %96, i32 %99, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %17, align 4
  br label %129

106:                                              ; preds = %34
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @copy_path_name(i32* %109, i8* %110)
  store i32 %111, i32* %16, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 4, i32* %117, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @copy_path_name(i32* %124, i8* %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %129

129:                                              ; preds = %106, %60
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 1, %130
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %18, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @inc_rfc1001_len(%struct.TYPE_10__* %134, i32 %135)
  %137 = load i32, i32* %18, align 4
  %138 = call i8* @cpu_to_le16(i32 %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %143 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = bitcast %struct.TYPE_10__* %145 to %struct.smb_hdr*
  %147 = load i32*, i32** %14, align 8
  %148 = bitcast i32* %147 to %struct.smb_hdr*
  %149 = call i32 @SendReceive(i32 %141, i32 %144, %struct.smb_hdr* %146, %struct.smb_hdr* %148, i32* %15, i32 0)
  store i32 %149, i32* %12, align 4
  %150 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %151 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = call i32 @cifs_stats_inc(i32* %153)
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %129
  %158 = load i32, i32* @FYI, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %158, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %157, %129
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %163 = call i32 @cifs_buf_release(%struct.TYPE_10__* %162)
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @EAGAIN, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %24

169:                                              ; preds = %161
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %32
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cifsConvertToUTF16(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @copy_path_name(i32*, i8*) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
