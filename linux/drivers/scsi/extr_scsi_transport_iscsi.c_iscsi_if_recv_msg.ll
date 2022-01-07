; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.iscsi_uevent = type { %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_12__, %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.iscsi_transport = type { i32, i32 (%struct.iscsi_cls_conn*, %struct.iscsi_hdr*, i8*, i32)*, i32 (%struct.iscsi_cls_conn.0*, i32)*, i32 (%struct.iscsi_cls_conn.1*)*, i32, i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn.2*, i32, i32)*, i32 (%struct.iscsi_cls_session.3*)* }
%struct.iscsi_cls_conn = type opaque
%struct.iscsi_hdr = type opaque
%struct.iscsi_cls_conn.0 = type opaque
%struct.iscsi_cls_conn.1 = type opaque
%struct.iscsi_cls_session = type opaque
%struct.iscsi_cls_conn.2 = type opaque
%struct.iscsi_cls_session.3 = type opaque
%struct.iscsi_internal = type { %struct.iscsi_transport* }
%struct.iscsi_cls_session.4 = type { i32 }
%struct.iscsi_cls_conn.5 = type { i32, %struct.iscsi_endpoint* }
%struct.iscsi_endpoint = type { %struct.iscsi_cls_conn.5*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.iscsi_hdr.6 = type { i32 }

@ISCSI_NL_GRP_UIP = common dso_local global i32 0, align 4
@ISCSI_NL_GRP_ISCSID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not set ep conn binding\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i32*)* @iscsi_if_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_if_recv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_uevent*, align 8
  %11 = alloca %struct.iscsi_transport*, align 8
  %12 = alloca %struct.iscsi_internal*, align 8
  %13 = alloca %struct.iscsi_cls_session.4*, align 8
  %14 = alloca %struct.iscsi_cls_conn.5*, align 8
  %15 = alloca %struct.iscsi_endpoint*, align 8
  %16 = alloca %struct.TYPE_11__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %18 = call %struct.iscsi_uevent* @nlmsg_data(%struct.nlmsghdr* %17)
  store %struct.iscsi_uevent* %18, %struct.iscsi_uevent** %10, align 8
  store %struct.iscsi_transport* null, %struct.iscsi_transport** %11, align 8
  store %struct.iscsi_endpoint* null, %struct.iscsi_endpoint** %15, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 143
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ISCSI_NL_GRP_UIP, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ISCSI_NL_GRP_ISCSID, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %31 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iscsi_ptr(i32 %32)
  %34 = call %struct.iscsi_internal* @iscsi_if_transport_lookup(i32 %33)
  store %struct.iscsi_internal* %34, %struct.iscsi_internal** %12, align 8
  %35 = load %struct.iscsi_internal*, %struct.iscsi_internal** %12, align 8
  %36 = icmp ne %struct.iscsi_internal* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %462

40:                                               ; preds = %29
  %41 = load %struct.iscsi_internal*, %struct.iscsi_internal** %12, align 8
  %42 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %41, i32 0, i32 0
  %43 = load %struct.iscsi_transport*, %struct.iscsi_transport** %42, align 8
  store %struct.iscsi_transport* %43, %struct.iscsi_transport** %11, align 8
  %44 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %45 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @try_module_get(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %462

52:                                               ; preds = %40
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @NETLINK_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %59 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %453 [
    i32 155, label %61
    i32 157, label %82
    i32 151, label %115
    i32 128, label %135
    i32 156, label %154
    i32 152, label %158
    i32 158, label %162
    i32 136, label %264
    i32 135, label %268
    i32 134, label %296
    i32 141, label %326
    i32 148, label %374
    i32 132, label %378
    i32 129, label %378
    i32 130, label %378
    i32 131, label %378
    i32 133, label %385
    i32 138, label %389
    i32 143, label %393
    i32 137, label %397
    i32 142, label %403
    i32 150, label %407
    i32 154, label %411
    i32 139, label %415
    i32 144, label %421
    i32 153, label %427
    i32 147, label %431
    i32 146, label %435
    i32 145, label %439
    i32 140, label %443
    i32 149, label %449
  ]

61:                                               ; preds = %52
  %62 = load %struct.iscsi_internal*, %struct.iscsi_internal** %12, align 8
  %63 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %64 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %67 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %72 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %77 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @iscsi_if_create_session(%struct.iscsi_internal* %62, %struct.iscsi_endpoint* %63, %struct.iscsi_uevent* %64, i32 %65, i32 %70, i32 %75, i32 %80)
  store i32 %81, i32* %8, align 4
  br label %456

82:                                               ; preds = %52
  %83 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %84 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %87)
  store %struct.iscsi_endpoint* %88, %struct.iscsi_endpoint** %15, align 8
  %89 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %90 = icmp ne %struct.iscsi_endpoint* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %456

