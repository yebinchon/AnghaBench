; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.socket = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.pvcalls_bedata = type { %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.sock_mapping = type { %struct.TYPE_14__, %struct.socket*, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, %struct.sock_mapping* }
%struct.TYPE_11__ = type { i32 }
%struct.xen_pvcalls_request = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }

@pvcalls_front_dev = common dso_local global %struct.TYPE_17__* null, align 8
@PVCALLS_STATUS_LISTEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@PVCALLS_FLAG_ACCEPT_INFLIGHT = common dso_local global i32 0, align 4
@PVCALLS_INVALID_ID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PVCALLS_ACCEPT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@pvcalls_proto = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvcalls_bedata*, align 8
  %9 = alloca %struct.sock_mapping*, align 8
  %10 = alloca %struct.sock_mapping*, align 8
  %11 = alloca %struct.xen_pvcalls_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sock_mapping* null, %struct.sock_mapping** %10, align 8
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %17)
  store %struct.sock_mapping* %18, %struct.sock_mapping** %9, align 8
  %19 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %20 = call i64 @IS_ERR(%struct.sock_mapping* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %24 = call i32 @PTR_ERR(%struct.sock_mapping* %23)
  store i32 %24, i32* %4, align 4
  br label %373

25:                                               ; preds = %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pvcalls_front_dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %27)
  store %struct.pvcalls_bedata* %28, %struct.pvcalls_bedata** %8, align 8
  %29 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %30 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PVCALLS_STATUS_LISTEN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = call i32 @pvcalls_exit_sock(%struct.socket* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %373

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SOCK_NONBLOCK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %45 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %46 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = bitcast i32* %47 to i8*
  %49 = call i64 @test_and_set_bit(i32 %44, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %107

51:                                               ; preds = %40
  %52 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %53 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @READ_ONCE(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %62 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @READ_ONCE(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %74 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 4
  %76 = load %struct.sock_mapping*, %struct.sock_mapping** %75, align 8
  store %struct.sock_mapping* %76, %struct.sock_mapping** %10, align 8
  br label %290

77:                                               ; preds = %60, %51
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.socket*, %struct.socket** %5, align 8
  %82 = call i32 @pvcalls_exit_sock(%struct.socket* %81)
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %373

85:                                               ; preds = %77
  %86 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %87 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %91 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %92 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = bitcast i32* %93 to i8*
  %95 = call i64 @test_and_set_bit(i32 %90, i8* %94)
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @wait_event_interruptible(i32 %89, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %85
  %102 = load %struct.socket*, %struct.socket** %5, align 8
  %103 = call i32 @pvcalls_exit_sock(%struct.socket* %102)
  %104 = load i32, i32* @EINTR, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %373

106:                                              ; preds = %85
  br label %107

107:                                              ; preds = %106, %40
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call %struct.sock_mapping* @kzalloc(i32 48, i32 %108)
  store %struct.sock_mapping* %109, %struct.sock_mapping** %10, align 8
  %110 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %111 = icmp eq %struct.sock_mapping* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %114 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %115 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = bitcast i32* %116 to i8*
  %118 = call i32 @clear_bit(i32 %113, i8* %117)
  %119 = load %struct.socket*, %struct.socket** %5, align 8
  %120 = call i32 @pvcalls_exit_sock(%struct.socket* %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %373

123:                                              ; preds = %107
  %124 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %125 = call i32 @alloc_active_ring(%struct.sock_mapping* %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %130 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %131 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = bitcast i32* %132 to i8*
  %134 = call i32 @clear_bit(i32 %129, i8* %133)
  %135 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %136 = call i32 @kfree(%struct.sock_mapping* %135)
  %137 = load %struct.socket*, %struct.socket** %5, align 8
  %138 = call i32 @pvcalls_exit_sock(%struct.socket* %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %4, align 4
  br label %373

140:                                              ; preds = %123
  %141 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %142 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %141, i32 0, i32 3
  %143 = call i32 @spin_lock(i32* %142)
  %144 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %145 = call i32 @get_request(%struct.pvcalls_bedata* %144, i32* %13)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %140
  %149 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %150 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %151 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = bitcast i32* %152 to i8*
  %154 = call i32 @clear_bit(i32 %149, i8* %153)
  %155 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %156 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %155, i32 0, i32 3
  %157 = call i32 @spin_unlock(i32* %156)
  %158 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %159 = call i32 @free_active_ring(%struct.sock_mapping* %158)
  %160 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %161 = call i32 @kfree(%struct.sock_mapping* %160)
  %162 = load %struct.socket*, %struct.socket** %5, align 8
  %163 = call i32 @pvcalls_exit_sock(%struct.socket* %162)
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %4, align 4
  br label %373

165:                                              ; preds = %140
  %166 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %167 = call i32 @create_active(%struct.sock_mapping* %166, i32* %15)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %172 = call i32 @free_active_ring(%struct.sock_mapping* %171)
  %173 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %174 = call i32 @kfree(%struct.sock_mapping* %173)
  %175 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %176 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %177 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 3
  %179 = bitcast i32* %178 to i8*
  %180 = call i32 @clear_bit(i32 %175, i8* %179)
  %181 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %182 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %181, i32 0, i32 3
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load %struct.socket*, %struct.socket** %5, align 8
  %185 = call i32 @pvcalls_exit_sock(%struct.socket* %184)
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %4, align 4
  br label %373

187:                                              ; preds = %165
  %188 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %189 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %188, i32 0, i32 3
  %190 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %191 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %190, i32 0, i32 5
  %192 = call i32 @list_add_tail(i32* %189, i32* %191)
  %193 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %194 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %193, i32 0, i32 4
  %195 = load i32, i32* %13, align 4
  %196 = call %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_18__* %194, i32 %195)
  store %struct.xen_pvcalls_request* %196, %struct.xen_pvcalls_request** %11, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %11, align 8
  %199 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* @PVCALLS_ACCEPT, align 4
  %201 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %11, align 8
  %202 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %204 = ptrtoint %struct.sock_mapping* %203 to i64
  %205 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %11, align 8
  %206 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  store i64 %204, i64* %208, align 8
  %209 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %210 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %11, align 8
  %214 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  store i32 %212, i32* %216, align 4
  %217 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %218 = ptrtoint %struct.sock_mapping* %217 to i64
  %219 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %11, align 8
  %220 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  store i64 %218, i64* %222, align 8
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %11, align 8
  %225 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 2
  store i32 %223, i32* %227, align 8
  %228 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %229 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %230 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 4
  store %struct.sock_mapping* %228, %struct.sock_mapping** %231, align 8
  %232 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %233 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %238 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %237, i32 0, i32 4
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_18__* %238, i32 %239)
  %241 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %242 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %241, i32 0, i32 3
  %243 = call i32 @spin_unlock(i32* %242)
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %187
  %247 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %248 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @notify_remote_via_irq(i32 %249)
  br label %251

251:                                              ; preds = %246, %187
  %252 = load i32, i32* %16, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %251
  %255 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %256 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @WRITE_ONCE(i32 %258, i32 %259)
  %261 = load %struct.socket*, %struct.socket** %5, align 8
  %262 = call i32 @pvcalls_exit_sock(%struct.socket* %261)
  %263 = load i32, i32* @EAGAIN, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %4, align 4
  br label %373

265:                                              ; preds = %251
  %266 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %267 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %270 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %269, i32 0, i32 0
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @READ_ONCE(i32 %276)
  %278 = load i32, i32* %13, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = call i64 @wait_event_interruptible(i32 %268, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %265
  %284 = load %struct.socket*, %struct.socket** %5, align 8
  %285 = call i32 @pvcalls_exit_sock(%struct.socket* %284)
  %286 = load i32, i32* @EINTR, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %4, align 4
  br label %373

288:                                              ; preds = %265
  %289 = call i32 (...) @smp_rmb()
  br label %290

290:                                              ; preds = %288, %72
  %291 = load %struct.socket*, %struct.socket** %6, align 8
  %292 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %293 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %292, i32 0, i32 1
  store %struct.socket* %291, %struct.socket** %293, align 8
  %294 = load %struct.socket*, %struct.socket** %5, align 8
  %295 = getelementptr inbounds %struct.socket, %struct.socket* %294, i32 0, i32 0
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = call i32 @sock_net(%struct.TYPE_16__* %296)
  %298 = load i32, i32* @PF_INET, align 4
  %299 = load i32, i32* @GFP_KERNEL, align 4
  %300 = call %struct.TYPE_16__* @sk_alloc(i32 %297, i32 %298, i32 %299, i32* @pvcalls_proto, i32 0)
  %301 = load %struct.socket*, %struct.socket** %6, align 8
  %302 = getelementptr inbounds %struct.socket, %struct.socket* %301, i32 0, i32 0
  store %struct.TYPE_16__* %300, %struct.TYPE_16__** %302, align 8
  %303 = load %struct.socket*, %struct.socket** %6, align 8
  %304 = getelementptr inbounds %struct.socket, %struct.socket* %303, i32 0, i32 0
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = icmp ne %struct.TYPE_16__* %305, null
  br i1 %306, label %333, label %307

307:                                              ; preds = %290
  %308 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %309 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %310 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %309, i32 0, i32 0
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %310, align 8
  %312 = load i32, i32* %13, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  store i32 %308, i32* %315, align 4
  %316 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %317 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %318 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  store i32 %316, i32* %319, align 8
  %320 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %321 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %322 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 3
  %324 = bitcast i32* %323 to i8*
  %325 = call i32 @clear_bit(i32 %320, i8* %324)
  %326 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %327 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %328 = call i32 @pvcalls_front_free_map(%struct.pvcalls_bedata* %326, %struct.sock_mapping* %327)
  %329 = load %struct.socket*, %struct.socket** %5, align 8
  %330 = call i32 @pvcalls_exit_sock(%struct.socket* %329)
  %331 = load i32, i32* @ENOMEM, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %4, align 4
  br label %373

333:                                              ; preds = %290
  %334 = load %struct.sock_mapping*, %struct.sock_mapping** %10, align 8
  %335 = bitcast %struct.sock_mapping* %334 to i8*
  %336 = load %struct.socket*, %struct.socket** %6, align 8
  %337 = getelementptr inbounds %struct.socket, %struct.socket* %336, i32 0, i32 0
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  store i8* %335, i8** %339, align 8
  %340 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %341 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %340, i32 0, i32 0
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %341, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %14, align 4
  %348 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %349 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %350 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %349, i32 0, i32 0
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %350, align 8
  %352 = load i32, i32* %13, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 0
  store i32 %348, i32* %355, align 4
  %356 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %357 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %358 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 1
  store i32 %356, i32* %359, align 8
  %360 = load i32, i32* @PVCALLS_FLAG_ACCEPT_INFLIGHT, align 4
  %361 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %362 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 3
  %364 = bitcast i32* %363 to i8*
  %365 = call i32 @clear_bit(i32 %360, i8* %364)
  %366 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %367 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 2
  %369 = call i32 @wake_up(i32* %368)
  %370 = load %struct.socket*, %struct.socket** %5, align 8
  %371 = call i32 @pvcalls_exit_sock(%struct.socket* %370)
  %372 = load i32, i32* %14, align 4
  store i32 %372, i32* %4, align 4
  br label %373

373:                                              ; preds = %333, %307, %283, %254, %170, %148, %128, %112, %101, %80, %35, %22
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.sock_mapping*) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local %struct.sock_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i8*) #1

declare dso_local i32 @alloc_active_ring(%struct.sock_mapping*) #1

declare dso_local i32 @kfree(%struct.sock_mapping*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_request(%struct.pvcalls_bedata*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_active_ring(%struct.sock_mapping*) #1

declare dso_local i32 @create_active(%struct.sock_mapping*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.TYPE_16__* @sk_alloc(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(%struct.TYPE_16__*) #1

declare dso_local i32 @pvcalls_front_free_map(%struct.pvcalls_bedata*, %struct.sock_mapping*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
