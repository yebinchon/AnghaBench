; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_simple_falloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_simple_falloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cifs_tcon = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.cifsInodeInfo = type { i32 }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_SPARSE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.cifs_tcon*, i64, i64, i32)* @smb3_simple_falloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb3_simple_falloc(%struct.file* %0, %struct.cifs_tcon* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.cifsInodeInfo*, align 8
  %14 = alloca %struct.cifsFileInfo*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  store %struct.cifsFileInfo* %20, %struct.cifsFileInfo** %14, align 8
  %21 = load i64, i64* @EOPNOTSUPP, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %15, align 8
  %23 = call i32 (...) @get_xid()
  store i32 %23, i32* %16, align 4
  %24 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %25 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.inode* @d_inode(i32 %26)
  store %struct.inode* %27, %struct.inode** %12, align 8
  %28 = load %struct.inode*, %struct.inode** %12, align 8
  %29 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %28)
  store %struct.cifsInodeInfo* %29, %struct.cifsInodeInfo** %13, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %32 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %36 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @trace_smb3_falloc_enter(i32 %30, i32 %34, i32 %37, i32 %42, i64 %43, i64 %44)
  %46 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %13, align 8
  %47 = call i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %5
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %55 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %59 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %62 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @trace_smb3_falloc_err(i32 %53, i32 %57, i32 %60, i32 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @free_xid(i32 %70)
  %72 = load i64, i64* %15, align 8
  store i64 %72, i64* %6, align 8
  br label %263

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %5
  %75 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %13, align 8
  %76 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FILE_ATTRIBUTE_SPARSE_FILE, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %139

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i64 0, i64* %15, align 8
  br label %97

85:                                               ; preds = %81
  %86 = load %struct.inode*, %struct.inode** %12, align 8
  %87 = call i64 @i_size_read(%struct.inode* %86)
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %88, %89
  %91 = icmp sge i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i64 0, i64* %15, align 8
  br label %96

93:                                               ; preds = %85
  %94 = load i64, i64* @EOPNOTSUPP, align 8
  %95 = sub nsw i64 0, %94
  store i64 %95, i64* %15, align 8
  br label %96

96:                                               ; preds = %93, %92
  br label %97

97:                                               ; preds = %96, %84
  %98 = load i64, i64* %15, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %103 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %107 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %110 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @trace_smb3_falloc_err(i32 %101, i32 %105, i32 %108, i32 %113, i64 %114, i64 %115, i64 %116)
  br label %135

118:                                              ; preds = %97
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %121 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %125 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %128 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @trace_smb3_falloc_done(i32 %119, i32 %123, i32 %126, i32 %131, i64 %132, i64 %133)
  br label %135

135:                                              ; preds = %118, %100
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @free_xid(i32 %136)
  %138 = load i64, i64* %15, align 8
  store i64 %138, i64* %6, align 8
  br label %263

139:                                              ; preds = %74
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load %struct.inode*, %struct.inode** %12, align 8
  %144 = call i64 @i_size_read(%struct.inode* %143)
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %145, %146
  %148 = icmp sge i64 %144, %147
  br i1 %148, label %149, label %189

149:                                              ; preds = %142, %139
  %150 = load i64, i64* %9, align 8
  %151 = icmp sgt i64 %150, 8192
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %10, align 8
  %155 = add nsw i64 %153, %154
  %156 = add nsw i64 %155, 8192
  %157 = load %struct.inode*, %struct.inode** %12, align 8
  %158 = call i64 @i_size_read(%struct.inode* %157)
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %160, label %183

160:                                              ; preds = %152, %149
  %161 = load i64, i64* @EOPNOTSUPP, align 8
  %162 = sub nsw i64 0, %161
  store i64 %162, i64* %15, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %165 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %169 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %172 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* %9, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %15, align 8
  %179 = call i32 @trace_smb3_falloc_err(i32 %163, i32 %167, i32 %170, i32 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @free_xid(i32 %180)
  %182 = load i64, i64* %15, align 8
  store i64 %182, i64* %6, align 8
  br label %263

183:                                              ; preds = %152
  %184 = load i32, i32* %16, align 4
  %185 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %186 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %187 = load %struct.inode*, %struct.inode** %12, align 8
  %188 = call i32 @smb2_set_sparse(i32 %184, %struct.cifs_tcon* %185, %struct.cifsFileInfo* %186, %struct.inode* %187, i32 0)
  store i64 0, i64* %15, align 8
  br label %221

189:                                              ; preds = %142
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %192 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %193 = load %struct.inode*, %struct.inode** %12, align 8
  %194 = call i32 @smb2_set_sparse(i32 %190, %struct.cifs_tcon* %191, %struct.cifsFileInfo* %192, %struct.inode* %193, i32 0)
  store i64 0, i64* %15, align 8
  %195 = load %struct.inode*, %struct.inode** %12, align 8
  %196 = call i64 @i_size_read(%struct.inode* %195)
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %10, align 8
  %199 = add nsw i64 %197, %198
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %189
  %202 = load i64, i64* %9, align 8
  %203 = load i64, i64* %10, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @cpu_to_le64(i64 %204)
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %208 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %209 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %213 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %217 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @SMB2_set_eof(i32 %206, %struct.cifs_tcon* %207, i32 %211, i32 %215, i32 %218, i32* %17)
  store i64 %219, i64* %15, align 8
  br label %220

220:                                              ; preds = %201, %189
  br label %221

221:                                              ; preds = %220, %183
  %222 = load i64, i64* %15, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %242

224:                                              ; preds = %221
  %225 = load i32, i32* %16, align 4
  %226 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %227 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %231 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %234 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %233, i32 0, i32 0
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i64, i64* %9, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* %15, align 8
  %241 = call i32 @trace_smb3_falloc_err(i32 %225, i32 %229, i32 %232, i32 %237, i64 %238, i64 %239, i64 %240)
  br label %259

242:                                              ; preds = %221
  %243 = load i32, i32* %16, align 4
  %244 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %245 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %249 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %252 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %251, i32 0, i32 0
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i64, i64* %9, align 8
  %257 = load i64, i64* %10, align 8
  %258 = call i32 @trace_smb3_falloc_done(i32 %243, i32 %247, i32 %250, i32 %255, i64 %256, i64 %257)
  br label %259

259:                                              ; preds = %242, %224
  %260 = load i32, i32* %16, align 4
  %261 = call i32 @free_xid(i32 %260)
  %262 = load i64, i64* %15, align 8
  store i64 %262, i64* %6, align 8
  br label %263

263:                                              ; preds = %259, %160, %135, %52
  %264 = load i64, i64* %6, align 8
  ret i64 %264
}

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @trace_smb3_falloc_enter(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

declare dso_local i32 @trace_smb3_falloc_err(i32, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @trace_smb3_falloc_done(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @smb2_set_sparse(i32, %struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.inode*, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @SMB2_set_eof(i32, %struct.cifs_tcon*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