94:                                               ; preds = %82
  %95 = load %struct.iscsi_internal*, %struct.iscsi_internal** %12, align 8
  %96 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %97 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %100 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %105 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %110 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @iscsi_if_create_session(%struct.iscsi_internal* %95, %struct.iscsi_endpoint* %96, %struct.iscsi_uevent* %97, i32 %98, i32 %103, i32 %108, i32 %113)
  store i32 %114, i32* %8, align 4
  br label %456

115:                                              ; preds = %52
  %116 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %117 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32 %120)
  store %struct.iscsi_cls_session.4* %121, %struct.iscsi_cls_session.4** %13, align 8
  %122 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %13, align 8
  %123 = icmp ne %struct.iscsi_cls_session.4* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %126 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %125, i32 0, i32 6
  %127 = load i32 (%struct.iscsi_cls_session.3*)*, i32 (%struct.iscsi_cls_session.3*)** %126, align 8
  %128 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %13, align 8
  %129 = bitcast %struct.iscsi_cls_session.4* %128 to %struct.iscsi_cls_session.3*
  %130 = call i32 %127(%struct.iscsi_cls_session.3* %129)
  br label %134

131:                                              ; preds = %115
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %124
  br label %456

135:                                              ; preds = %52
  %136 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %137 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32 %140)
  store %struct.iscsi_cls_session.4* %141, %struct.iscsi_cls_session.4** %13, align 8
  %142 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %13, align 8
  %143 = icmp ne %struct.iscsi_cls_session.4* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %135
  %145 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %13, align 8
  %146 = call i32 @iscsi_session_to_shost(%struct.iscsi_cls_session.4* %145)
  %147 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %13, align 8
  %148 = getelementptr inbounds %struct.iscsi_cls_session.4, %struct.iscsi_cls_session.4* %147, i32 0, i32 0
  %149 = call i32 @scsi_queue_work(i32 %146, i32* %148)
  br label %153

150:                                              ; preds = %135
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %150, %144
  br label %456

154:                                              ; preds = %52
  %155 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %156 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %157 = call i32 @iscsi_if_create_conn(%struct.iscsi_transport* %155, %struct.iscsi_uevent* %156)
  store i32 %157, i32* %8, align 4
  br label %456

158:                                              ; preds = %52
  %159 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %160 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %161 = call i32 @iscsi_if_destroy_conn(%struct.iscsi_transport* %159, %struct.iscsi_uevent* %160)
  store i32 %161, i32* %8, align 4
  br label %456

162:                                              ; preds = %52
  %163 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %164 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32 %167)
  store %struct.iscsi_cls_session.4* %168, %struct.iscsi_cls_session.4** %13, align 8
  %169 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %170 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %175 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %173, i32 %178)
  store %struct.iscsi_cls_conn.5* %179, %struct.iscsi_cls_conn.5** %14, align 8
  %180 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %181 = icmp ne %struct.iscsi_cls_conn.5* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %162
  %183 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %184 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %183, i32 0, i32 1
  %185 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %184, align 8
  %186 = icmp ne %struct.iscsi_endpoint* %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %189 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %190 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %189, i32 0, i32 1
  %191 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %190, align 8
  %192 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @iscsi_if_ep_disconnect(%struct.iscsi_transport* %188, i32 %193)
  br label %195

195:                                              ; preds = %187, %182, %162
  %196 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %13, align 8
  %197 = icmp ne %struct.iscsi_cls_session.4* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %200 = icmp ne %struct.iscsi_cls_conn.5* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %8, align 4
  br label %456

