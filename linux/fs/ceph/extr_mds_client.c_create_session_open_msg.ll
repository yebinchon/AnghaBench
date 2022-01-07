; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_create_session_open_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_create_session_open_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.ceph_mds_client = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ceph_mount_options*, %struct.TYPE_6__* }
%struct.ceph_mount_options = type { i32 }
%struct.TYPE_6__ = type { %struct.ceph_options* }
%struct.ceph_options = type { i32 }
%struct.ceph_mds_session_head = type { i32, i8* }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"kernel_version\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"entity_id\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CEPH_MSG_CLIENT_SESSION = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"create_session_msg ENOMEM creating msg\0A\00", align 1
@CEPH_SESSION_REQUEST_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_msg* (%struct.ceph_mds_client*, i32)* @create_session_open_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_msg* @create_session_open_msg(%struct.ceph_mds_client* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca %struct.ceph_mds_session_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ceph_options*, align 8
  %12 = alloca %struct.ceph_mount_options*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [5 x [2 x i8*]], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.ceph_options*, %struct.ceph_options** %23, align 8
  store %struct.ceph_options* %24, %struct.ceph_options** %11, align 8
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %28, align 8
  store %struct.ceph_mount_options* %29, %struct.ceph_mount_options** %12, align 8
  %30 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 0
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %32, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 1
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %36, i64 0, i64 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = call %struct.TYPE_10__* (...) @init_utsname()
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %38, align 8
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %36, i64 1
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %42, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load %struct.ceph_options*, %struct.ceph_options** %11, align 8
  %46 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = sext i32 %47 to i64
  %51 = inttoptr i64 %50 to i8*
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i8* [ %51, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %52 ]
  store i8* %54, i8** %44, align 8
  %55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %42, i64 1
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %55, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %56, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %59 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = sext i32 %60 to i64
  %64 = inttoptr i64 %63 to i8*
  br label %66

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i8* [ %64, %62 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %65 ]
  store i8* %67, i8** %57, align 8
  %68 = getelementptr inbounds [2 x i8*], [2 x i8*]* %55, i64 1
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %68, i64 0, i64 0
  store i8* null, i8** %69, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* null, i8** %70, align 8
  store i32 4, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %97, %66
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %73
  %75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %74, i64 0, i64 0
  %76 = load i8*, i8** %75, align 16
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %80
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %81, i64 0, i64 0
  %83 = load i8*, i8** %82, align 16
  %84 = call i32 @strlen(i8* %83)
  %85 = add nsw i32 8, %84
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %87
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %88, i64 0, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = add nsw i32 %85, %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %78
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %71

100:                                              ; preds = %71
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 12
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @CEPH_MSG_CLIENT_SESSION, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 16, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @GFP_NOFS, align 4
  %109 = call %struct.ceph_msg* @ceph_msg_new(i32 %103, i32 %107, i32 %108, i32 0)
  store %struct.ceph_msg* %109, %struct.ceph_msg** %6, align 8
  %110 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %111 = icmp ne %struct.ceph_msg* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %100
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store %struct.ceph_msg* null, %struct.ceph_msg** %3, align 8
  br label %224

114:                                              ; preds = %100
  %115 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %116 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %13, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %121 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr i8, i8* %119, i64 %124
  store i8* %125, i8** %14, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = bitcast i8* %126 to %struct.ceph_mds_session_head*
  store %struct.ceph_mds_session_head* %127, %struct.ceph_mds_session_head** %7, align 8
  %128 = load i32, i32* @CEPH_SESSION_REQUEST_OPEN, align 4
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.ceph_mds_session_head*, %struct.ceph_mds_session_head** %7, align 8
  %131 = getelementptr inbounds %struct.ceph_mds_session_head, %struct.ceph_mds_session_head* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @cpu_to_le64(i32 %132)
  %134 = load %struct.ceph_mds_session_head*, %struct.ceph_mds_session_head** %7, align 8
  %135 = getelementptr inbounds %struct.ceph_mds_session_head, %struct.ceph_mds_session_head* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = call i8* @cpu_to_le16(i32 3)
  %137 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %138 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  store i8* %136, i8** %139, align 8
  %140 = call i8* @cpu_to_le16(i32 1)
  %141 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %142 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i8* %140, i8** %143, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr i8, i8* %144, i64 16
  store i8* %145, i8** %13, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = call i32 @ceph_encode_32(i8** %13, i64 %147)
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %197, %114
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %151
  %153 = getelementptr inbounds [2 x i8*], [2 x i8*]* %152, i64 0, i64 0
  %154 = load i8*, i8** %153, align 16
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %200

156:                                              ; preds = %149
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %158
  %160 = getelementptr inbounds [2 x i8*], [2 x i8*]* %159, i64 0, i64 0
  %161 = load i8*, i8** %160, align 16
  %162 = call i32 @strlen(i8* %161)
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %16, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %165
  %167 = getelementptr inbounds [2 x i8*], [2 x i8*]* %166, i64 0, i64 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strlen(i8* %168)
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %17, align 8
  %171 = load i64, i64* %16, align 8
  %172 = call i32 @ceph_encode_32(i8** %13, i64 %171)
  %173 = load i8*, i8** %13, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %175
  %177 = getelementptr inbounds [2 x i8*], [2 x i8*]* %176, i64 0, i64 0
  %178 = load i8*, i8** %177, align 16
  %179 = load i64, i64* %16, align 8
  %180 = call i32 @memcpy(i8* %173, i8* %178, i64 %179)
  %181 = load i64, i64* %16, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = getelementptr i8, i8* %182, i64 %181
  store i8* %183, i8** %13, align 8
  %184 = load i64, i64* %17, align 8
  %185 = call i32 @ceph_encode_32(i8** %13, i64 %184)
  %186 = load i8*, i8** %13, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %15, i64 0, i64 %188
  %190 = getelementptr inbounds [2 x i8*], [2 x i8*]* %189, i64 0, i64 1
  %191 = load i8*, i8** %190, align 8
  %192 = load i64, i64* %17, align 8
  %193 = call i32 @memcpy(i8* %186, i8* %191, i64 %192)
  %194 = load i64, i64* %17, align 8
  %195 = load i8*, i8** %13, align 8
  %196 = getelementptr i8, i8* %195, i64 %194
  store i8* %196, i8** %13, align 8
  br label %197

197:                                              ; preds = %156
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %149

200:                                              ; preds = %149
  %201 = load i8*, i8** %14, align 8
  %202 = call i32 @encode_supported_features(i8** %13, i8* %201)
  %203 = load i8*, i8** %13, align 8
  %204 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %205 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = ptrtoint i8* %203 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  %212 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %213 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  store i32 %211, i32* %214, align 8
  %215 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %216 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i8* @cpu_to_le32(i32 %218)
  %220 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %221 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i8* %219, i8** %222, align 8
  %223 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  store %struct.ceph_msg* %223, %struct.ceph_msg** %3, align 8
  br label %224

224:                                              ; preds = %200, %112
  %225 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  ret %struct.ceph_msg* %225
}

declare dso_local %struct.TYPE_10__* @init_utsname(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.ceph_msg* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ceph_encode_32(i8**, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @encode_supported_features(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
