; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32, i64 }
%struct.uni_name_t = type { i32 }
%struct.file_id_t = type { i32, i64, i32, i64, i32, i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.dos_name_t = type { i32, i32 }
%struct.fs_info_t = type { i64, i64, %struct.fs_func*, i64 }
%struct.fs_func = type { i64 (%struct.super_block*, i32, %struct.chain_t.0*)*, i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)*, i64 (%struct.super_block*, %struct.chain_t.2*, i64, i32, %struct.uni_name_t*, %struct.dos_name_t.3*)* }
%struct.chain_t.0 = type opaque
%struct.chain_t.1 = type opaque
%struct.chain_t.2 = type opaque
%struct.dos_name_t.3 = type opaque
%struct.TYPE_4__ = type { %struct.fs_info_t }

@FFS_FULL = common dso_local global i64 0, align 8
@EXFAT = common dso_local global i64 0, align 8
@FFS_MEDIAERR = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8
@DOS_CUR_DIR_NAME = common dso_local global i32 0, align 4
@DOS_NAME_LENGTH = common dso_local global i32 0, align 4
@TYPE_DIR = common dso_local global i32 0, align 4
@DOS_PAR_DIR_NAME = common dso_local global i32 0, align 4
@ATTR_SUBDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @create_dir(%struct.inode* %0, %struct.chain_t* %1, %struct.uni_name_t* %2, %struct.file_id_t* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca %struct.uni_name_t*, align 8
  %9 = alloca %struct.file_id_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.chain_t, align 8
  %15 = alloca %struct.dos_name_t, align 4
  %16 = alloca %struct.dos_name_t, align 4
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca %struct.fs_info_t*, align 8
  %19 = alloca %struct.fs_func*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.chain_t* %1, %struct.chain_t** %7, align 8
  store %struct.uni_name_t* %2, %struct.uni_name_t** %8, align 8
  store %struct.file_id_t* %3, %struct.file_id_t** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %17, align 8
  %23 = load %struct.super_block*, %struct.super_block** %17, align 8
  %24 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.fs_info_t* %25, %struct.fs_info_t** %18, align 8
  %26 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %27 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %26, i32 0, i32 2
  %28 = load %struct.fs_func*, %struct.fs_func** %27, align 8
  store %struct.fs_func* %28, %struct.fs_func** %19, align 8
  %29 = load %struct.super_block*, %struct.super_block** %17, align 8
  %30 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %31 = load %struct.uni_name_t*, %struct.uni_name_t** %8, align 8
  %32 = call i64 @get_num_entries_and_dos_name(%struct.super_block* %29, %struct.chain_t* %30, %struct.uni_name_t* %31, i64* %12, %struct.dos_name_t* %15)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %5, align 8
  br label %269

37:                                               ; preds = %4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @find_empty_entry(%struct.inode* %38, %struct.chain_t* %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @FFS_FULL, align 8
  store i64 %45, i64* %5, align 8
  br label %269

46:                                               ; preds = %37
  %47 = call i64 @CLUSTER_32(i32 -1)
  %48 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %51 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EXFAT, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 3, i32 1
  %57 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load %struct.fs_func*, %struct.fs_func** %19, align 8
  %59 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %58, i32 0, i32 0
  %60 = load i64 (%struct.super_block*, i32, %struct.chain_t.0*)*, i64 (%struct.super_block*, i32, %struct.chain_t.0*)** %59, align 8
  %61 = load %struct.super_block*, %struct.super_block** %17, align 8
  %62 = bitcast %struct.chain_t* %14 to %struct.chain_t.0*
  %63 = call i64 %60(%struct.super_block* %61, i32 1, %struct.chain_t.0* %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %46
  %67 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %67, i64* %5, align 8
  br label %269

68:                                               ; preds = %46
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* @FFS_FULL, align 8
  store i64 %72, i64* %5, align 8
  br label %269

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.super_block*, %struct.super_block** %17, align 8
  %76 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @clear_cluster(%struct.super_block* %75, i64 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @FFS_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* %10, align 8
  store i64 %83, i64* %5, align 8
  br label %269

84:                                               ; preds = %74
  %85 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %86 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EXFAT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %92 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  br label %183

94:                                               ; preds = %84
  store i64 0, i64* %13, align 8
  %95 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %16, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %16, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DOS_CUR_DIR_NAME, align 4
  %99 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %100 = call i32 @memcpy(i32 %97, i32 %98, i32 %99)
  %101 = load %struct.fs_func*, %struct.fs_func** %19, align 8
  %102 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %101, i32 0, i32 1
  %103 = load i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)*, i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)** %102, align 8
  %104 = load %struct.super_block*, %struct.super_block** %17, align 8
  %105 = bitcast %struct.chain_t* %14 to %struct.chain_t.1*
  %106 = load i32, i32* @TYPE_DIR, align 4
  %107 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 %103(%struct.super_block* %104, %struct.chain_t.1* %105, i32 0, i32 %106, i64 %108, i64 0)
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @FFS_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %94
  %114 = load i64, i64* %10, align 8
  store i64 %114, i64* %5, align 8
  br label %269

115:                                              ; preds = %94
  %116 = load %struct.fs_func*, %struct.fs_func** %19, align 8
  %117 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %116, i32 0, i32 2
  %118 = load i64 (%struct.super_block*, %struct.chain_t.2*, i64, i32, %struct.uni_name_t*, %struct.dos_name_t.3*)*, i64 (%struct.super_block*, %struct.chain_t.2*, i64, i32, %struct.uni_name_t*, %struct.dos_name_t.3*)** %117, align 8
  %119 = load %struct.super_block*, %struct.super_block** %17, align 8
  %120 = bitcast %struct.chain_t* %14 to %struct.chain_t.2*
  %121 = bitcast %struct.dos_name_t* %16 to %struct.dos_name_t.3*
  %122 = call i64 %118(%struct.super_block* %119, %struct.chain_t.2* %120, i64 0, i32 1, %struct.uni_name_t* null, %struct.dos_name_t.3* %121)
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @FFS_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i64, i64* %10, align 8
  store i64 %127, i64* %5, align 8
  br label %269

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %16, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DOS_PAR_DIR_NAME, align 4
  %132 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %133 = call i32 @memcpy(i32 %130, i32 %131, i32 %132)
  %134 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %135 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %138 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %128
  %142 = load %struct.fs_func*, %struct.fs_func** %19, align 8
  %143 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %142, i32 0, i32 1
  %144 = load i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)*, i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)** %143, align 8
  %145 = load %struct.super_block*, %struct.super_block** %17, align 8
  %146 = bitcast %struct.chain_t* %14 to %struct.chain_t.1*
  %147 = load i32, i32* @TYPE_DIR, align 4
  %148 = call i64 @CLUSTER_32(i32 0)
  %149 = call i64 %144(%struct.super_block* %145, %struct.chain_t.1* %146, i32 1, i32 %147, i64 %148, i64 0)
  store i64 %149, i64* %10, align 8
  br label %161