204:                                              ; preds = %198
  %205 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %206 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %205, i32 0, i32 5
  %207 = load i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn.2*, i32, i32)*, i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn.2*, i32, i32)** %206, align 8
  %208 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %13, align 8
  %209 = bitcast %struct.iscsi_cls_session.4* %208 to %struct.iscsi_cls_session*
  %210 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %211 = bitcast %struct.iscsi_cls_conn.5* %210 to %struct.iscsi_cls_conn.2*
  %212 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %213 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %218 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 %207(%struct.iscsi_cls_session* %209, %struct.iscsi_cls_conn.2* %211, i32 %216, i32 %221)
  %223 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %224 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 4
  %226 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %227 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %204
  %232 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %233 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %231, %204
  br label %456

237:                                              ; preds = %231
  %238 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %239 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %242)
  store %struct.iscsi_endpoint* %243, %struct.iscsi_endpoint** %15, align 8
  %244 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %245 = icmp ne %struct.iscsi_endpoint* %244, null
  br i1 %245, label %246, label %259

246:                                              ; preds = %237
  %247 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %248 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %249 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %248, i32 0, i32 0
  store %struct.iscsi_cls_conn.5* %247, %struct.iscsi_cls_conn.5** %249, align 8
  %250 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %251 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %250, i32 0, i32 0
  %252 = call i32 @mutex_lock(i32* %251)
  %253 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %254 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %255 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %254, i32 0, i32 1
  store %struct.iscsi_endpoint* %253, %struct.iscsi_endpoint** %255, align 8
  %256 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %257 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %256, i32 0, i32 0
  %258 = call i32 @mutex_unlock(i32* %257)
  br label %263

259:                                              ; preds = %237
  %260 = load i32, i32* @KERN_ERR, align 4
  %261 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %262 = call i32 @iscsi_cls_conn_printk(i32 %260, %struct.iscsi_cls_conn.5* %261, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %263

263:                                              ; preds = %259, %246
  br label %456

264:                                              ; preds = %52
  %265 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %266 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %267 = call i32 @iscsi_set_param(%struct.iscsi_transport* %265, %struct.iscsi_uevent* %266)
  store i32 %267, i32* %8, align 4
  br label %456

268:                                              ; preds = %52
  %269 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %270 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %275 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %273, i32 %278)
  store %struct.iscsi_cls_conn.5* %279, %struct.iscsi_cls_conn.5** %14, align 8
  %280 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %281 = icmp ne %struct.iscsi_cls_conn.5* %280, null
  br i1 %281, label %282, label %292

282:                                              ; preds = %268
  %283 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %284 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %283, i32 0, i32 3
  %285 = load i32 (%struct.iscsi_cls_conn.1*)*, i32 (%struct.iscsi_cls_conn.1*)** %284, align 8
  %286 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %287 = bitcast %struct.iscsi_cls_conn.5* %286 to %struct.iscsi_cls_conn.1*
  %288 = call i32 %285(%struct.iscsi_cls_conn.1* %287)
  %289 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %290 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  store i32 %288, i32* %291, align 4
  br label %295

292:                                              ; preds = %268
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %292, %282
  br label %456

296:                                              ; preds = %52
  %297 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %298 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %303 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %301, i32 %306)
  store %struct.iscsi_cls_conn.5* %307, %struct.iscsi_cls_conn.5** %14, align 8
  %308 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %309 = icmp ne %struct.iscsi_cls_conn.5* %308, null
  br i1 %309, label %310, label %322

310:                                              ; preds = %296
  %311 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %312 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %311, i32 0, i32 2
  %313 = load i32 (%struct.iscsi_cls_conn.0*, i32)*, i32 (%struct.iscsi_cls_conn.0*, i32)** %312, align 8
  %314 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %315 = bitcast %struct.iscsi_cls_conn.5* %314 to %struct.iscsi_cls_conn.0*
  %316 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %317 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 %313(%struct.iscsi_cls_conn.0* %315, i32 %320)
  br label %325

322:                                              ; preds = %296
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %322, %310
  br label %456

326:                                              ; preds = %52
  %327 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %328 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %333 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %331, i32 %336)
  store %struct.iscsi_cls_conn.5* %337, %struct.iscsi_cls_conn.5** %14, align 8
  %338 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %339 = icmp ne %struct.iscsi_cls_conn.5* %338, null
  br i1 %339, label %340, label %370

