; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_check_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_check_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, %struct.dst_entry*, %struct.cxgbi_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dst_entry = type { i32 }
%struct.cxgbi_device = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.rtable = type { i32, %struct.dst_entry }
%struct.neighbour = type { %struct.net_device* }
%struct.flowi4 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"no route to ipv4 0x%x, port %u.\0A\00", align 1
@ENETUNREACH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"multi-cast route %pI4, port %u, dev %s.\0A\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"rt dev %s, loopback -> %s, mtu %u.\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s interface not up.\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"dst %pI4, %s, NOT cxgbi device.\0A\00", align 1
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"route to %pI4 :%u, ndev p#%d,%s, cdev 0x%p.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxgbi_sock* (%struct.sockaddr*, i32)* @cxgbi_check_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxgbi_sock* @cxgbi_check_route(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.cxgbi_device*, align 8
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca %struct.flowi4, align 4
  %13 = alloca %struct.cxgbi_sock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %6, align 8
  store %struct.rtable* null, %struct.rtable** %10, align 8
  store %struct.cxgbi_sock* null, %struct.cxgbi_sock** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 65535, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.rtable* @find_route_ipv4(%struct.flowi4* %12, i32 0, i32 %22, i32 0, i32 %25, i32 0, i32 %26)
  store %struct.rtable* %27, %struct.rtable** %10, align 8
  %28 = load %struct.rtable*, %struct.rtable** %10, align 8
  %29 = icmp ne %struct.rtable* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %2
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @be32_to_cpu(i32 %34)
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  %40 = call i32 (i8*, i32*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %35, i32 %39)
  %41 = load i32, i32* @ENETUNREACH, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %16, align 4
  br label %237

43:                                               ; preds = %2
  %44 = load %struct.rtable*, %struct.rtable** %10, align 8
  %45 = getelementptr inbounds %struct.rtable, %struct.rtable* %44, i32 0, i32 1
  store %struct.dst_entry* %45, %struct.dst_entry** %7, align 8
  %46 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %46, i32* %49)
  store %struct.neighbour* %50, %struct.neighbour** %11, align 8
  %51 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %52 = icmp ne %struct.neighbour* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %16, align 4
  br label %234

56:                                               ; preds = %43
  %57 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %58 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %57, i32 0, i32 0
  %59 = load %struct.net_device*, %struct.net_device** %58, align 8
  store %struct.net_device* %59, %struct.net_device** %8, align 8
  %60 = load %struct.rtable*, %struct.rtable** %10, align 8
  %61 = getelementptr inbounds %struct.rtable, %struct.rtable* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RTCF_MULTICAST, align 4
  %64 = load i32, i32* @RTCF_BROADCAST, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %56
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohs(i32 %74)
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %71, i32 %75, i32 %78)
  %80 = load i32, i32* @ENETUNREACH, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %16, align 4
  br label %231

82:                                               ; preds = %56
  %83 = load %struct.net_device*, %struct.net_device** %8, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IFF_LOOPBACK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %82
  %90 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %91 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.net_device* @ip_dev_find(i32* @init_net, i32 %93)
  store %struct.net_device* %94, %struct.net_device** %8, align 8
  %95 = load %struct.net_device*, %struct.net_device** %8, align 8
  %96 = icmp ne %struct.net_device* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* @ENETUNREACH, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %16, align 4
  br label %231

