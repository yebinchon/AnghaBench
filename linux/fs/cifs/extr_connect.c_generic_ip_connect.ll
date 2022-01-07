; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_generic_ip_connect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_generic_ip_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.socket*, i64, i64, i64, %struct.TYPE_4__ }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i64 }
%struct.sockaddr_in = type { i64 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error %d creating socket\0A\00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Socket created\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"set TCP_NODELAY socket option error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"sndbuf %d rcvbuf %d rcvtimeo 0x%lx\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error %d connecting to server\0A\00", align 1
@RFC1001_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @generic_ip_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_ip_connect(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %8, align 8
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 4
  %16 = bitcast %struct.TYPE_4__* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %9, align 8
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %18 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in6*
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  store i32 8, i32* %6, align 4
  %28 = load i32, i32* @AF_INET6, align 4
  store i32 %28, i32* %7, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.sockaddr_in*
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  store i32 8, i32* %6, align 4
  %34 = load i32, i32* @AF_INET, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.socket*, %struct.socket** %8, align 8
  %37 = icmp eq %struct.socket* %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %40 = call i32 @cifs_net_ns(%struct.TCP_Server_Info* %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SOCK_STREAM, align 4
  %43 = load i32, i32* @IPPROTO_TCP, align 4
  %44 = call i32 @__sock_create(i32 %40, i32 %41, i32 %42, i32 %43, %struct.socket** %8, i32 1)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @VFS, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @cifs_server_dbg(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %52 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %51, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %52, align 8
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %210

54:                                               ; preds = %38
  %55 = load i32, i32* @FYI, align 4
  %56 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.socket*, %struct.socket** %8, align 8
  %58 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %59 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %58, i32 0, i32 0
  store %struct.socket* %57, %struct.socket** %59, align 8
  %60 = load i32, i32* @GFP_NOFS, align 4
  %61 = load %struct.socket*, %struct.socket** %8, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @AF_INET6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.socket*, %struct.socket** %8, align 8
  %70 = call i32 @cifs_reclassify_socket6(%struct.socket* %69)
  br label %74

71:                                               ; preds = %54
  %72 = load %struct.socket*, %struct.socket** %8, align 8
  %73 = call i32 @cifs_reclassify_socket4(%struct.socket* %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %35
  %76 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %77 = call i32 @bind_socket(%struct.TCP_Server_Info* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %210

82:                                               ; preds = %75
  %83 = load i32, i32* @HZ, align 4
  %84 = mul nsw i32 7, %83
  %85 = load %struct.socket*, %struct.socket** %8, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @HZ, align 4
  %90 = mul nsw i32 5, %89
  %91 = load %struct.socket*, %struct.socket** %8, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %96 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %82
  %100 = load %struct.socket*, %struct.socket** %8, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 204800
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.socket*, %struct.socket** %8, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32 204800, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %99
  %112 = load %struct.socket*, %struct.socket** %8, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 143360
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.socket*, %struct.socket** %8, align 8
  %120 = getelementptr inbounds %struct.socket, %struct.socket* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store i32 143360, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %111
  br label %124

124:                                              ; preds = %123, %82
  %125 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %126 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  store i32 1, i32* %10, align 4
  %130 = load %struct.socket*, %struct.socket** %8, align 8
  %131 = load i32, i32* @SOL_TCP, align 4
  %132 = load i32, i32* @TCP_NODELAY, align 4
  %133 = bitcast i32* %10 to i8*
  %134 = call i32 @kernel_setsockopt(%struct.socket* %130, i32 %131, i32 %132, i8* %133, i32 4)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32, i32* @FYI, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %137, %129
  br label %142

142:                                              ; preds = %141, %124
  %143 = load i32, i32* @FYI, align 4
  %144 = load %struct.socket*, %struct.socket** %8, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.socket*, %struct.socket** %8, align 8
  %150 = getelementptr inbounds %struct.socket, %struct.socket* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.socket*, %struct.socket** %8, align 8
  %155 = getelementptr inbounds %struct.socket, %struct.socket* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %153, i32 %158)
  %160 = load %struct.socket*, %struct.socket** %8, align 8
  %161 = getelementptr inbounds %struct.socket, %struct.socket* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %163, align 8
  %165 = load %struct.socket*, %struct.socket** %8, align 8
  %166 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %169 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %142
  %173 = load i32, i32* @O_NONBLOCK, align 4
  br label %175

174:                                              ; preds = %142
  br label %175

175:                                              ; preds = %174, %172
  %176 = phi i32 [ %173, %172 ], [ 0, %174 ]
  %177 = call i32 %164(%struct.socket* %165, %struct.sockaddr* %166, i32 %167, i32 %176)
  store i32 %177, i32* %4, align 4
  %178 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %179 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @EINPROGRESS, align 4
  %185 = sub nsw i32 0, %184
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %182, %175
  %189 = load i32, i32* %4, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load i32, i32* @FYI, align 4
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  %195 = load %struct.socket*, %struct.socket** %8, align 8
  %196 = call i32 @sock_release(%struct.socket* %195)
  %197 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %198 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %197, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %198, align 8
  %199 = load i32, i32* %4, align 4
  store i32 %199, i32* %2, align 4
  br label %210

200:                                              ; preds = %188
  %201 = load i64, i64* %5, align 8
  %202 = load i32, i32* @RFC1001_PORT, align 4
  %203 = call i64 @htons(i32 %202)
  %204 = icmp eq i64 %201, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %207 = call i32 @ip_rfc1001_connect(%struct.TCP_Server_Info* %206)
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32, i32* %4, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %191, %80, %47
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @__sock_create(i32, i32, i32, i32, %struct.socket**, i32) #1

declare dso_local i32 @cifs_net_ns(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @cifs_reclassify_socket6(%struct.socket*) #1

declare dso_local i32 @cifs_reclassify_socket4(%struct.socket*) #1

declare dso_local i32 @bind_socket(%struct.TCP_Server_Info*) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ip_rfc1001_connect(%struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