340:                                              ; preds = %326
  %341 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %342 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %341, i32 0, i32 1
  %343 = load i32 (%struct.iscsi_cls_conn*, %struct.iscsi_hdr*, i8*, i32)*, i32 (%struct.iscsi_cls_conn*, %struct.iscsi_hdr*, i8*, i32)** %342, align 8
  %344 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %14, align 8
  %345 = bitcast %struct.iscsi_cls_conn.5* %344 to %struct.iscsi_cls_conn*
  %346 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %347 = bitcast %struct.iscsi_uevent* %346 to i8*
  %348 = getelementptr inbounds i8, i8* %347, i64 92
  %349 = bitcast i8* %348 to %struct.iscsi_hdr.6*
  %350 = bitcast %struct.iscsi_hdr.6* %349 to %struct.iscsi_hdr*
  %351 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %352 = bitcast %struct.iscsi_uevent* %351 to i8*
  %353 = getelementptr inbounds i8, i8* %352, i64 92
  %354 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %355 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %353, i64 %359
  %361 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %362 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32 %343(%struct.iscsi_cls_conn* %345, %struct.iscsi_hdr* %350, i8* %360, i32 %365)
  %367 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %368 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 4
  br label %373

370:                                              ; preds = %326
  %371 = load i32, i32* @EINVAL, align 4
  %372 = sub nsw i32 0, %371
  store i32 %372, i32* %8, align 4
  br label %373

373:                                              ; preds = %370, %340
  br label %456

374:                                              ; preds = %52
  %375 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %376 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %377 = call i32 @iscsi_if_get_stats(%struct.iscsi_transport* %375, %struct.nlmsghdr* %376)
  store i32 %377, i32* %8, align 4
  br label %456

378:                                              ; preds = %52, %52, %52, %52
  %379 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %380 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %381 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %382 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @iscsi_if_transport_ep(%struct.iscsi_transport* %379, %struct.iscsi_uevent* %380, i32 %383)
  store i32 %384, i32* %8, align 4
  br label %456

385:                                              ; preds = %52
  %386 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %387 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %388 = call i32 @iscsi_tgt_dscvr(%struct.iscsi_transport* %386, %struct.iscsi_uevent* %387)
  store i32 %388, i32* %8, align 4
  br label %456

389:                                              ; preds = %52
  %390 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %391 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %392 = call i32 @iscsi_set_host_param(%struct.iscsi_transport* %390, %struct.iscsi_uevent* %391)
  store i32 %392, i32* %8, align 4
  br label %456

393:                                              ; preds = %52
  %394 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %395 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %396 = call i32 @iscsi_set_path(%struct.iscsi_transport* %394, %struct.iscsi_uevent* %395)
  store i32 %396, i32* %8, align 4
  br label %456

397:                                              ; preds = %52
  %398 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %399 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %400 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %401 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %400, i32 92)
  %402 = call i32 @iscsi_set_iface_params(%struct.iscsi_transport* %398, %struct.iscsi_uevent* %399, i32 %401)
  store i32 %402, i32* %8, align 4
  br label %456

403:                                              ; preds = %52
  %404 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %405 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %406 = call i32 @iscsi_send_ping(%struct.iscsi_transport* %404, %struct.iscsi_uevent* %405)
  store i32 %406, i32* %8, align 4
  br label %456

407:                                              ; preds = %52
  %408 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %409 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %410 = call i32 @iscsi_get_chap(%struct.iscsi_transport* %408, %struct.nlmsghdr* %409)
  store i32 %410, i32* %8, align 4
  br label %456

411:                                              ; preds = %52
  %412 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %413 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %414 = call i32 @iscsi_delete_chap(%struct.iscsi_transport* %412, %struct.iscsi_uevent* %413)
  store i32 %414, i32* %8, align 4
  br label %456

415:                                              ; preds = %52
  %416 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %417 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %418 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %419 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %418, i32 92)
  %420 = call i32 @iscsi_set_flashnode_param(%struct.iscsi_transport* %416, %struct.iscsi_uevent* %417, i32 %419)
  store i32 %420, i32* %8, align 4
  br label %456

