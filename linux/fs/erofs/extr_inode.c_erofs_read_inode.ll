; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i8*, %struct.TYPE_7__, %struct.TYPE_6__, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.erofs_inode = type { i64, i32, i32, i8*, i8* }
%struct.erofs_inode_compact = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.erofs_inode_extended = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.erofs_sb_info = type { i8*, i8* }

@EROFS_INODE_DATALAYOUT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"unsupported datalayout %u of nid %llu\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"unsupported on-disk inode version %u of nid %llu\00", align 1
@EROFS_BLKSIZ = common dso_local global i32 0, align 4
@LOG_SECTORS_PER_BLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"bogus i_mode (%o) @ nid %llu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @erofs_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_read_inode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.erofs_inode*, align 8
  %7 = alloca %struct.erofs_inode_compact*, align 8
  %8 = alloca %struct.erofs_inode_extended*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.erofs_sb_info*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %12)
  store %struct.erofs_inode* %13, %struct.erofs_inode** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.erofs_inode_compact*
  store %struct.erofs_inode_compact* %15, %struct.erofs_inode_compact** %7, align 8
  %16 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %17 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @le16_to_cpu(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.erofs_sb_info* @EROFS_SB(i32 %23)
  store %struct.erofs_sb_info* %24, %struct.erofs_sb_info** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @erofs_inode_datalayout(i32 %25)
  %27 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %28 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %30 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EROFS_INODE_DATALAYOUT_MAX, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %39 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %43 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @erofs_err(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = call i32 @DBG_BUGON(i32 1)
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %300

49:                                               ; preds = %2
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @erofs_inode_version(i32 %50)
  switch i32 %51, label %254 [
    i32 135, label %52
    i32 136, label %155
  ]

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = bitcast i8* %53 to %struct.erofs_inode_extended*
  store %struct.erofs_inode_extended* %54, %struct.erofs_inode_extended** %8, align 8
  %55 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %56 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %55, i32 0, i32 1
  store i32 44, i32* %56, align 8
  %57 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %58 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @erofs_xattr_ibody_size(i32 %59)
  %61 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %62 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %64 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le16_to_cpu(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @S_IFMT, align 4
  %74 = and i32 %72, %73
  switch i32 %74, label %95 [
    i32 129, label %75
    i32 132, label %75
    i32 130, label %75
    i32 133, label %83
    i32 134, label %83
    i32 131, label %92
    i32 128, label %92
  ]

75:                                               ; preds = %52, %52, %52
  %76 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %77 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le32_to_cpu(i32 %79)
  %81 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %82 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  br label %96

83:                                               ; preds = %52, %52
  %84 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %85 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = call i8* @new_decode_dev(i8* %88)
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  br label %96

92:                                               ; preds = %52, %52
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 6
  store i8* null, i8** %94, align 8
  br label %96

95:                                               ; preds = %52
  br label %286

96:                                               ; preds = %92, %83, %75
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %99 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = call i32 @i_uid_write(%struct.inode* %97, i8* %101)
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %105 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = call i32 @i_gid_write(%struct.inode* %103, i8* %107)
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %111 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @le32_to_cpu(i32 %112)
  %114 = call i32 @set_nlink(%struct.inode* %109, i8* %113)
  %115 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %116 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le64_to_cpu(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i8* %118, i8** %124, align 8
  %125 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %126 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @le32_to_cpu(i32 %127)
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i8* %128, i8** %134, align 8
  %135 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %136 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le64_to_cpu(i32 %137)
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %142 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @erofs_inode_is_data_compressed(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %96
  %148 = load %struct.erofs_inode_extended*, %struct.erofs_inode_extended** %8, align 8
  %149 = getelementptr inbounds %struct.erofs_inode_extended, %struct.erofs_inode_extended* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @le32_to_cpu(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %147, %96
  br label %267

155:                                              ; preds = %49
  %156 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %157 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %156, i32 0, i32 1
  store i32 40, i32* %157, align 8
  %158 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %159 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @erofs_xattr_ibody_size(i32 %160)
  %162 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %163 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  %164 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %165 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le16_to_cpu(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.inode*, %struct.inode** %4, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @S_IFMT, align 4
  %175 = and i32 %173, %174
  switch i32 %175, label %196 [
    i32 129, label %176
    i32 132, label %176
    i32 130, label %176
    i32 133, label %184
    i32 134, label %184
    i32 131, label %193
    i32 128, label %193
  ]

176:                                              ; preds = %155, %155, %155
  %177 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %178 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @le32_to_cpu(i32 %180)
  %182 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %183 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  br label %197

184:                                              ; preds = %155, %155
  %185 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %186 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @le32_to_cpu(i32 %188)
  %190 = call i8* @new_decode_dev(i8* %189)
  %191 = load %struct.inode*, %struct.inode** %4, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 6
  store i8* %190, i8** %192, align 8
  br label %197

193:                                              ; preds = %155, %155
  %194 = load %struct.inode*, %struct.inode** %4, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 6
  store i8* null, i8** %195, align 8
  br label %197

196:                                              ; preds = %155
  br label %286

197:                                              ; preds = %193, %184, %176
  %198 = load %struct.inode*, %struct.inode** %4, align 8
  %199 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %200 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @le16_to_cpu(i32 %201)
  %203 = call i32 @i_uid_write(%struct.inode* %198, i8* %202)
  %204 = load %struct.inode*, %struct.inode** %4, align 8
  %205 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %206 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @le16_to_cpu(i32 %207)
  %209 = call i32 @i_gid_write(%struct.inode* %204, i8* %208)
  %210 = load %struct.inode*, %struct.inode** %4, align 8
  %211 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %212 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @le16_to_cpu(i32 %213)
  %215 = call i32 @set_nlink(%struct.inode* %210, i8* %214)
  %216 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %10, align 8
  %217 = getelementptr inbounds %struct.erofs_sb_info, %struct.erofs_sb_info* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.inode*, %struct.inode** %4, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i8* %218, i8** %221, align 8
  %222 = load %struct.inode*, %struct.inode** %4, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  store i8* %218, i8** %224, align 8
  %225 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %10, align 8
  %226 = getelementptr inbounds %struct.erofs_sb_info, %struct.erofs_sb_info* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.inode*, %struct.inode** %4, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  store i8* %227, i8** %230, align 8
  %231 = load %struct.inode*, %struct.inode** %4, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  store i8* %227, i8** %233, align 8
  %234 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %235 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @le32_to_cpu(i32 %236)
  %238 = load %struct.inode*, %struct.inode** %4, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 3
  store i8* %237, i8** %239, align 8
  %240 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %241 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = call i32 @erofs_inode_is_data_compressed(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %197
  %247 = load %struct.erofs_inode_compact*, %struct.erofs_inode_compact** %7, align 8
  %248 = getelementptr inbounds %struct.erofs_inode_compact, %struct.erofs_inode_compact* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @le32_to_cpu(i32 %250)
  %252 = ptrtoint i8* %251 to i32
  store i32 %252, i32* %11, align 4
  br label %253

253:                                              ; preds = %246, %197
  br label %267

254:                                              ; preds = %49
  %255 = load %struct.inode*, %struct.inode** %4, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @erofs_inode_version(i32 %258)
  %260 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %261 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @erofs_err(i32 %257, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %259, i32 %262)
  %264 = call i32 @DBG_BUGON(i32 1)
  %265 = load i32, i32* @EOPNOTSUPP, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %3, align 4
  br label %300

267:                                              ; preds = %253, %154
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %267
  %271 = load %struct.inode*, %struct.inode** %4, align 8
  %272 = getelementptr inbounds %struct.inode, %struct.inode* %271, i32 0, i32 3
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* @EROFS_BLKSIZ, align 4
  %275 = call i32 @roundup(i8* %273, i32 %274)
  %276 = ashr i32 %275, 9
  %277 = load %struct.inode*, %struct.inode** %4, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  br label %285

279:                                              ; preds = %267
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @LOG_SECTORS_PER_BLOCK, align 4
  %282 = shl i32 %280, %281
  %283 = load %struct.inode*, %struct.inode** %4, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %279, %270
  store i32 0, i32* %3, align 4
  br label %300

286:                                              ; preds = %196, %95
  %287 = load %struct.inode*, %struct.inode** %4, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.inode*, %struct.inode** %4, align 8
  %291 = getelementptr inbounds %struct.inode, %struct.inode* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %294 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @erofs_err(i32 %289, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %292, i32 %295)
  %297 = call i32 @DBG_BUGON(i32 1)
  %298 = load i32, i32* @EFSCORRUPTED, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %286, %285, %254, %34
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local %struct.erofs_sb_info* @EROFS_SB(i32) #1

declare dso_local i64 @erofs_inode_datalayout(i32) #1

declare dso_local i32 @erofs_err(i32, i8*, i32, i32) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @erofs_inode_version(i32) #1

declare dso_local i8* @erofs_xattr_ibody_size(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @new_decode_dev(i8*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i8*) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i8*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @erofs_inode_is_data_compressed(i32) #1

declare dso_local i32 @roundup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
