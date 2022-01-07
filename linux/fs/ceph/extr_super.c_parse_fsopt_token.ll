; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_parse_fsopt_token.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_parse_fsopt_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@fsopt_tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Opt_last_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bad option arg (not int) at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"got int token %d val %d\0A\00", align 1
@Opt_last_string = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"got string token %d val %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"got token %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@CEPH_MOUNT_OPT_CLEANRECOVER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"fscache support is disabled\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@CEPH_MAX_WRITE_SIZE = common dso_local global i32 0, align 4
@CEPH_MAX_READ_SIZE = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_DIRSTAT = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_RBYTES = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_NOASYNCREADDIR = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_DCACHE = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_INO32 = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_FSCACHE = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_NOPOOLPERM = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_MOUNTWAIT = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_NOQUOTADF = common dso_local global i32 0, align 4
@CEPH_MOUNT_OPT_NOCOPYFROM = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @parse_fsopt_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fsopt_token(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_mount_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ceph_mount_options*
  store %struct.ceph_mount_options* %14, %struct.ceph_mount_options** %6, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.TYPE_4__, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @fsopt_tokens, align 4
  %21 = call i32 @match_token(i8* %19, i32 %20, %struct.TYPE_4__* %18)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @Opt_last_int, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %33 = call i32 @match_int(%struct.TYPE_4__* %32, i32* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %62

44:                                               ; preds = %27
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @Opt_last_int, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @Opt_last_string, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  br label %61

58:                                               ; preds = %48, %44
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32, i32* %9, align 4
  switch i32 %63, label %422 [
    i32 129, label %64
    i32 150, label %92
    i32 132, label %120
    i32 152, label %164
    i32 128, label %168
    i32 130, label %186
    i32 136, label %204
    i32 158, label %216
    i32 159, label %226
    i32 160, label %236
    i32 133, label %246
    i32 134, label %256
    i32 157, label %271
    i32 154, label %281
    i32 145, label %287
    i32 135, label %294
    i32 140, label %300
    i32 161, label %307
    i32 148, label %314
    i32 155, label %320
    i32 146, label %326
    i32 151, label %333
    i32 143, label %339
    i32 153, label %346
    i32 144, label %350
    i32 138, label %363
    i32 142, label %370
    i32 131, label %376
    i32 139, label %383
    i32 137, label %389
    i32 141, label %396
    i32 156, label %402
    i32 147, label %409
    i32 149, label %415
  ]

64:                                               ; preds = %62
  %65 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %66 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %65, i32 0, i32 13
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 16
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 16
  %78 = sub nsw i32 %74, %77
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kstrndup(i32 %71, i32 %78, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %83 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %82, i32 0, i32 13
  store i32* %81, i32** %83, align 8
  %84 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %85 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %84, i32 0, i32 13
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %64
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

91:                                               ; preds = %64
  br label %425

92:                                               ; preds = %62
  %93 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %94 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %93, i32 0, i32 12
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 16
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 16
  %106 = sub nsw i32 %102, %105
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @kstrndup(i32 %99, i32 %106, i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %111 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %110, i32 0, i32 12
  store i32* %109, i32** %111, align 8
  %112 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %113 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %112, i32 0, i32 12
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %92
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

119:                                              ; preds = %92
  br label %425

120:                                              ; preds = %62
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 16
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 16
  %130 = sub nsw i32 %126, %129
  %131 = call i32 @strncmp(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %120
  %134 = load i32, i32* @CEPH_MOUNT_OPT_CLEANRECOVER, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %137 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %163

140:                                              ; preds = %120
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 16
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 16
  %150 = sub nsw i32 %146, %149
  %151 = call i32 @strncmp(i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %140
  %154 = load i32, i32* @CEPH_MOUNT_OPT_CLEANRECOVER, align 4
  %155 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %156 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %162

159:                                              ; preds = %140
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %133
  br label %425

164:                                              ; preds = %62
  %165 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

168:                                              ; preds = %62
  %169 = load i32, i32* %10, align 4
  %170 = load i64, i64* @PAGE_SIZE, align 8
  %171 = trunc i64 %170 to i32
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @CEPH_MAX_WRITE_SIZE, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173, %168
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

180:                                              ; preds = %173
  %181 = load i32, i32* %10, align 4
  %182 = load i64, i64* @PAGE_SIZE, align 8
  %183 = call i8* @ALIGN(i32 %181, i64 %182)
  %184 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %185 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %184, i32 0, i32 11
  store i8* %183, i8** %185, align 8
  br label %425

186:                                              ; preds = %62
  %187 = load i32, i32* %10, align 4
  %188 = load i64, i64* @PAGE_SIZE, align 8
  %189 = trunc i64 %188 to i32
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %195, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @CEPH_MAX_READ_SIZE, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191, %186
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

198:                                              ; preds = %191
  %199 = load i32, i32* %10, align 4
  %200 = load i64, i64* @PAGE_SIZE, align 8
  %201 = call i8* @ALIGN(i32 %199, i64 %200)
  %202 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %203 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %202, i32 0, i32 10
  store i8* %201, i8** %203, align 8
  br label %425

204:                                              ; preds = %62
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

210:                                              ; preds = %204
  %211 = load i32, i32* %10, align 4
  %212 = load i64, i64* @PAGE_SIZE, align 8
  %213 = call i8* @ALIGN(i32 %211, i64 %212)
  %214 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %215 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %214, i32 0, i32 9
  store i8* %213, i8** %215, align 8
  br label %425

216:                                              ; preds = %62
  %217 = load i32, i32* %10, align 4
  %218 = icmp slt i32 %217, 1
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

222:                                              ; preds = %216
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %225 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %425

226:                                              ; preds = %62
  %227 = load i32, i32* %10, align 4
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

232:                                              ; preds = %226
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %235 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  br label %425

236:                                              ; preds = %62
  %237 = load i32, i32* %10, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

242:                                              ; preds = %236
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %245 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  br label %425

246:                                              ; preds = %62
  %247 = load i32, i32* %10, align 4
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

252:                                              ; preds = %246
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %255 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  br label %425

256:                                              ; preds = %62
  %257 = load i32, i32* %10, align 4
  %258 = load i64, i64* @PAGE_SIZE, align 8
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %256
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* @EINVAL, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

267:                                              ; preds = %261, %256
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %270 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 8
  br label %425

271:                                              ; preds = %62
  %272 = load i32, i32* %10, align 4
  %273 = icmp slt i32 %272, 1024
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

277:                                              ; preds = %271
  %278 = load i32, i32* %10, align 4
  %279 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %280 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %279, i32 0, i32 5
  store i32 %278, i32* %280, align 4
  br label %425

281:                                              ; preds = %62
  %282 = load i32, i32* @CEPH_MOUNT_OPT_DIRSTAT, align 4
  %283 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %284 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %425

287:                                              ; preds = %62
  %288 = load i32, i32* @CEPH_MOUNT_OPT_DIRSTAT, align 4
  %289 = xor i32 %288, -1
  %290 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %291 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, %289
  store i32 %293, i32* %291, align 4
  br label %425

294:                                              ; preds = %62
  %295 = load i32, i32* @CEPH_MOUNT_OPT_RBYTES, align 4
  %296 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %297 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %425

300:                                              ; preds = %62
  %301 = load i32, i32* @CEPH_MOUNT_OPT_RBYTES, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %304 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %303, i32 0, i32 7
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, %302
  store i32 %306, i32* %304, align 4
  br label %425

307:                                              ; preds = %62
  %308 = load i32, i32* @CEPH_MOUNT_OPT_NOASYNCREADDIR, align 4
  %309 = xor i32 %308, -1
  %310 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %311 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, %309
  store i32 %313, i32* %311, align 4
  br label %425

314:                                              ; preds = %62
  %315 = load i32, i32* @CEPH_MOUNT_OPT_NOASYNCREADDIR, align 4
  %316 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %317 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 4
  br label %425

320:                                              ; preds = %62
  %321 = load i32, i32* @CEPH_MOUNT_OPT_DCACHE, align 4
  %322 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %323 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %322, i32 0, i32 7
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  br label %425

326:                                              ; preds = %62
  %327 = load i32, i32* @CEPH_MOUNT_OPT_DCACHE, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %330 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, %328
  store i32 %332, i32* %330, align 4
  br label %425

333:                                              ; preds = %62
  %334 = load i32, i32* @CEPH_MOUNT_OPT_INO32, align 4
  %335 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %336 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %335, i32 0, i32 7
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  br label %425

339:                                              ; preds = %62
  %340 = load i32, i32* @CEPH_MOUNT_OPT_INO32, align 4
  %341 = xor i32 %340, -1
  %342 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %343 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %342, i32 0, i32 7
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %344, %341
  store i32 %345, i32* %343, align 4
  br label %425

346:                                              ; preds = %62
  %347 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %348 = load i32, i32* @EINVAL, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

350:                                              ; preds = %62
  %351 = load i32, i32* @CEPH_MOUNT_OPT_FSCACHE, align 4
  %352 = xor i32 %351, -1
  %353 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %354 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, %352
  store i32 %356, i32* %354, align 4
  %357 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %358 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %357, i32 0, i32 8
  %359 = load i32*, i32** %358, align 8
  %360 = call i32 @kfree(i32* %359)
  %361 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %362 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %361, i32 0, i32 8
  store i32* null, i32** %362, align 8
  br label %425

363:                                              ; preds = %62
  %364 = load i32, i32* @CEPH_MOUNT_OPT_NOPOOLPERM, align 4
  %365 = xor i32 %364, -1
  %366 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %367 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, %365
  store i32 %369, i32* %367, align 4
  br label %425

370:                                              ; preds = %62
  %371 = load i32, i32* @CEPH_MOUNT_OPT_NOPOOLPERM, align 4
  %372 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %373 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %372, i32 0, i32 7
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 4
  br label %425

376:                                              ; preds = %62
  %377 = load i32, i32* @CEPH_MOUNT_OPT_MOUNTWAIT, align 4
  %378 = xor i32 %377, -1
  %379 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %380 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %379, i32 0, i32 7
  %381 = load i32, i32* %380, align 4
  %382 = and i32 %381, %378
  store i32 %382, i32* %380, align 4
  br label %425

383:                                              ; preds = %62
  %384 = load i32, i32* @CEPH_MOUNT_OPT_MOUNTWAIT, align 4
  %385 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %386 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %384
  store i32 %388, i32* %386, align 4
  br label %425

389:                                              ; preds = %62
  %390 = load i32, i32* @CEPH_MOUNT_OPT_NOQUOTADF, align 4
  %391 = xor i32 %390, -1
  %392 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %393 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %392, i32 0, i32 7
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, %391
  store i32 %395, i32* %393, align 4
  br label %425

396:                                              ; preds = %62
  %397 = load i32, i32* @CEPH_MOUNT_OPT_NOQUOTADF, align 4
  %398 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %399 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 4
  %401 = or i32 %400, %397
  store i32 %401, i32* %399, align 4
  br label %425

402:                                              ; preds = %62
  %403 = load i32, i32* @CEPH_MOUNT_OPT_NOCOPYFROM, align 4
  %404 = xor i32 %403, -1
  %405 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %406 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %405, i32 0, i32 7
  %407 = load i32, i32* %406, align 4
  %408 = and i32 %407, %404
  store i32 %408, i32* %406, align 4
  br label %425

409:                                              ; preds = %62
  %410 = load i32, i32* @CEPH_MOUNT_OPT_NOCOPYFROM, align 4
  %411 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %412 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %411, i32 0, i32 7
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 4
  br label %425

415:                                              ; preds = %62
  %416 = load i32, i32* @SB_POSIXACL, align 4
  %417 = xor i32 %416, -1
  %418 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %419 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = and i32 %420, %417
  store i32 %421, i32* %419, align 8
  br label %425

422:                                              ; preds = %62
  %423 = load i32, i32* %9, align 4
  %424 = call i32 @BUG_ON(i32 %423)
  br label %425

425:                                              ; preds = %422, %415, %409, %402, %396, %389, %383, %376, %370, %363, %350, %339, %333, %326, %320, %314, %307, %300, %294, %287, %281, %277, %267, %252, %242, %232, %222, %210, %198, %180, %163, %119, %91
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %426

426:                                              ; preds = %425, %346, %274, %264, %249, %239, %229, %219, %207, %195, %177, %164, %159, %116, %88, %36, %24
  %427 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %427)
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @match_int(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @dout(i8*, i32, ...) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i8* @kstrndup(i32, i32, i32) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #2

declare dso_local i8* @ALIGN(i32, i64) #2

declare dso_local i32 @BUG_ON(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
