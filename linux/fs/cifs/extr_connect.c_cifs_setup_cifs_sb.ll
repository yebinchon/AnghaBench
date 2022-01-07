; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_setup_cifs_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_setup_cifs_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cifs_prune_tlinks = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"file mode: 0x%hx  dir mode: 0x%hx\0A\00", align 1
@CIFS_MOUNT_NO_DFS = common dso_local global i32 0, align 4
@CIFS_MOUNT_NO_PERM = common dso_local global i32 0, align 4
@CIFS_MOUNT_SET_UID = common dso_local global i32 0, align 4
@CIFS_MOUNT_UID_FROM_ACL = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SFM_CHR = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@CIFS_MOUNT_NO_XATTR = common dso_local global i32 0, align 4
@CIFS_MOUNT_UNX_EMUL = common dso_local global i32 0, align 4
@CIFS_MOUNT_NO_BRL = common dso_local global i32 0, align 4
@CIFS_MOUNT_NO_HANDLE_CACHE = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOSSYNC = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@CIFS_MOUNT_RWPIDFORWARD = common dso_local global i32 0, align 4
@CIFS_MOUNT_MODE_FROM_SID = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_BACKUPUID = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_BACKUPGID = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_UID = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_GID = common dso_local global i32 0, align 4
@CIFS_MOUNT_DYNPERM = common dso_local global i32 0, align 4
@CIFS_MOUNT_FSCACHE = common dso_local global i32 0, align 4
@CIFS_MOUNT_MULTIUSER = common dso_local global i32 0, align 4
@CIFS_MOUNT_STRICT_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"mounting share using direct i/o\0A\00", align 1
@CIFS_MOUNT_DIRECT_IO = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [97 x i8] c"mounting share with read only caching. Ensure that the share will not be modified while in use.\0A\00", align 1
@CIFS_MOUNT_RO_CACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [108 x i8] c"mounting share in single client RW caching mode. Ensure that no other systems will be accessing the share.\0A\00", align 1
@CIFS_MOUNT_RW_CACHE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"mount options mfsymlinks and sfu both enabled\0A\00", align 1
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"mount option dynperm ignored if cifsacl mount option supported\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_setup_cifs_sb(%struct.smb_vol* %0, %struct.cifs_sb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_vol*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  store %struct.smb_vol* %0, %struct.smb_vol** %4, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %5, align 8
  %6 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %7 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %6, i32 0, i32 15
  %8 = load i32, i32* @cifs_prune_tlinks, align 4
  %9 = call i32 @INIT_DELAYED_WORK(i32* %7, i32 %8)
  %10 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %10, i32 0, i32 14
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load i32, i32* @RB_ROOT, align 4
  %14 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %14, i32 0, i32 13
  store i32 %13, i32* %15, align 4
  %16 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %17 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %16, i32 0, i32 39
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %20 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 8
  %21 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %22 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %21, i32 0, i32 38
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %27 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %26, i32 0, i32 37
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 8
  %31 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %32 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %31, i32 0, i32 36
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %35 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %37 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %36, i32 0, i32 35
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %42 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %41, i32 0, i32 34
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %47 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %46, i32 0, i32 33
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %50 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @FYI, align 4
  %52 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %53 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %56 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %60 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %59, i32 0, i32 32
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %63 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %65 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %64, i32 0, i32 31
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %68 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %70 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %69, i32 0, i32 30
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %2
  %74 = load i32, i32* @CIFS_MOUNT_NO_DFS, align 4
  %75 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %76 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %2
  %80 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %81 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %80, i32 0, i32 29
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @CIFS_MOUNT_NO_PERM, align 4
  %86 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %87 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %92 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %91, i32 0, i32 28
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @CIFS_MOUNT_SET_UID, align 4
  %97 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %98 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %103 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %102, i32 0, i32 27
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @CIFS_MOUNT_UID_FROM_ACL, align 4
  %108 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %109 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %114 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %113, i32 0, i32 26
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %119 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %120 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %112
  %124 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %125 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %124, i32 0, i32 25
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @CIFS_MOUNT_MAP_SFM_CHR, align 4
  %130 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %131 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %136 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %135, i32 0, i32 24
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %141 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %142 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %134
  %146 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %147 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %146, i32 0, i32 23
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* @CIFS_MOUNT_NO_XATTR, align 4
  %152 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %153 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %145
  %157 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %158 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @CIFS_MOUNT_UNX_EMUL, align 4
  %163 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %164 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %156
  %168 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %169 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %168, i32 0, i32 22
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32, i32* @CIFS_MOUNT_NO_BRL, align 4
  %174 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %175 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %167
  %179 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %180 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %179, i32 0, i32 21
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load i32, i32* @CIFS_MOUNT_NO_HANDLE_CACHE, align 4
  %185 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %186 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %178
  %190 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %191 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %190, i32 0, i32 20
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load i32, i32* @CIFS_MOUNT_NOSSYNC, align 4
  %196 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %197 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %189
  %201 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %202 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %201, i32 0, i32 19
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %207 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %208 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %200
  %212 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %213 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %212, i32 0, i32 18
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i32, i32* @CIFS_MOUNT_RWPIDFORWARD, align 4
  %218 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %219 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %216, %211
  %223 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %224 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %223, i32 0, i32 17
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32, i32* @CIFS_MOUNT_MODE_FROM_SID, align 4
  %229 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %230 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %222
  %234 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %235 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %240 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %241 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %233
  %245 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %246 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %245, i32 0, i32 16
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %244
  %250 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPUID, align 4
  %251 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %252 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %256 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %255, i32 0, i32 15
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %259 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %249, %244
  %261 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %262 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %261, i32 0, i32 14
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %260
  %266 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPGID, align 4
  %267 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %268 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %272 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %271, i32 0, i32 13
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %275 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  br label %276

