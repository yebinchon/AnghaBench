; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.pcmcia_socket* }
%struct.pcmcia_socket = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 (%struct.pcmcia_socket*, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.resource = type { i32, i32, i32, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [23 x i8] c"request_window %pR %d\0A\00", align 1
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No card present\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SS_CAP_MEM_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid map size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SS_CAP_STATIC_MAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid base address\0A\00", align 1
@MAX_WIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"all windows are used already\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"allocating mem region failed\0A\00", align 1
@WIN_FLAGS_MAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to set memory mapping\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WIN_FLAGS_REQ = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"request_window results in %pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_request_window(%struct.pcmcia_device* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 2
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %13, align 8
  store %struct.pcmcia_socket* %14, %struct.pcmcia_socket** %8, align 8
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 0
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.resource* %17, i32 %18)
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SOCKET_PRESENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %293

32:                                               ; preds = %3
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %39 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SS_CAP_MEM_ALIGN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %56 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  store i32 %59, i32* %10, align 4
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %64 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %62, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %293

75:                                               ; preds = %58
  %76 = load %struct.resource*, %struct.resource** %6, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %82 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.resource*, %struct.resource** %6, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87, %80
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %293

101:                                              ; preds = %87
  %102 = load %struct.resource*, %struct.resource** %6, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %109 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %108, i32 0, i32 3
  %110 = call i32 @mutex_lock(i32* %109)
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %125, %107
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @MAX_WIN, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %117 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @SOCKET_WIN_REQ(i32 %119)
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  br label %128

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %111

128:                                              ; preds = %123, %111
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @MAX_WIN, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %134 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %133, i32 0, i32 0
  %135 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %137 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %136, i32 0, i32 3
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %293

141:                                              ; preds = %128
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %143 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %142, i32 0, i32 5
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %146
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %9, align 8
  %148 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %149 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %180, label %154

154:                                              ; preds = %141
  %155 = load %struct.resource*, %struct.resource** %6, align 8
  %156 = getelementptr inbounds %struct.resource, %struct.resource* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.resource*, %struct.resource** %6, align 8
  %159 = getelementptr inbounds %struct.resource, %struct.resource* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %163 = call %struct.TYPE_7__* @pcmcia_find_mem_region(i32 %157, i32 %160, i32 %161, i32 0, %struct.pcmcia_socket* %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 4
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %165, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = icmp ne %struct.TYPE_7__* %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %154
  %171 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %172 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %171, i32 0, i32 0
  %173 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %174 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %175 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %174, i32 0, i32 3
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  br label %293

179:                                              ; preds = %154
  br label %180

180:                                              ; preds = %179, %141
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @CLIENT_WIN_REQ(i32 %181)
  %183 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %184 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.resource*, %struct.resource** %6, align 8
  %192 = getelementptr inbounds %struct.resource, %struct.resource* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @WIN_FLAGS_MAP, align 4
  %195 = and i32 %193, %194
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 5
  store i64 0, i64* %202, align 8
  %203 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %204 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %203, i32 0, i32 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_6__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_6__*)** %206, align 8
  %208 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %210 = call i64 %207(%struct.pcmcia_socket* %208, %struct.TYPE_6__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %180
  %213 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %214 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %213, i32 0, i32 0
  %215 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %216 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %217 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %216, i32 0, i32 3
  %218 = call i32 @mutex_unlock(i32* %217)
  %219 = load i32, i32* @EIO, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %293

221:                                              ; preds = %180
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @SOCKET_WIN_REQ(i32 %222)
  %224 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %225 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %229 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %221
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.resource*, %struct.resource** %6, align 8
  %239 = getelementptr inbounds %struct.resource, %struct.resource* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  br label %248

240:                                              ; preds = %221
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.resource*, %struct.resource** %6, align 8
  %247 = getelementptr inbounds %struct.resource, %struct.resource* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %240, %234
  %249 = load %struct.resource*, %struct.resource** %6, align 8
  %250 = getelementptr inbounds %struct.resource, %struct.resource* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %251, 1
  %253 = load %struct.resource*, %struct.resource** %6, align 8
  %254 = getelementptr inbounds %struct.resource, %struct.resource* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load i32, i32* @WIN_FLAGS_REQ, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.resource*, %struct.resource** %6, align 8
  %260 = getelementptr inbounds %struct.resource, %struct.resource* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = shl i32 %265, 2
  %267 = load i32, i32* @IORESOURCE_MEM, align 4
  %268 = or i32 %266, %267
  %269 = load %struct.resource*, %struct.resource** %6, align 8
  %270 = getelementptr inbounds %struct.resource, %struct.resource* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = load %struct.resource*, %struct.resource** %6, align 8
  %277 = getelementptr inbounds %struct.resource, %struct.resource* %276, i32 0, i32 3
  store %struct.TYPE_7__* %275, %struct.TYPE_7__** %277, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = icmp ne %struct.TYPE_7__* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %248
  %283 = load %struct.resource*, %struct.resource** %6, align 8
  %284 = call i32 @request_resource(i32* @iomem_resource, %struct.resource* %283)
  br label %285

285:                                              ; preds = %282, %248
  %286 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %287 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %286, i32 0, i32 0
  %288 = load %struct.resource*, %struct.resource** %6, align 8
  %289 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %287, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), %struct.resource* %288)
  %290 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %291 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %290, i32 0, i32 3
  %292 = call i32 @mutex_unlock(i32* %291)
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %285, %212, %170, %132, %95, %69, %26
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SOCKET_WIN_REQ(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_7__* @pcmcia_find_mem_region(i32, i32, i32, i32, %struct.pcmcia_socket*) #1

declare dso_local i32 @CLIENT_WIN_REQ(i32) #1

declare dso_local i32 @request_resource(i32*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
