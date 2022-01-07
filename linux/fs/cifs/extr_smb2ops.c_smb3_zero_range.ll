; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_zero_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_zero_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cifs_tcon = type { i32, %struct.cifs_ses* }
%struct.cifs_ses = type { i32 }
%struct.inode = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.file_zero_data_information = type { i8*, i8* }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Offset %lld len %lld\0A\00", align 1
@FSCTL_SET_ZERO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.cifs_tcon*, i64, i64, i32)* @smb3_zero_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb3_zero_range(%struct.file* %0, %struct.cifs_tcon* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifs_ses*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.cifsInodeInfo*, align 8
  %15 = alloca %struct.cifsFileInfo*, align 8
  %16 = alloca %struct.file_zero_data_information, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %21 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %20, i32 0, i32 1
  %22 = load %struct.cifs_ses*, %struct.cifs_ses** %21, align 8
  store %struct.cifs_ses* %22, %struct.cifs_ses** %12, align 8
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %24, align 8
  store %struct.cifsFileInfo* %25, %struct.cifsFileInfo** %15, align 8
  %26 = call i32 (...) @get_xid()
  store i32 %26, i32* %18, align 4
  %27 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %28 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.inode* @d_inode(i32 %29)
  store %struct.inode* %30, %struct.inode** %13, align 8
  %31 = load %struct.inode*, %struct.inode** %13, align 8
  %32 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %31)
  store %struct.cifsInodeInfo* %32, %struct.cifsInodeInfo** %14, align 8
  %33 = load i32, i32* %18, align 4
  %34 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %35 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cifs_ses*, %struct.cifs_ses** %12, align 8
  %42 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @trace_smb3_zero_enter(i32 %33, i32 %37, i32 %40, i32 %43, i64 %44, i64 %45)
  %47 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %14, align 8
  %48 = call i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %5
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i64, i64* @EOPNOTSUPP, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %58 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %62 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cifs_ses*, %struct.cifs_ses** %12, align 8
  %65 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @trace_smb3_zero_err(i32 %56, i32 %60, i32 %63, i32 %66, i64 %67, i64 %68, i64 %69)
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @free_xid(i32 %71)
  %73 = load i64, i64* %17, align 8
  store i64 %73, i64* %6, align 8
  br label %172

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74, %5
  %76 = load i32, i32* @FYI, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @cifs_dbg(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %77, i64 %78)
  %80 = load i64, i64* %9, align 8
  %81 = call i8* @cpu_to_le64(i64 %80)
  %82 = getelementptr inbounds %struct.file_zero_data_information, %struct.file_zero_data_information* %16, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i8* @cpu_to_le64(i64 %85)
  %87 = getelementptr inbounds %struct.file_zero_data_information, %struct.file_zero_data_information* %16, i32 0, i32 0
  store i8* %86, i8** %87, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %90 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %91 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %95 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @FSCTL_SET_ZERO_DATA, align 4
  %99 = bitcast %struct.file_zero_data_information* %16 to i8*
  %100 = call i64 @SMB2_ioctl(i32 %88, %struct.cifs_tcon* %89, i32 %93, i32 %97, i32 %98, i32 1, i8* %99, i32 16, i32 0, i32* null, i32* null)
  store i64 %100, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %75
  br label %134

104:                                              ; preds = %75
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load %struct.inode*, %struct.inode** %13, align 8
  %109 = call i64 @i_size_read(%struct.inode* %108)
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %110, %111
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %107
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %10, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i8* @cpu_to_le64(i64 %117)
  store i8* %118, i8** %19, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %121 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %122 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %126 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %130 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @SMB2_set_eof(i32 %119, %struct.cifs_tcon* %120, i32 %124, i32 %128, i32 %131, i8** %19)
  store i64 %132, i64* %17, align 8
  br label %133

133:                                              ; preds = %114, %107, %104
  br label %134

134:                                              ; preds = %133, %103
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @free_xid(i32 %135)
  %137 = load i64, i64* %17, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %134
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %142 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %146 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.cifs_ses*, %struct.cifs_ses** %12, align 8
  %149 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %17, align 8
  %154 = call i32 @trace_smb3_zero_err(i32 %140, i32 %144, i32 %147, i32 %150, i64 %151, i64 %152, i64 %153)
  br label %170

155:                                              ; preds = %134
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %158 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %162 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.cifs_ses*, %struct.cifs_ses** %12, align 8
  %165 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @trace_smb3_zero_done(i32 %156, i32 %160, i32 %163, i32 %166, i64 %167, i64 %168)
  br label %170

170:                                              ; preds = %155, %139
  %171 = load i64, i64* %17, align 8
  store i64 %171, i64* %6, align 8
  br label %172

172:                                              ; preds = %170, %53
  %173 = load i64, i64* %6, align 8
  ret i64 %173
}

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @trace_smb3_zero_enter(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

declare dso_local i32 @trace_smb3_zero_err(i32, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i64, i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @SMB2_set_eof(i32, %struct.cifs_tcon*, i32, i32, i32, i8**) #1

declare dso_local i32 @trace_smb3_zero_done(i32, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
