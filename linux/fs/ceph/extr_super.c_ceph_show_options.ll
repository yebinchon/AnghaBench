; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.dentry = type { i32 }
%struct.ceph_fs_client = type { i32, %struct.ceph_mount_options* }
%struct.ceph_mount_options = type { i32, i8*, i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }

@CEPH_MOUNT_OPT_DIRSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c",dirstat\00", align 1
@CEPH_MOUNT_OPT_RBYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",rbytes\00", align 1
@CEPH_MOUNT_OPT_NOASYNCREADDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c",noasyncreaddir\00", align 1
@CEPH_MOUNT_OPT_DCACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c",nodcache\00", align 1
@CEPH_MOUNT_OPT_INO32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c",ino32\00", align 1
@CEPH_MOUNT_OPT_FSCACHE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"fsc\00", align 1
@CEPH_MOUNT_OPT_NOPOOLPERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c",nopoolperm\00", align 1
@CEPH_MOUNT_OPT_NOQUOTADF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c",noquotadf\00", align 1
@CEPH_MOUNT_OPT_NOCOPYFROM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c",copyfrom\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"mds_namespace\00", align 1
@CEPH_MOUNT_OPT_CLEANRECOVER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"recover_session\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@CEPH_MAX_WRITE_SIZE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c",wsize=%d\00", align 1
@CEPH_MAX_READ_SIZE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c",rsize=%d\00", align 1
@CEPH_RASIZE_DEFAULT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c",rasize=%d\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c",write_congestion_kb=%d\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c",caps_max=%d\00", align 1
@CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c",caps_wanted_delay_min=%d\00", align 1
@CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c",caps_wanted_delay_max=%d\00", align 1
@CEPH_MAX_READDIR_DEFAULT = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c",readdir_max_entries=%d\00", align 1
@CEPH_MAX_READDIR_BYTES_DEFAULT = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c",readdir_max_bytes=%d\00", align 1
@CEPH_SNAPDIRNAME_DEFAULT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"snapdirname\00", align 1
@SB_POSIXACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @ceph_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ceph_fs_client*, align 8
  %7 = alloca %struct.ceph_mount_options*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %12)
  store %struct.ceph_fs_client* %13, %struct.ceph_fs_client** %6, align 8
  %14 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %15 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %14, i32 0, i32 1
  %16 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %15, align 8
  store %struct.ceph_mount_options* %16, %struct.ceph_mount_options** %7, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = call i32 @seq_putc(%struct.seq_file* %17, i8 signext 44)
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %24 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ceph_print_client_options(%struct.seq_file* %22, i32 %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %277

31:                                               ; preds = %2
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %44 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CEPH_MOUNT_OPT_DIRSTAT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = call i32 @seq_puts(%struct.seq_file* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %54 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CEPH_MOUNT_OPT_RBYTES, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = call i32 @seq_puts(%struct.seq_file* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %64 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CEPH_MOUNT_OPT_NOASYNCREADDIR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %74 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CEPH_MOUNT_OPT_DCACHE, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %84 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CEPH_MOUNT_OPT_INO32, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = call i32 @seq_puts(%struct.seq_file* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %82
  %93 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %94 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CEPH_MOUNT_OPT_FSCACHE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %101 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %102 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @seq_show_option(%struct.seq_file* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %107 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CEPH_MOUNT_OPT_NOPOOLPERM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %114 = call i32 @seq_puts(%struct.seq_file* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %117 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CEPH_MOUNT_OPT_NOQUOTADF, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %124 = call i32 @seq_puts(%struct.seq_file* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %115
  %126 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %127 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CEPH_MOUNT_OPT_NOCOPYFROM, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %134 = call i32 @seq_puts(%struct.seq_file* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %137 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %142 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %143 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @seq_show_option(%struct.seq_file* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %140, %135
  %147 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %148 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @CEPH_MOUNT_OPT_CLEANRECOVER, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %155 = call i32 @seq_show_option(%struct.seq_file* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %146
  %157 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %158 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CEPH_MAX_WRITE_SIZE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %164 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %165 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %162, %156
  %169 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %170 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CEPH_MAX_READ_SIZE, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %176 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %177 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @seq_printf(%struct.seq_file* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 %178)
  br label %180

180:                                              ; preds = %174, %168
  %181 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %182 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @CEPH_RASIZE_DEFAULT, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %188 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %189 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @seq_printf(%struct.seq_file* %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %190)
  br label %192

192:                                              ; preds = %186, %180
  %193 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %194 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = call i64 (...) @default_congestion_kb()
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %200 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %201 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @seq_printf(%struct.seq_file* %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i64 %202)
  br label %204

204:                                              ; preds = %198, %192
  %205 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %206 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %211 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %212 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %211, i32 0, i32 8
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @seq_printf(%struct.seq_file* %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 %213)
  br label %215

215:                                              ; preds = %209, %204
  %216 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %217 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %223 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %224 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @seq_printf(%struct.seq_file* %222, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i64 %225)
  br label %227

227:                                              ; preds = %221, %215
  %228 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %229 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %235 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %236 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %235, i32 0, i32 10
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @seq_printf(%struct.seq_file* %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i64 %237)
  br label %239

239:                                              ; preds = %233, %227
  %240 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %241 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %240, i32 0, i32 11
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @CEPH_MAX_READDIR_DEFAULT, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %239
  %246 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %247 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %248 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %247, i32 0, i32 11
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @seq_printf(%struct.seq_file* %246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i64 %249)
  br label %251

251:                                              ; preds = %245, %239
  %252 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %253 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %252, i32 0, i32 12
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @CEPH_MAX_READDIR_BYTES_DEFAULT, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %251
  %258 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %259 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %260 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %259, i32 0, i32 12
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @seq_printf(%struct.seq_file* %258, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i64 %261)
  br label %263

263:                                              ; preds = %257, %251
  %264 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %265 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %264, i32 0, i32 13
  %266 = load i8*, i8** %265, align 8
  %267 = load i32, i32* @CEPH_SNAPDIRNAME_DEFAULT, align 4
  %268 = call i64 @strcmp(i8* %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %263
  %271 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %272 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %273 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %272, i32 0, i32 13
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @seq_show_option(%struct.seq_file* %271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* %274)
  br label %276

276:                                              ; preds = %270, %263
  store i32 0, i32* %3, align 4
  br label %277

277:                                              ; preds = %276, %29
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @ceph_print_client_options(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_show_option(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @default_congestion_kb(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