150:                                              ; preds = %128
  %151 = load %struct.fs_func*, %struct.fs_func** %19, align 8
  %152 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %151, i32 0, i32 1
  %153 = load i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)*, i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)** %152, align 8
  %154 = load %struct.super_block*, %struct.super_block** %17, align 8
  %155 = bitcast %struct.chain_t* %14 to %struct.chain_t.1*
  %156 = load i32, i32* @TYPE_DIR, align 4
  %157 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %158 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 %153(%struct.super_block* %154, %struct.chain_t.1* %155, i32 1, i32 %156, i64 %159, i64 0)
  store i64 %160, i64* %10, align 8
  br label %161

161:                                              ; preds = %150, %141
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @FFS_SUCCESS, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, i64* %10, align 8
  store i64 %166, i64* %5, align 8
  br label %269

167:                                              ; preds = %161
  %168 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %169 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %168, i32 0, i32 2
  %170 = load %struct.fs_func*, %struct.fs_func** %169, align 8
  %171 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %170, i32 0, i32 2
  %172 = load i64 (%struct.super_block*, %struct.chain_t.2*, i64, i32, %struct.uni_name_t*, %struct.dos_name_t.3*)*, i64 (%struct.super_block*, %struct.chain_t.2*, i64, i32, %struct.uni_name_t*, %struct.dos_name_t.3*)** %171, align 8
  %173 = load %struct.super_block*, %struct.super_block** %17, align 8
  %174 = bitcast %struct.chain_t* %14 to %struct.chain_t.2*
  %175 = bitcast %struct.dos_name_t* %16 to %struct.dos_name_t.3*
  %176 = call i64 %172(%struct.super_block* %173, %struct.chain_t.2* %174, i64 1, i32 1, %struct.uni_name_t* null, %struct.dos_name_t.3* %175)
  store i64 %176, i64* %10, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* @FFS_SUCCESS, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %167
  %181 = load i64, i64* %10, align 8
  store i64 %181, i64* %5, align 8
  br label %269

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182, %90
  %184 = load %struct.fs_func*, %struct.fs_func** %19, align 8
  %185 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %184, i32 0, i32 1
  %186 = load i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)*, i64 (%struct.super_block*, %struct.chain_t.1*, i32, i32, i64, i64)** %185, align 8
  %187 = load %struct.super_block*, %struct.super_block** %17, align 8
  %188 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %189 = bitcast %struct.chain_t* %188 to %struct.chain_t.1*
  %190 = load i64, i64* %11, align 8
  %191 = trunc i64 %190 to i32
  %192 = load i32, i32* @TYPE_DIR, align 4
  %193 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %13, align 8
  %196 = call i64 %186(%struct.super_block* %187, %struct.chain_t.1* %189, i32 %191, i32 %192, i64 %194, i64 %195)
  store i64 %196, i64* %10, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* @FFS_SUCCESS, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %183
  %201 = load i64, i64* %10, align 8
  store i64 %201, i64* %5, align 8
  br label %269

