; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_sfu_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_sfu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cifs_fattr = type { i32, i8*, i32, i8* }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i32, %struct.cifs_open_parms*, i64*, i32*)*, i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, i8**, i32*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)* }
%struct.cifs_open_parms = type { i8*, i32, %struct.cifs_fid*, i32, i32, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }
%struct.cifs_fid = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i32 }

@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@DT_FIFO = common dso_local global i8* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@REQ_OPLOCK = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"check sfu type of %s, open rc = %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"IntxBLK\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Block device\0A\00", align 1
@S_IFBLK = common dso_local global i32 0, align 4
@DT_BLK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"IntxCHR\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Char device\0A\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@DT_CHR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"IntxLNK\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Symlink\0A\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_fattr*, i8*, %struct.cifs_sb_info*, i32)* @cifs_sfu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_sfu_type(%struct.cifs_fattr* %0, i8* %1, %struct.cifs_sb_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_fattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tcon_link*, align 8
  %13 = alloca %struct.cifs_tcon*, align 8
  %14 = alloca %struct.cifs_fid, align 4
  %15 = alloca %struct.cifs_open_parms, align 8
  %16 = alloca %struct.cifs_io_parms, align 8
  %17 = alloca [24 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* @CIFS_NO_BUFFER, align 4
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds [24 x i8], [24 x i8]* %17, i64 0, i64 0
  store i8* %26, i8** %19, align 8
  %27 = load i32, i32* @S_IFMT, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %30 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %34 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %4
  %38 = load i32, i32* @S_IFIFO, align 4
  %39 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %40 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i8*, i8** @DT_FIFO, align 8
  %44 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %45 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  store i32 0, i32* %5, align 4
  br label %283

46:                                               ; preds = %4
  %47 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %48 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, i32* @S_IFREG, align 4
  %53 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %54 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i8*, i8** @DT_REG, align 8
  %58 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %59 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %283

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %65 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %64)
  store %struct.tcon_link* %65, %struct.tcon_link** %12, align 8
  %66 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %67 = call i64 @IS_ERR(%struct.tcon_link* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %71 = call i32 @PTR_ERR(%struct.tcon_link* %70)
  store i32 %71, i32* %5, align 4
  br label %283

72:                                               ; preds = %63
  %73 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %74 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %73)
  store %struct.cifs_tcon* %74, %struct.cifs_tcon** %13, align 8
  %75 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %76 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 7
  store %struct.cifs_tcon* %75, %struct.cifs_tcon** %76, align 8
  %77 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %78 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 6
  store %struct.cifs_sb_info* %77, %struct.cifs_sb_info** %78, align 8
  %79 = load i32, i32* @GENERIC_READ, align 4
  %80 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 5
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @CREATE_NOT_DIR, align 4
  %82 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 4
  store i32 %81, i32* %82, align 4
  %83 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %84 = call i64 @backup_cred(%struct.cifs_sb_info* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %88 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %72
  %92 = load i32, i32* @FILE_OPEN, align 4
  %93 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 3
  store i32 %92, i32* %93, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 2
  store %struct.cifs_fid* %14, %struct.cifs_fid** %96, align 8
  %97 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 1
  store i32 0, i32* %97, align 8
  %98 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %99 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = load i64, i64* @REQ_OPLOCK, align 8
  store i64 %107, i64* %11, align 8
  br label %109

108:                                              ; preds = %91
  store i64 0, i64* %11, align 8
  br label %109

109:                                              ; preds = %108, %106
  %110 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %111 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32 (i32, %struct.cifs_open_parms*, i64*, i32*)*, i32 (i32, %struct.cifs_open_parms*, i64*, i32*)** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 %118(i32 %119, %struct.cifs_open_parms* %15, i64* %11, i32* null)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %109
  %124 = load i32, i32* @FYI, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %125, i32 %126)
  %128 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %129 = call i32 @cifs_put_tlink(%struct.tcon_link* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  br label %283

131:                                              ; preds = %109
  %132 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %14, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 4
  store i32 %133, i32* %134, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 3
  store i32 %137, i32* %138, align 8
  %139 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %140 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 2
  store %struct.cifs_tcon* %139, %struct.cifs_tcon** %140, align 8
  %141 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 0
  store i32 24, i32* %142, align 8
  %143 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %144 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, i8**, i32*)*, i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, i8**, i32*)** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 %151(i32 %152, %struct.cifs_fid* %14, %struct.cifs_io_parms* %16, i32* %18, i8** %19, i32* %20)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %256