421:                                              ; preds = %52
  %422 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %423 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %424 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %425 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %424, i32 92)
  %426 = call i32 @iscsi_new_flashnode(%struct.iscsi_transport* %422, %struct.iscsi_uevent* %423, i32 %425)
  store i32 %426, i32* %8, align 4
  br label %456

427:                                              ; preds = %52
  %428 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %429 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %430 = call i32 @iscsi_del_flashnode(%struct.iscsi_transport* %428, %struct.iscsi_uevent* %429)
  store i32 %430, i32* %8, align 4
  br label %456

431:                                              ; preds = %52
  %432 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %433 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %434 = call i32 @iscsi_login_flashnode(%struct.iscsi_transport* %432, %struct.iscsi_uevent* %433)
  store i32 %434, i32* %8, align 4
  br label %456

435:                                              ; preds = %52
  %436 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %437 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %438 = call i32 @iscsi_logout_flashnode(%struct.iscsi_transport* %436, %struct.iscsi_uevent* %437)
  store i32 %438, i32* %8, align 4
  br label %456

439:                                              ; preds = %52
  %440 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %441 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %442 = call i32 @iscsi_logout_flashnode_sid(%struct.iscsi_transport* %440, %struct.iscsi_uevent* %441)
  store i32 %442, i32* %8, align 4
  br label %456

443:                                              ; preds = %52
  %444 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %445 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %10, align 8
  %446 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %447 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %446, i32 92)
  %448 = call i32 @iscsi_set_chap(%struct.iscsi_transport* %444, %struct.iscsi_uevent* %445, i32 %447)
  store i32 %448, i32* %8, align 4
  br label %456

449:                                              ; preds = %52
  %450 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %451 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %452 = call i32 @iscsi_get_host_stats(%struct.iscsi_transport* %450, %struct.nlmsghdr* %451)
  store i32 %452, i32* %8, align 4
  br label %456

453:                                              ; preds = %52
  %454 = load i32, i32* @ENOSYS, align 4
  %455 = sub nsw i32 0, %454
  store i32 %455, i32* %8, align 4
  br label %456

456:                                              ; preds = %453, %449, %443, %439, %435, %431, %427, %421, %415, %411, %407, %403, %397, %393, %389, %385, %378, %374, %373, %325, %295, %264, %263, %236, %201, %158, %154, %153, %134, %94, %91, %61
  %457 = load %struct.iscsi_transport*, %struct.iscsi_transport** %11, align 8
  %458 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @module_put(i32 %459)
  %461 = load i32, i32* %8, align 4
  store i32 %461, i32* %4, align 4
  br label %462

462:                                              ; preds = %456, %49, %37
  %463 = load i32, i32* %4, align 4
  ret i32 %463
}

declare dso_local %struct.iscsi_uevent* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.iscsi_internal* @iscsi_if_transport_lookup(i32) #1

declare dso_local i32 @iscsi_ptr(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @iscsi_if_create_session(%struct.iscsi_internal*, %struct.iscsi_endpoint*, %struct.iscsi_uevent*, i32, i32, i32, i32) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32) #1

declare dso_local i32 @scsi_queue_work(i32, i32*) #1

declare dso_local i32 @iscsi_session_to_shost(%struct.iscsi_cls_session.4*) #1

declare dso_local i32 @iscsi_if_create_conn(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_if_destroy_conn(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32, i32) #1

declare dso_local i32 @iscsi_if_ep_disconnect(%struct.iscsi_transport*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iscsi_cls_conn_printk(i32, %struct.iscsi_cls_conn.5*, i8*) #1

declare dso_local i32 @iscsi_set_param(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_if_get_stats(%struct.iscsi_transport*, %struct.nlmsghdr*) #1

declare dso_local i32 @iscsi_if_transport_ep(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @iscsi_tgt_dscvr(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_host_param(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_path(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_iface_params(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @iscsi_send_ping(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_get_chap(%struct.iscsi_transport*, %struct.nlmsghdr*) #1

declare dso_local i32 @iscsi_delete_chap(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_flashnode_param(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @iscsi_new_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @iscsi_del_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_login_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_logout_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_logout_flashnode_sid(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_chap(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @iscsi_get_host_stats(%struct.iscsi_transport*, %struct.nlmsghdr*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
