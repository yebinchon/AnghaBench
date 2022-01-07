; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBRename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBRename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i8*, %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.smb_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"In CIFSSMBRename\0A\00", align 1
@SMB_COM_RENAME = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Send error in rename = %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBRename(i32 %0, %struct.cifs_tcon* %1, i8* %2, i8* %3, %struct.cifs_sb_info* %4) #0 {
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
  %23 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %162, %5
  %25 = load i32, i32* @SMB_COM_RENAME, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %27 = bitcast %struct.TYPE_10__** %13 to i8**
  %28 = bitcast i32** %14 to i8**
  %29 = call i32 @smb_init(i32 %25, i32 1, %struct.cifs_tcon* %26, i8** %27, i8** %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %165

34:                                               ; preds = %24
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load i32, i32* @ATTR_READONLY, align 4
  %38 = load i32, i32* @ATTR_HIDDEN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ATTR_SYSTEM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ATTR_DIRECTORY, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %34
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* @PATH_MAX, align 4
  %60 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %61 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @cifsConvertToUTF16(i32* %57, i8* %58, i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = mul nsw i32 %67, 2
  store i32 %68, i32* %16, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 4, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* @PATH_MAX, align 4
  %91 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %92 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @cifsConvertToUTF16(i32* %88, i8* %89, i32 %90, i32 %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = mul nsw i32 %98, 2
  store i32 %99, i32* %17, align 4
  br label %123

100:                                              ; preds = %34
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @copy_path_name(i32* %103, i8* %104)
  store i32 %105, i32* %16, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @copy_path_name(i32* %112, i8* %113)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 4, i32* %120, align 4
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %100, %54
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 1, %124
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %18, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @inc_rfc1001_len(%struct.TYPE_10__* %128, i32 %129)
  %131 = load i32, i32* %18, align 4
  %132 = call i8* @cpu_to_le16(i32 %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %137 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %140 = bitcast %struct.TYPE_10__* %139 to %struct.smb_hdr*
  %141 = load i32*, i32** %14, align 8
  %142 = bitcast i32* %141 to %struct.smb_hdr*
  %143 = call i32 @SendReceive(i32 %135, i32 %138, %struct.smb_hdr* %140, %struct.smb_hdr* %142, i32* %15, i32 0)
  store i32 %143, i32* %12, align 4
  %144 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %145 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = call i32 @cifs_stats_inc(i32* %147)
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %123
  %152 = load i32, i32* @FYI, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %151, %123
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %157 = call i32 @cifs_buf_release(%struct.TYPE_10__* %156)
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* @EAGAIN, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %24

163:                                              ; preds = %155
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %163, %32
  %166 = load i32, i32* %6, align 4
  ret i32 %166
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
