; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_receive_encrypted_standard.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_receive_encrypted_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i8*, i32, i32, i8*, i32 }
%struct.mid_q_entry = type { i32, i32, i32 (%struct.TCP_Server_Info.0*, %struct.mid_q_entry*)* }
%struct.TCP_Server_Info.0 = type opaque
%struct.smb2_sync_hdr = type { i64 }

@MAX_CIFS_SMALL_BUFFER_SIZE = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mid not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mid found\0A\00", align 1
@MAX_COMPOUND = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"too many PDUs in compound\0A\00", align 1
@CIFS_LARGE_BUFFER = common dso_local global i32 0, align 4
@CIFS_SMALL_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.mid_q_entry**, i8**, i32*)* @receive_encrypted_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_encrypted_standard(%struct.TCP_Server_Info* %0, %struct.mid_q_entry** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca %struct.mid_q_entry**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.smb2_sync_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mid_q_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %6, align 8
  store %struct.mid_q_entry** %1, %struct.mid_q_entry*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %20 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %23 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  store i8* null, i8** %18, align 8
  %25 = load i32*, i32** %9, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @MAX_CIFS_SMALL_BUFFER_SIZE, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %4
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %37 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i8* %34, i8* %35, i32 %38)
  %40 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %41 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %29, %4
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %47 = call i32 @HEADER_SIZE(%struct.TCP_Server_Info* %46)
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %53 = call i32 @HEADER_SIZE(%struct.TCP_Server_Info* %52)
  %54 = sub i32 %51, %53
  %55 = add i32 %54, 1
  %56 = call i32 @cifs_read_from_socket(%struct.TCP_Server_Info* %44, i8* %50, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %222

61:                                               ; preds = %43
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %64 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = sub i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %15, align 4
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @decrypt_raw_data(%struct.TCP_Server_Info* %71, i8* %72, i32 %73, i32* null, i32 0, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %222

79:                                               ; preds = %61
  %80 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %81 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %203, %79
  %84 = load i8*, i8** %12, align 8
  %85 = bitcast i8* %84 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %85, %struct.smb2_sync_hdr** %13, align 8
  %86 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %13, align 8
  %87 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call i64 (...) @cifs_buf_get()
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %18, align 8
  br label %99

96:                                               ; preds = %90
  %97 = call i64 (...) @cifs_small_buf_get()
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %18, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i8*, i8** %18, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %13, align 8
  %103 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @le32_to_cpu(i64 %104)
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %101, i64 %106
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %13, align 8
  %110 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @le32_to_cpu(i64 %111)
  %113 = sub i32 %108, %112
  %114 = call i32 @memcpy(i8* %100, i8* %107, i32 %113)
  br label %115

115:                                              ; preds = %99, %83
  %116 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = call %struct.mid_q_entry* @smb2_find_mid(%struct.TCP_Server_Info* %116, i8* %117)
  store %struct.mid_q_entry* %118, %struct.mid_q_entry** %16, align 8
  %119 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %120 = icmp eq %struct.mid_q_entry* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @FYI, align 4
  %123 = call i32 @cifs_dbg(i32 %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %134

124:                                              ; preds = %115
  %125 = load i32, i32* @FYI, align 4
  %126 = call i32 @cifs_dbg(i32 %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %128 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %130 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %133 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %124, %121
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MAX_COMPOUND, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @VFS, align 4
  %141 = call i32 @cifs_server_dbg(i32 %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %222

142:                                              ; preds = %134
  %143 = load i8*, i8** %12, align 8
  %144 = load i8**, i8*** %8, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  store i8* %143, i8** %148, align 8
  %149 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %150 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds %struct.mid_q_entry*, %struct.mid_q_entry** %150, i64 %154
  store %struct.mid_q_entry* %149, %struct.mid_q_entry** %155, align 8
  %156 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %157 = icmp ne %struct.mid_q_entry* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %142
  %159 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %160 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %159, i32 0, i32 2
  %161 = load i32 (%struct.TCP_Server_Info.0*, %struct.mid_q_entry*)*, i32 (%struct.TCP_Server_Info.0*, %struct.mid_q_entry*)** %160, align 8
  %162 = icmp ne i32 (%struct.TCP_Server_Info.0*, %struct.mid_q_entry*)* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %165 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %164, i32 0, i32 2
  %166 = load i32 (%struct.TCP_Server_Info.0*, %struct.mid_q_entry*)*, i32 (%struct.TCP_Server_Info.0*, %struct.mid_q_entry*)** %165, align 8
  %167 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %168 = bitcast %struct.TCP_Server_Info* %167 to %struct.TCP_Server_Info.0*
  %169 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %170 = call i32 %166(%struct.TCP_Server_Info.0* %168, %struct.mid_q_entry* %169)
  store i32 %170, i32* %10, align 4
  br label %175

171:                                              ; preds = %158, %142
  %172 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %173 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %174 = call i32 @cifs_handle_standard(%struct.TCP_Server_Info* %172, %struct.mid_q_entry* %173)
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %171, %163
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %204

178:                                              ; preds = %175
  %179 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %13, align 8
  %180 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %178
  %184 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %13, align 8
  %185 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @le32_to_cpu(i64 %186)
  %188 = load i32, i32* %14, align 4
  %189 = sub i32 %188, %187
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %192 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %183
  %196 = load i8*, i8** %18, align 8
  store i8* %196, i8** %12, align 8
  %197 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %198 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %197, i32 0, i32 3
  store i8* %196, i8** %198, align 8
  br label %203

199:                                              ; preds = %183
  %200 = load i8*, i8** %18, align 8
  store i8* %200, i8** %12, align 8
  %201 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %202 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %199, %195
  br label %83

204:                                              ; preds = %178, %175
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load i32, i32* %17, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %212 = load i8*, i8** %18, align 8
  %213 = call i32 @free_rsp_buf(i32 %211, i8* %212)
  br label %218

214:                                              ; preds = %207
  %215 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %216 = load i8*, i8** %18, align 8
  %217 = call i32 @free_rsp_buf(i32 %215, i8* %216)
  br label %218

218:                                              ; preds = %214, %210
  br label %219

219:                                              ; preds = %218, %204
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %220, %139, %77, %59
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cifs_read_from_socket(%struct.TCP_Server_Info*, i8*, i32) #1

declare dso_local i32 @HEADER_SIZE(%struct.TCP_Server_Info*) #1

declare dso_local i32 @decrypt_raw_data(%struct.TCP_Server_Info*, i8*, i32, i32*, i32, i32) #1

declare dso_local i64 @cifs_buf_get(...) #1

declare dso_local i64 @cifs_small_buf_get(...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct.mid_q_entry* @smb2_find_mid(%struct.TCP_Server_Info*, i8*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*) #1

declare dso_local i32 @cifs_handle_standard(%struct.TCP_Server_Info*, %struct.mid_q_entry*) #1

declare dso_local i32 @free_rsp_buf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