156:                                              ; preds = %131
  %157 = load i32, i32* %18, align 4
  %158 = icmp uge i32 %157, 8
  br i1 %158, label %159, label %256

159:                                              ; preds = %156
  %160 = load i8*, i8** %19, align 8
  %161 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %160, i32 8)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %193

163:                                              ; preds = %159
  %164 = load i32, i32* @FYI, align 4
  %165 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @S_IFBLK, align 4
  %167 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %168 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load i8*, i8** @DT_BLK, align 8
  %172 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %173 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %18, align 4
  %175 = icmp eq i32 %174, 24
  br i1 %175, label %176, label %192

176:                                              ; preds = %163
  %177 = load i8*, i8** %19, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 8
  %179 = bitcast i8* %178 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @le64_to_cpu(i32 %180)
  store i32 %181, i32* %21, align 4
  %182 = load i8*, i8** %19, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 16
  %184 = bitcast i8* %183 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @le64_to_cpu(i32 %185)
  store i32 %186, i32* %22, align 4
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %22, align 4
  %189 = call i8* @MKDEV(i32 %187, i32 %188)
  %190 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %191 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %176, %163
  br label %255

193:                                              ; preds = %159
  %194 = load i8*, i8** %19, align 8
  %195 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %194, i32 8)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %227

197:                                              ; preds = %193
  %198 = load i32, i32* @FYI, align 4
  %199 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %200 = load i32, i32* @S_IFCHR, align 4
  %201 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %202 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load i8*, i8** @DT_CHR, align 8
  %206 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %207 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %18, align 4
  %209 = icmp eq i32 %208, 24
  br i1 %209, label %210, label %226

210:                                              ; preds = %197
  %211 = load i8*, i8** %19, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 8
  %213 = bitcast i8* %212 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @le64_to_cpu(i32 %214)
  store i32 %215, i32* %23, align 4
  %216 = load i8*, i8** %19, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 16
  %218 = bitcast i8* %217 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @le64_to_cpu(i32 %219)
  store i32 %220, i32* %24, align 4
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %24, align 4
  %223 = call i8* @MKDEV(i32 %221, i32 %222)
  %224 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %225 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %210, %197
  br label %254

227:                                              ; preds = %193
  %228 = load i8*, i8** %19, align 8
  %229 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %228, i32 7)
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %227
  %232 = load i32, i32* @FYI, align 4
  %233 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %234 = load i32, i32* @S_IFLNK, align 4
  %235 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %236 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load i8*, i8** @DT_LNK, align 8
  %240 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %241 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  br label %253

242:                                              ; preds = %227
  %243 = load i32, i32* @S_IFREG, align 4
  %244 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %245 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load i8*, i8** @DT_REG, align 8
  %249 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %250 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load i32, i32* @EOPNOTSUPP, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %10, align 4
  br label %253

253:                                              ; preds = %242, %231
  br label %254

254:                                              ; preds = %253, %226
  br label %255

255:                                              ; preds = %254, %192
  br label %267

256:                                              ; preds = %156, %131
  %257 = load i32, i32* @S_IFREG, align 4
  %258 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %259 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load i8*, i8** @DT_REG, align 8
  %263 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %264 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  %265 = load i32, i32* @EOPNOTSUPP, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %10, align 4
  br label %267

267:                                              ; preds = %256, %255
  %268 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %269 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %268, i32 0, i32 0
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 2
  %276 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %279 = call i32 %276(i32 %277, %struct.cifs_tcon* %278, %struct.cifs_fid* %14)
  %280 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %281 = call i32 @cifs_put_tlink(%struct.tcon_link* %280)
  %282 = load i32, i32* %10, align 4
  store i32 %282, i32* %5, align 4
  br label %283

283:                                              ; preds = %267, %123, %69, %51, %37
  %284 = load i32, i32* %5, align 4
  ret i32 %284
}

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i8* @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
