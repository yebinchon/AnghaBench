; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifsFileInfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.file_allocated_range_buffer = type { i8*, i8* }

@FIEMAP_FLAG_SYNC = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@FSCTL_QUERY_ALLOCATED_RANGES = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.fiemap_extent_info*, i64, i64)* @smb3_fiemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb3_fiemap(%struct.cifs_tcon* %0, %struct.cifsFileInfo* %1, %struct.fiemap_extent_info* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.cifsFileInfo*, align 8
  %9 = alloca %struct.fiemap_extent_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.file_allocated_range_buffer, align 8
  %14 = alloca %struct.file_allocated_range_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %7, align 8
  store %struct.cifsFileInfo* %1, %struct.cifsFileInfo** %8, align 8
  store %struct.fiemap_extent_info* %2, %struct.fiemap_extent_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %9, align 8
  %23 = load i32, i32* @FIEMAP_FLAG_SYNC, align 4
  %24 = call i64 @fiemap_check_flags(%struct.fiemap_extent_info* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EBADR, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %168

29:                                               ; preds = %5
  %30 = call i32 (...) @get_xid()
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %137, %29
  %32 = load i64, i64* %10, align 8
  %33 = call i8* @cpu_to_le64(i64 %32)
  %34 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %13, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i8* @cpu_to_le64(i64 %35)
  %37 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %13, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %40 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %41 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %45 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FSCTL_QUERY_ALLOCATED_RANGES, align 4
  %49 = bitcast %struct.file_allocated_range_buffer* %13 to i8*
  %50 = bitcast %struct.file_allocated_range_buffer** %14 to i8**
  %51 = call i32 @SMB2_ioctl(i32 %38, %struct.cifs_tcon* %39, i32 %43, i32 %47, i32 %48, i32 1, i8* %49, i32 16, i32 16384, i8** %50, i32* %15)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @E2BIG, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %31
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %58

57:                                               ; preds = %31
  store i32 1, i32* %20, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %162

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 16
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %18, align 4
  br label %162

69:                                               ; preds = %62
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = urem i64 %71, 16
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %18, align 4
  br label %162

77:                                               ; preds = %69
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 16
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %131, %77
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %134

86:                                               ; preds = %82
  store i32 0, i32* %19, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %96 = load i32, i32* %19, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %94, %91, %86
  %99 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %9, align 8
  %100 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %14, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %100, i64 %102
  %104 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @le64_to_cpu(i8* %105)
  %107 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %14, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %107, i64 %109
  %111 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @le64_to_cpu(i8* %112)
  %114 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %14, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %114, i64 %116
  %118 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @le64_to_cpu(i8* %119)
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %99, i64 %106, i64 %113, i64 %120, i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %98
  br label %162

126:                                              ; preds = %98
  %127 = load i32, i32* %18, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %18, align 4
  br label %162

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %82

134:                                              ; preds = %82
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %134
  %138 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %14, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %138, i64 %141
  %143 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @le64_to_cpu(i8* %144)
  %146 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %14, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %146, i64 %149
  %151 = getelementptr inbounds %struct.file_allocated_range_buffer, %struct.file_allocated_range_buffer* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @le64_to_cpu(i8* %152)
  %154 = add nsw i64 %145, %153
  store i64 %154, i64* %21, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* %10, align 8
  %158 = sub nsw i64 %156, %157
  %159 = sub nsw i64 %155, %158
  store i64 %159, i64* %11, align 8
  %160 = load i64, i64* %21, align 8
  store i64 %160, i64* %10, align 8
  br label %31

161:                                              ; preds = %134
  br label %162

162:                                              ; preds = %161, %129, %125, %74, %66, %61
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @free_xid(i32 %163)
  %165 = load %struct.file_allocated_range_buffer*, %struct.file_allocated_range_buffer** %14, align 8
  %166 = call i32 @kfree(%struct.file_allocated_range_buffer* %165)
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %162, %26
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i64 @fiemap_check_flags(%struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i8*, i32, i32, i8**, i32*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i64, i64, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @kfree(%struct.file_allocated_range_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
