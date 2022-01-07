; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_get_smb_ses.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_get_smb_ses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i32, %struct.TCP_Server_Info*, i64, i32 }
%struct.TCP_Server_Info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.smb_vol = type { i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Existing smb sess found (status=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Session needs reconnect\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Existing smb sess not found\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@cifs_tcp_ses_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_ses* @cifs_get_smb_ses(%struct.TCP_Server_Info* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca %struct.cifs_ses*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 1
  %15 = bitcast %struct.TYPE_2__* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %9, align 8
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %17 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %16, i32 0, i32 1
  %18 = bitcast %struct.TYPE_2__* %17 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %18, %struct.sockaddr_in6** %10, align 8
  %19 = call i32 (...) @get_xid()
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %21 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %22 = call %struct.cifs_ses* @cifs_find_smb_ses(%struct.TCP_Server_Info* %20, %struct.smb_vol* %21)
  store %struct.cifs_ses* %22, %struct.cifs_ses** %8, align 8
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %24 = icmp ne %struct.cifs_ses* %23, null
  br i1 %24, label %25, label %85

25:                                               ; preds = %2
  %26 = load i32, i32* @FYI, align 4
  %27 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %28 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %32 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %36 = call i32 @cifs_negotiate_protocol(i32 %34, %struct.cifs_ses* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %25
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %41 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %44 = call i32 @cifs_put_smb_ses(%struct.cifs_ses* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @free_xid(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.cifs_ses* @ERR_PTR(i32 %47)
  store %struct.cifs_ses* %48, %struct.cifs_ses** %3, align 8
  br label %248

49:                                               ; preds = %25
  %50 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %51 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load i32, i32* @FYI, align 4
  %56 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %59 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %60 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cifs_setup_session(i32 %57, %struct.cifs_ses* %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %67 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %70 = call i32 @cifs_put_smb_ses(%struct.cifs_ses* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @free_xid(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.cifs_ses* @ERR_PTR(i32 %73)
  store %struct.cifs_ses* %74, %struct.cifs_ses** %3, align 8
  br label %248

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %49
  %77 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %78 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %81 = call i32 @cifs_put_tcp_session(%struct.TCP_Server_Info* %80, i32 0)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @free_xid(i32 %82)
  %84 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  store %struct.cifs_ses* %84, %struct.cifs_ses** %3, align 8
  br label %248

85:                                               ; preds = %2
  %86 = load i32, i32* @FYI, align 4
  %87 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %88 = call %struct.cifs_ses* (...) @sesInfoAlloc()
  store %struct.cifs_ses* %88, %struct.cifs_ses** %8, align 8
  %89 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %90 = icmp eq %struct.cifs_ses* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %241

92:                                               ; preds = %85
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %94 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %95 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %94, i32 0, i32 11
  store %struct.TCP_Server_Info* %93, %struct.TCP_Server_Info** %95, align 8
  %96 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %97 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AF_INET6, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %104 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %106, i32 0, i32 0
  %108 = call i32 @sprintf(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %107)
  br label %116

109:                                              ; preds = %92
  %110 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %111 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %114 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %113, i32 0, i32 0
  %115 = call i32 @sprintf(i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %114)
  br label %116

116:                                              ; preds = %109, %102
  %117 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %118 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %123 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %122, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i8* @kstrdup(i64 %124, i32 %125)
  %127 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %128 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %127, i32 0, i32 9
  store i8* %126, i8** %128, align 8
  %129 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %130 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %129, i32 0, i32 9
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %121
  br label %241

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %116
  %136 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %137 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %142 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i8* @kstrdup(i64 %143, i32 %144)
  %146 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %147 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %146, i32 0, i32 8
  store i8* %145, i8** %147, align 8
  %148 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %149 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %148, i32 0, i32 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %140
  br label %241

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %135
  %155 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %156 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %154
  %160 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %161 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call i8* @kstrdup(i64 %162, i32 %163)
  %165 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %166 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %168 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %167, i32 0, i32 7
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %159
  br label %241

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %154
  %174 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %175 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %180 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %183 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %182, i32 0, i32 6
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %178, %173
  %185 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %186 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %189 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 4
  %190 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %191 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %194 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %196 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %199 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %201 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %204 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %206 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %205, i32 0, i32 1
  %207 = call i32 @mutex_lock(i32* %206)
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %210 = call i32 @cifs_negotiate_protocol(i32 %208, %struct.cifs_ses* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %184
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %216 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %217 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @cifs_setup_session(i32 %214, %struct.cifs_ses* %215, i32 %218)
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %213, %184
  %221 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %222 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %221, i32 0, i32 1
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %241

227:                                              ; preds = %220
  %228 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %229 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %230 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %229, i32 0, i32 0
  %231 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %232 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %231, i32 0, i32 0
  %233 = call i32 @list_add(i32* %230, i32* %232)
  %234 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @free_xid(i32 %235)
  %237 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %238 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %239 = call i32 @cifs_setup_ipc(%struct.cifs_ses* %237, %struct.smb_vol* %238)
  %240 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  store %struct.cifs_ses* %240, %struct.cifs_ses** %3, align 8
  br label %248

241:                                              ; preds = %226, %171, %152, %133, %91
  %242 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %243 = call i32 @sesInfoFree(%struct.cifs_ses* %242)
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @free_xid(i32 %244)
  %246 = load i32, i32* %6, align 4
  %247 = call %struct.cifs_ses* @ERR_PTR(i32 %246)
  store %struct.cifs_ses* %247, %struct.cifs_ses** %3, align 8
  br label %248

248:                                              ; preds = %241, %227, %76, %65, %39
  %249 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  ret %struct.cifs_ses* %249
}

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.cifs_ses* @cifs_find_smb_ses(%struct.TCP_Server_Info*, %struct.smb_vol*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_negotiate_protocol(i32, %struct.cifs_ses*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.cifs_ses*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local %struct.cifs_ses* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_setup_session(i32, %struct.cifs_ses*, i32) #1

declare dso_local i32 @cifs_put_tcp_session(%struct.TCP_Server_Info*, i32) #1

declare dso_local %struct.cifs_ses* @sesInfoAlloc(...) #1

declare dso_local i32 @sprintf(i32, i8*, i32*) #1

declare dso_local i8* @kstrdup(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_setup_ipc(%struct.cifs_ses*, %struct.smb_vol*) #1

declare dso_local i32 @sesInfoFree(%struct.cifs_ses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