276:                                              ; preds = %265, %260
  %277 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %278 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %277, i32 0, i32 12
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load i32, i32* @CIFS_MOUNT_OVERR_UID, align 4
  %283 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %284 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %281, %276
  %288 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %289 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %288, i32 0, i32 11
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %287
  %293 = load i32, i32* @CIFS_MOUNT_OVERR_GID, align 4
  %294 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %295 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %292, %287
  %299 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %300 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load i32, i32* @CIFS_MOUNT_DYNPERM, align 4
  %305 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %306 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %303, %298
  %310 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %311 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %310, i32 0, i32 10
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = load i32, i32* @CIFS_MOUNT_FSCACHE, align 4
  %316 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %317 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %314, %309
  %321 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %322 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %321, i32 0, i32 9
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %320
  %326 = load i32, i32* @CIFS_MOUNT_MULTIUSER, align 4
  %327 = load i32, i32* @CIFS_MOUNT_NO_PERM, align 4
  %328 = or i32 %326, %327
  %329 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %330 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %328
  store i32 %332, i32* %330, align 8
  br label %333

333:                                              ; preds = %325, %320
  %334 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %335 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %334, i32 0, i32 8
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %333
  %339 = load i32, i32* @CIFS_MOUNT_STRICT_IO, align 4
  %340 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %341 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %338, %333
  %345 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %346 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %345, i32 0, i32 7
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %344
  %350 = load i32, i32* @FYI, align 4
  %351 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %350, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %352 = load i32, i32* @CIFS_MOUNT_DIRECT_IO, align 4
  %353 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %354 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %349, %344
  %358 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %359 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %358, i32 0, i32 6
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %357
  %363 = load i32, i32* @VFS, align 4
  %364 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %363, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0))
  %365 = load i32, i32* @CIFS_MOUNT_RO_CACHE, align 4
  %366 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %367 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %386

370:                                              ; preds = %357
  %371 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %372 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %371, i32 0, i32 5
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %385

375:                                              ; preds = %370
  %376 = load i32, i32* @VFS, align 4
  %377 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %376, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0))
  %378 = load i32, i32* @CIFS_MOUNT_RO_CACHE, align 4
  %379 = load i32, i32* @CIFS_MOUNT_RW_CACHE, align 4
  %380 = or i32 %378, %379
  %381 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %382 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %385

385:                                              ; preds = %375, %370
  br label %386

386:                                              ; preds = %385, %362
  %387 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %388 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %387, i32 0, i32 4
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %405

391:                                              ; preds = %386
  %392 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %393 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %391
  %397 = load i32, i32* @VFS, align 4
  %398 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %397, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %399

399:                                              ; preds = %396, %391
  %400 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %401 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %402 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 8
  br label %405

405:                                              ; preds = %399, %386
  %406 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %407 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %405
  %411 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %412 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %410
  %416 = load i32, i32* @VFS, align 4
  %417 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %416, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  br label %418

418:                                              ; preds = %415, %410, %405
  %419 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %420 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %439

423:                                              ; preds = %418
  %424 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %425 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* @GFP_KERNEL, align 4
  %428 = call i32* @kstrdup(i64 %426, i32 %427)
  %429 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %430 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %429, i32 0, i32 1
  store i32* %428, i32** %430, align 8
  %431 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %432 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %431, i32 0, i32 1
  %433 = load i32*, i32** %432, align 8
  %434 = icmp eq i32* %433, null
  br i1 %434, label %435, label %438

435:                                              ; preds = %423
  %436 = load i32, i32* @ENOMEM, align 4
  %437 = sub nsw i32 0, %436
  store i32 %437, i32* %3, align 4
  br label %440

438:                                              ; preds = %423
  br label %439

439:                                              ; preds = %438, %418
  store i32 0, i32* %3, align 4
  br label %440

440:                                              ; preds = %439, %435
  %441 = load i32, i32* %3, align 4
  ret i32 %441
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32* @kstrdup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