100:                                              ; preds = %89
  %101 = load %struct.net_device*, %struct.net_device** %8, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %14, align 4
  %104 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %105 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %104, i32 0, i32 0
  %106 = load %struct.net_device*, %struct.net_device** %105, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 (i8*, i32*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %110, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %100, %82
  %117 = load %struct.net_device*, %struct.net_device** %8, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IFF_UP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.net_device*, %struct.net_device** %8, align 8
  %125 = call i32 @netif_carrier_ok(%struct.net_device* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.net_device*, %struct.net_device** %8, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 (i8*, i32*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %132)
  %134 = load i32, i32* @ENETDOWN, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %16, align 4
  br label %231

136:                                              ; preds = %123
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = call %struct.cxgbi_device* @cxgbi_device_find_by_netdev(%struct.net_device* %137, i32* %15)
  store %struct.cxgbi_device* %138, %struct.cxgbi_device** %9, align 8
  %139 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %140 = icmp ne %struct.cxgbi_device* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load %struct.net_device*, %struct.net_device** %8, align 8
  %143 = call %struct.cxgbi_device* @cxgbi_device_find_by_mac(%struct.net_device* %142, i32* %15)
  store %struct.cxgbi_device* %143, %struct.cxgbi_device** %9, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %146 = icmp ne %struct.cxgbi_device* %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.net_device*, %struct.net_device** %8, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, i32*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32* %150, i32 %153)
  %155 = load i32, i32* @ENETUNREACH, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %16, align 4
  br label %231

157:                                              ; preds = %144
  %158 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %159 = shl i32 1, %158
  %160 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %161 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %164 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ntohs(i32 %165)
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.net_device*, %struct.net_device** %8, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %172 = call i32 @log_debug(i32 %159, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32* %162, i32 %166, i32 %167, i32 %170, %struct.cxgbi_device* %171)
  %173 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %174 = call %struct.cxgbi_sock* @cxgbi_sock_create(%struct.cxgbi_device* %173)
  store %struct.cxgbi_sock* %174, %struct.cxgbi_sock** %13, align 8
  %175 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %176 = icmp ne %struct.cxgbi_sock* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %157
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %16, align 4
  br label %231

180:                                              ; preds = %157
  %181 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %182 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %183 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %182, i32 0, i32 6
  store %struct.cxgbi_device* %181, %struct.cxgbi_device** %183, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %186 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %189 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %191 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %192 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %191, i32 0, i32 5
  store %struct.dst_entry* %190, %struct.dst_entry** %192, align 8
  %193 = load i32, i32* @AF_INET, align 4
  %194 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %195 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 4
  %196 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %201 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i32 %199, i32* %203, align 8
  %204 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %205 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %208 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 4
  %210 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %211 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %214 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 8
  %216 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %217 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %220 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  %225 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  store i32 %223, i32* %227, align 8
  %228 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %229 = call i32 @neigh_release(%struct.neighbour* %228)
  %230 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  store %struct.cxgbi_sock* %230, %struct.cxgbi_sock** %3, align 8
  br label %240

231:                                              ; preds = %177, %147, %127, %97, %68
  %232 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %233 = call i32 @neigh_release(%struct.neighbour* %232)
  br label %234

234:                                              ; preds = %231, %53
  %235 = load %struct.rtable*, %struct.rtable** %10, align 8
  %236 = call i32 @ip_rt_put(%struct.rtable* %235)
  br label %237

237:                                              ; preds = %234, %30
  %238 = load i32, i32* %16, align 4
  %239 = call %struct.cxgbi_sock* @ERR_PTR(i32 %238)
  store %struct.cxgbi_sock* %239, %struct.cxgbi_sock** %3, align 8
  br label %240

240:                                              ; preds = %237, %180
  %241 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  ret %struct.cxgbi_sock* %241
}

declare dso_local %struct.rtable* @find_route_ipv4(%struct.flowi4*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32*, ...) #1

declare dso_local i32* @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.net_device* @ip_dev_find(i32*, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local %struct.cxgbi_device* @cxgbi_device_find_by_netdev(%struct.net_device*, i32*) #1

declare dso_local %struct.cxgbi_device* @cxgbi_device_find_by_mac(%struct.net_device*, i32*) #1

declare dso_local i32 @log_debug(i32, i8*, i32*, i32, i32, i32, %struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @cxgbi_sock_create(%struct.cxgbi_device*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.cxgbi_sock* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