202:                                              ; preds = %183
  %203 = load %struct.fs_func*, %struct.fs_func** %19, align 8
  %204 = getelementptr inbounds %struct.fs_func, %struct.fs_func* %203, i32 0, i32 2
  %205 = load i64 (%struct.super_block*, %struct.chain_t.2*, i64, i32, %struct.uni_name_t*, %struct.dos_name_t.3*)*, i64 (%struct.super_block*, %struct.chain_t.2*, i64, i32, %struct.uni_name_t*, %struct.dos_name_t.3*)** %204, align 8
  %206 = load %struct.super_block*, %struct.super_block** %17, align 8
  %207 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %208 = bitcast %struct.chain_t* %207 to %struct.chain_t.2*
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* %12, align 8
  %211 = trunc i64 %210 to i32
  %212 = load %struct.uni_name_t*, %struct.uni_name_t** %8, align 8
  %213 = bitcast %struct.dos_name_t* %15 to %struct.dos_name_t.3*
  %214 = call i64 %205(%struct.super_block* %206, %struct.chain_t.2* %208, i64 %209, i32 %211, %struct.uni_name_t* %212, %struct.dos_name_t.3* %213)
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* @FFS_SUCCESS, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %202
  %219 = load i64, i64* %10, align 8
  store i64 %219, i64* %5, align 8
  br label %269

220:                                              ; preds = %202
  %221 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %222 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %225 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %224, i32 0, i32 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  store i64 %223, i64* %226, align 8
  %227 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %228 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %231 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %230, i32 0, i32 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 2
  store i64 %229, i64* %232, align 8
  %233 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %234 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %237 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %236, i32 0, i32 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 8
  %239 = load i64, i64* %11, align 8
  %240 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %241 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %240, i32 0, i32 7
  store i64 %239, i64* %241, align 8
  %242 = load i32, i32* @ATTR_SUBDIR, align 4
  %243 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %244 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 8
  %245 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %246 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @EXFAT, align 8
  %249 = icmp eq i64 %247, %248
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 3, i32 1
  %252 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %253 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i64, i64* %13, align 8
  %255 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %256 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %255, i32 0, i32 5
  store i64 %254, i64* %256, align 8
  %257 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %260 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  %261 = load i32, i32* @TYPE_DIR, align 4
  %262 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %263 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  %264 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %265 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %264, i32 0, i32 3
  store i64 0, i64* %265, align 8
  %266 = load %struct.file_id_t*, %struct.file_id_t** %9, align 8
  %267 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %266, i32 0, i32 2
  store i32 -1, i32* %267, align 8
  %268 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %268, i64* %5, align 8
  br label %269

269:                                              ; preds = %220, %218, %200, %180, %165, %126, %113, %82, %71, %66, %44, %35
  %270 = load i64, i64* %5, align 8
  ret i64 %270
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @get_num_entries_and_dos_name(%struct.super_block*, %struct.chain_t*, %struct.uni_name_t*, i64*, %struct.dos_name_t*) #1

declare dso_local i64 @find_empty_entry(%struct.inode*, %struct.chain_t*, i64) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i64 @clear_cluster(%struct.super_block*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
