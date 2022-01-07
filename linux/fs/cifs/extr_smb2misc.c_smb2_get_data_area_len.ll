; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_get_data_area_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_get_data_area_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb2_sync_hdr = type { i64, i32 }
%struct.smb2_err_rsp = type { i64 }
%struct.smb2_negotiate_rsp = type { i32, i32 }
%struct.smb2_sess_setup_rsp = type { i32, i32 }
%struct.smb2_create_rsp = type { i32, i32 }
%struct.smb2_query_info_rsp = type { i32, i32 }
%struct.smb2_read_rsp = type { i32, i32 }
%struct.smb2_query_directory_rsp = type { i32, i32 }
%struct.smb2_ioctl_rsp = type { i32, i32 }

@STATUS_MORE_PROCESSING_REQUIRED = common dso_local global i64 0, align 8
@SMB2_ERROR_STRUCTURE_SIZE2 = common dso_local global i64 0, align 8
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no length check for command\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"offset %d too large, data area ignored\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"negative offset %d to data invalid ignore data area\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"negative data length %d invalid, data area ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"data area larger than 128K: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @smb2_get_data_area_len(i32* %0, i32* %1, %struct.smb2_sync_hdr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.smb2_sync_hdr*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.smb2_sync_hdr* %2, %struct.smb2_sync_hdr** %7, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %11 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STATUS_MORE_PROCESSING_REQUIRED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %22 = bitcast %struct.smb2_sync_hdr* %21 to %struct.smb2_err_rsp*
  %23 = getelementptr inbounds %struct.smb2_err_rsp, %struct.smb2_err_rsp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMB2_ERROR_STRUCTURE_SIZE2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %187

28:                                               ; preds = %20, %14, %3
  %29 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %123 [
    i32 132, label %32
    i32 128, label %45
    i32 134, label %58
    i32 130, label %71
    i32 129, label %84
    i32 131, label %96
    i32 133, label %109
    i32 135, label %122
  ]

32:                                               ; preds = %28
  %33 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %34 = bitcast %struct.smb2_sync_hdr* %33 to %struct.smb2_negotiate_rsp*
  %35 = getelementptr inbounds %struct.smb2_negotiate_rsp, %struct.smb2_negotiate_rsp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %40 = bitcast %struct.smb2_sync_hdr* %39 to %struct.smb2_negotiate_rsp*
  %41 = getelementptr inbounds %struct.smb2_negotiate_rsp, %struct.smb2_negotiate_rsp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %126

45:                                               ; preds = %28
  %46 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %47 = bitcast %struct.smb2_sync_hdr* %46 to %struct.smb2_sess_setup_rsp*
  %48 = getelementptr inbounds %struct.smb2_sess_setup_rsp, %struct.smb2_sess_setup_rsp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %53 = bitcast %struct.smb2_sync_hdr* %52 to %struct.smb2_sess_setup_rsp*
  %54 = getelementptr inbounds %struct.smb2_sess_setup_rsp, %struct.smb2_sess_setup_rsp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %126

58:                                               ; preds = %28
  %59 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %60 = bitcast %struct.smb2_sync_hdr* %59 to %struct.smb2_create_rsp*
  %61 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %66 = bitcast %struct.smb2_sync_hdr* %65 to %struct.smb2_create_rsp*
  %67 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %126

71:                                               ; preds = %28
  %72 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %73 = bitcast %struct.smb2_sync_hdr* %72 to %struct.smb2_query_info_rsp*
  %74 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %79 = bitcast %struct.smb2_sync_hdr* %78 to %struct.smb2_query_info_rsp*
  %80 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  br label %126

84:                                               ; preds = %28
  %85 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %86 = bitcast %struct.smb2_sync_hdr* %85 to %struct.smb2_read_rsp*
  %87 = getelementptr inbounds %struct.smb2_read_rsp, %struct.smb2_read_rsp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %91 = bitcast %struct.smb2_sync_hdr* %90 to %struct.smb2_read_rsp*
  %92 = getelementptr inbounds %struct.smb2_read_rsp, %struct.smb2_read_rsp* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  br label %126

96:                                               ; preds = %28
  %97 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %98 = bitcast %struct.smb2_sync_hdr* %97 to %struct.smb2_query_directory_rsp*
  %99 = getelementptr inbounds %struct.smb2_query_directory_rsp, %struct.smb2_query_directory_rsp* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %104 = bitcast %struct.smb2_sync_hdr* %103 to %struct.smb2_query_directory_rsp*
  %105 = getelementptr inbounds %struct.smb2_query_directory_rsp, %struct.smb2_query_directory_rsp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le32_to_cpu(i32 %106)
  %108 = load i32*, i32** %6, align 8
  store i32 %107, i32* %108, align 4
  br label %126

109:                                              ; preds = %28
  %110 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %111 = bitcast %struct.smb2_sync_hdr* %110 to %struct.smb2_ioctl_rsp*
  %112 = getelementptr inbounds %struct.smb2_ioctl_rsp, %struct.smb2_ioctl_rsp* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  %115 = load i32*, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  %116 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %117 = bitcast %struct.smb2_sync_hdr* %116 to %struct.smb2_ioctl_rsp*
  %118 = getelementptr inbounds %struct.smb2_ioctl_rsp, %struct.smb2_ioctl_rsp* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le32_to_cpu(i32 %119)
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %126

122:                                              ; preds = %28
  br label %123

123:                                              ; preds = %28, %122
  %124 = load i32, i32* @VFS, align 4
  %125 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %109, %96, %84, %71, %58, %45, %32
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 4096
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, i32* @VFS, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i32*, i32** %6, align 8
  store i32 0, i32* %135, align 4
  %136 = load i32*, i32** %5, align 8
  store i32 0, i32* %136, align 4
  br label %171

137:                                              ; preds = %126
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* @VFS, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %142, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %5, align 8
  store i32 0, i32* %146, align 4
  %147 = load i32*, i32** %6, align 8
  store i32 0, i32* %147, align 4
  br label %170

148:                                              ; preds = %137
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32, i32* @VFS, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %153, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = load i32*, i32** %6, align 8
  store i32 0, i32* %157, align 4
  br label %169

158:                                              ; preds = %148
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %160, 131072
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i32, i32* @VFS, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load i32*, i32** %6, align 8
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %162, %158
  br label %169

169:                                              ; preds = %168, %152
  br label %170

170:                                              ; preds = %169, %141
  br label %171

171:                                              ; preds = %170, %130
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %171
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %181 = bitcast %struct.smb2_sync_hdr* %180 to i8*
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  store i8* %185, i8** %4, align 8
  br label %187

186:                                              ; preds = %175, %171
  store i8* null, i8** %4, align 8
  br label %187

187:                                              ; preds = %186, %179, %27
  %188 = load i8*, i8** %4, align 8
  ret i8* %188
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
