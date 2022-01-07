; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.inode = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file_allocated_range_buffer = type { i8*, i8* }

@SEEK_HOLE = common dso_local global i32 0, align 4
@SEEK_DATA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_SPARSE_FILE = common dso_local global i32 0, align 4
@FSCTL_QUERY_ALLOCATED_RANGES = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.cifs_tcon*, i64, i32)* @smb3_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb3_llseek(%struct.file* %0, %struct.cifs_tcon* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifsFileInfo*, align 8
  %11 = alloca %struct.cifsFileInfo*, align 8
  %12 = alloca %struct.cifsInodeInfo*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.file_allocated_range_buffer, align 8
  %16 = alloca %struct.file_allocated_range_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %20, align 8
  store %struct.cifsFileInfo* %21, %struct.cifsFileInfo** %11, align 8
  store i32 0, i32* %14, align 4
  store %struct.file_allocated_range_buffer* null, %struct.file_allocated_range_buffer** %16, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SEEK_HOLE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SEEK_DATA, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @generic_file_llseek(%struct.file* %30, i64 %31, i32 %32)
  store i64 %33, i64* %5, align 8
  br label %187

34:                                               ; preds = %25, %4
  %35 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %36 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.inode* @d_inode(i32 %37)
  store %struct.inode* %38, %struct.inode** %13, align 8
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %39)
  store %struct.cifsInodeInfo* %40, %struct.cifsInodeInfo** %12, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.inode*, %struct.inode** %13, align 8
  %46 = call i64 @i_size_read(%struct.inode* %45)
  %47 = icmp sge i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %34
  %49 = load i64, i64* @ENXIO, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %187

51:                                               ; preds = %43
  %52 = call i32 (...) @get_xid()
  store i32 %52, i32* %18, align 4
  %53 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %54 = call %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo* %53, i32 0)
  store %struct.cifsFileInfo* %54, %struct.cifsFileInfo** %10, align 8
  %55 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %56 = icmp ne %struct.cifsFileInfo* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %13, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @filemap_write_and_wait(i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %64 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %65 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %64, i32 0, i32 0
  %66 = call i32 @smb2_flush_file(i32 %62, %struct.cifs_tcon* %63, %struct.TYPE_4__* %65)
  %67 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %68 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %67)
  br label %69

69:                                               ; preds = %57, %51
  %70 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %71 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FILE_ATTRIBUTE_SPARSE_FILE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SEEK_HOLE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %13, align 8
  %82 = call i64 @i_size_read(%struct.inode* %81)
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %80, %76
  br label %168

84:                                               ; preds = %69
  %85 = load i64, i64* %8, align 8
  %86 = call i8* @cpu_to_le64(i64 %85)
  %87 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %15, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %13, align 8
  %89 = call i64 @i_size_read(%struct.inode* %88)
  %90 = call i8* @cpu_to_le64(i64 %89)
  %91 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %15, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %94 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %95 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %99 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @FSCTL_QUERY_ALLOCATED_RANGES, align 4
  %103 = bitcast %struct.file_allocated_range_buffer* %15 to i8*
  %104 = bitcast %struct.file_allocated_range_buffer** %16 to i8**
  %105 = call i32 @SMB2_ioctl(i32 %92, %struct.cifs_tcon* %93, i32 %97, i32 %101, i32 %102, i32 1, i8* %103, i32 16, i32 16, i8** %104, i32* %17)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @E2BIG, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %84
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %110, %84
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %168

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @SEEK_HOLE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %17, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %168

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @SEEK_DATA, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* %17, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i64, i64* @ENXIO, align 8
  %132 = sub nsw i64 0, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %14, align 4
  br label %168

134:                                              ; preds = %127, %123
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp ult i64 %136, 16
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %14, align 4
  br label %168

141:                                              ; preds = %134
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @SEEK_DATA, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %16, align 8
  %147 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @le64_to_cpu(i8* %148)
  store i64 %149, i64* %8, align 8
  br label %168

150:                                              ; preds = %141
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %16, align 8
  %153 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @le64_to_cpu(i8* %154)
  %156 = icmp slt i64 %151, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %168

158:                                              ; preds = %150
  %159 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %16, align 8
  %160 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @le64_to_cpu(i8* %161)
  %163 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %16, align 8
  %164 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @le64_to_cpu(i8* %165)
  %167 = add nsw i64 %162, %166
  store i64 %167, i64* %8, align 8
  br label %168

168:                                              ; preds = %158, %157, %145, %138, %130, %122, %114, %83
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @free_xid(i32 %169)
  %171 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %16, align 8
  %172 = call i32 @kfree(%struct.file_allocated_range_buffer* %171)
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %168
  %176 = load %struct.file*, %struct.file** %6, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load %struct.inode*, %struct.inode** %13, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 0
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @vfs_setpos(%struct.file* %176, i64 %177, i32 %182)
  store i64 %183, i64* %5, align 8
  br label %187

184:                                              ; preds = %168
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %5, align 8
  br label %187

187:                                              ; preds = %184, %175, %48, %29
  %188 = load i64, i64* %5, align 8
  ret i64 %188
}

declare dso_local i64 @generic_file_llseek(%struct.file*, i64, i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo*, i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @smb2_flush_file(i32, %struct.cifs_tcon*, %struct.TYPE_4__*) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i8*, i32, i32, i8**, i32*) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @kfree(%struct.file_allocated_range_buffer*) #1

declare dso_local i64 @vfs_setpos(%struct.file*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
