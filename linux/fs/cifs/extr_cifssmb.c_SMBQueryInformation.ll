; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_SMBQueryInformation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_SMBQueryInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i64, i8*, i8* }
%struct.nls_table = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.timespec64 = type { i32, i64 }
%struct.smb_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"In SMBQPath path %s\0A\00", align 1
@SMB_COM_QUERY_INFORMATION = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Send error in QueryInfo = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMBQueryInformation(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.TYPE_12__* %3, %struct.nls_table* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.timespec64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store %struct.nls_table* %4, %struct.nls_table** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @FYI, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %148, %6
  %25 = load i32, i32* @SMB_COM_QUERY_INFORMATION, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %27 = bitcast %struct.TYPE_11__** %14 to i8**
  %28 = bitcast %struct.TYPE_10__** %15 to i8**
  %29 = call i32 @smb_init(i32 %25, i32 0, %struct.cifs_tcon* %26, i8** %27, i8** %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %7, align 4
  br label %151

34:                                               ; preds = %24
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @PATH_MAX, align 4
  %49 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @cifsConvertToUTF16(i32* %46, i8* %47, i32 %48, %struct.nls_table* %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %18, align 4
  br label %62

56:                                               ; preds = %34
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @copy_path_name(i64 %59, i8* %60)
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %56, %42
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = load i32, i32* %18, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %18, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @inc_rfc1001_len(%struct.TYPE_11__* %67, i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @cpu_to_le16(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %76 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %79 = bitcast %struct.TYPE_11__* %78 to %struct.smb_hdr*
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %81 = bitcast %struct.TYPE_10__* %80 to %struct.smb_hdr*
  %82 = call i32 @SendReceive(i32 %74, i32 %77, %struct.smb_hdr* %79, %struct.smb_hdr* %81, i32* %17, i32 0)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %62
  %86 = load i32, i32* @FYI, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %141

89:                                               ; preds = %62
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %137

92:                                               ; preds = %89
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  store i32 %96, i32* %20, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = call i32 @memset(%struct.TYPE_12__* %97, i32 0, i32 48)
  %99 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %19, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* %20, align 4
  %101 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %19, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = bitcast %struct.timespec64* %19 to { i32, i64 }*
  %103 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %102, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @cifs_UnixTimeToNT(i32 %104, i64 %106)
  %108 = call i8* @cpu_to_le64(i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  %122 = call i8* @cpu_to_le64(i32 %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = call i32 @cpu_to_le32(i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %140

137:                                              ; preds = %89
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %137, %92
  br label %141

141:                                              ; preds = %140, %85
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %143 = call i32 @cifs_buf_release(%struct.TYPE_11__* %142)
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %24

149:                                              ; preds = %141
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %149, %32
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i32 @cifsConvertToUTF16(i32*, i8*, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @copy_path_name(i64, i8*) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cifs_UnixTimeToNT(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
