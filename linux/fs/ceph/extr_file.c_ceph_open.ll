; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { i32, i32, %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32 }
%struct.ceph_inode_info = type { i32, i32, i64 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32, %struct.inode* }

@.str = private unnamed_addr constant [32 x i8] c"open file %p is already opened\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"open inode %p ino %llx.%llx file %p flags %d (%d)\0A\00", align 1
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@CEPH_FILE_MODE_WR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"open %p fmode %d want %s issued %s using existing\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"open fmode %d wants %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"open result=%d on %llx.%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca %struct.ceph_fs_client*, align 8
  %8 = alloca %struct.ceph_mds_client*, align 8
  %9 = alloca %struct.ceph_mds_request*, align 8
  %10 = alloca %struct.ceph_file_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %17)
  store %struct.ceph_inode_info* %18, %struct.ceph_inode_info** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %21)
  store %struct.ceph_fs_client* %22, %struct.ceph_fs_client** %7, align 8
  %23 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %24 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %23, i32 0, i32 0
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %24, align 8
  store %struct.ceph_mds_client* %25, %struct.ceph_mds_client** %8, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 2
  %28 = load %struct.ceph_file_info*, %struct.ceph_file_info** %27, align 8
  store %struct.ceph_file_info* %28, %struct.ceph_file_info** %10, align 8
  %29 = load %struct.ceph_file_info*, %struct.ceph_file_info** %10, align 8
  %30 = icmp ne %struct.ceph_file_info* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.file* %32)
  store i32 0, i32* %3, align 4
  br label %229

34:                                               ; preds = %2
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @O_CREAT, align 4
  %39 = load i32, i32* @O_EXCL, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISDIR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @O_DIRECTORY, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %48, %34
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @ceph_vinop(%struct.inode* %52)
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %51, i32 %53, %struct.file* %54, i32 %55, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ceph_flags_to_mode(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ceph_caps_for_mode(i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i64 @ceph_snap(%struct.inode* %64)
  %66 = load i64, i64* @CEPH_NOSNAP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %50
  %69 = load %struct.file*, %struct.file** %5, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FMODE_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EROFS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %229

78:                                               ; preds = %68, %50
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = call i64 @ceph_snap(%struct.inode* %79)
  %81 = load i64, i64* @CEPH_SNAPDIR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %85 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %84, i32 0, i32 1
  %86 = call i32 @spin_lock(i32* %85)
  %87 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @__ceph_get_fmode(%struct.ceph_inode_info* %87, i32 %88)
  %90 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %91 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @ceph_init_file(%struct.inode* %93, %struct.file* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %229

97:                                               ; preds = %78
  %98 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %99 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %102 = call i64 @__ceph_is_any_real_caps(%struct.ceph_inode_info* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %156

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @CEPH_FILE_MODE_WR, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %111 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %109, %104
  %115 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %116 = call i32 @__ceph_caps_mds_wanted(%struct.ceph_inode_info* %115, i32 1)
  store i32 %116, i32* %15, align 4
  %117 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %118 = call i32 @__ceph_caps_issued(%struct.ceph_inode_info* %117, i32* null)
  store i32 %118, i32* %16, align 4
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @ceph_cap_string(i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @ceph_cap_string(i32 %123)
  %125 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %119, i32 %120, i32 %122, i32 %124)
  %126 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @__ceph_get_fmode(%struct.ceph_inode_info* %126, i32 %127)
  %129 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %130 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %129, i32 0, i32 1
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %114
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = call i64 @ceph_snap(%struct.inode* %144)
  %146 = load i64, i64* @CEPH_SNAPDIR, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %150 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %149, i32 0, i32* null)
  br label %151

151:                                              ; preds = %148, %143, %137, %114
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = load %struct.file*, %struct.file** %5, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @ceph_init_file(%struct.inode* %152, %struct.file* %153, i32 %154)
  store i32 %155, i32* %3, align 4
  br label %229

156:                                              ; preds = %109, %97
  %157 = load %struct.inode*, %struct.inode** %4, align 8
  %158 = call i64 @ceph_snap(%struct.inode* %157)
  %159 = load i64, i64* @CEPH_NOSNAP, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  %162 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %163 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* %14, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %161
  %170 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @__ceph_get_fmode(%struct.ceph_inode_info* %170, i32 %171)
  %173 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %174 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %173, i32 0, i32 1
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load %struct.inode*, %struct.inode** %4, align 8
  %177 = load %struct.file*, %struct.file** %5, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @ceph_init_file(%struct.inode* %176, %struct.file* %177, i32 %178)
  store i32 %179, i32* %3, align 4
  br label %229

180:                                              ; preds = %161, %156
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %183 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %182, i32 0, i32 1
  %184 = call i32 @spin_unlock(i32* %183)
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @ceph_cap_string(i32 %186)
  %188 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %185, i32 %187)
  %189 = load %struct.inode*, %struct.inode** %4, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call %struct.ceph_mds_request* @prepare_open_request(i32 %191, i32 %192, i32 0)
  store %struct.ceph_mds_request* %193, %struct.ceph_mds_request** %9, align 8
  %194 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %195 = call i64 @IS_ERR(%struct.ceph_mds_request* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %181
  %198 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %199 = call i32 @PTR_ERR(%struct.ceph_mds_request* %198)
  store i32 %199, i32* %11, align 4
  br label %227

200:                                              ; preds = %181
  %201 = load %struct.inode*, %struct.inode** %4, align 8
  %202 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %203 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %202, i32 0, i32 2
  store %struct.inode* %201, %struct.inode** %203, align 8
  %204 = load %struct.inode*, %struct.inode** %4, align 8
  %205 = call i32 @ihold(%struct.inode* %204)
  %206 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %207 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %209 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %210 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %208, i32* null, %struct.ceph_mds_request* %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %200
  %214 = load %struct.inode*, %struct.inode** %4, align 8
  %215 = load %struct.file*, %struct.file** %5, align 8
  %216 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %217 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @ceph_init_file(%struct.inode* %214, %struct.file* %215, i32 %218)
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %213, %200
  %221 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %222 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %221)
  %223 = load i32, i32* %11, align 4
  %224 = load %struct.inode*, %struct.inode** %4, align 8
  %225 = call i32 @ceph_vinop(%struct.inode* %224)
  %226 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %223, i32 %225)
  br label %227

227:                                              ; preds = %220, %197
  %228 = load i32, i32* %11, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %169, %151, %83, %75, %31
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @ceph_flags_to_mode(i32) #1

declare dso_local i32 @ceph_caps_for_mode(i32) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_get_fmode(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_init_file(%struct.inode*, %struct.file*, i32) #1

declare dso_local i64 @__ceph_is_any_real_caps(%struct.ceph_inode_info*) #1

declare dso_local i32 @__ceph_caps_mds_wanted(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @__ceph_caps_issued(%struct.ceph_inode_info*, i32*) #1

declare dso_local i32 @ceph_cap_string(i32) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

declare dso_local %struct.ceph_mds_request* @prepare_open_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
