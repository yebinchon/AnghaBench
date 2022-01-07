; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_offload_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_offload_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i64 }
%struct.dst_entry = type { i32 }
%struct.cxgbit_device = type { %struct.TYPE_3__, i32** }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.neighbour = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.port_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, i32, i32*, i32, %struct.dst_entry*, %struct.cxgbit_device*)* @cxgbit_offload_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_offload_init(%struct.cxgbit_sock* %0, i32 %1, i32* %2, i32 %3, %struct.dst_entry* %4, %struct.cxgbit_device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgbit_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dst_entry*, align 8
  %13 = alloca %struct.cxgbit_device*, align 8
  %14 = alloca %struct.neighbour*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.dst_entry* %4, %struct.dst_entry** %12, align 8
  store %struct.cxgbit_device* %5, %struct.cxgbit_device** %13, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %20, i32* %21)
  store %struct.neighbour* %22, %struct.neighbour** %14, align 8
  %23 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %24 = icmp ne %struct.neighbour* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %278

28:                                               ; preds = %6
  %29 = call i32 (...) @rcu_read_lock()
  %30 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NUD_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %38 = call i32 @neigh_event_send(%struct.neighbour* %37, i32* null)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  %42 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %43 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_LOOPBACK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %155

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.net_device* @cxgbit_ipv4_netdev(i32 %55)
  store %struct.net_device* %56, %struct.net_device** %17, align 8
  br label %67

57:                                               ; preds = %50
  %58 = load i32, i32* @CONFIG_IPV6, align 4
  %59 = call i64 @IS_ENABLED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = bitcast i32* %62 to %struct.in6_addr*
  %64 = call %struct.net_device* @cxgbit_ipv6_netdev(%struct.in6_addr* %63)
  store %struct.net_device* %64, %struct.net_device** %17, align 8
  br label %66

65:                                               ; preds = %57
  store %struct.net_device* null, %struct.net_device** %17, align 8
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %53
  %68 = load %struct.net_device*, %struct.net_device** %17, align 8
  %69 = icmp ne %struct.net_device* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %273

73:                                               ; preds = %67
  %74 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %75 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %79 = load %struct.net_device*, %struct.net_device** %17, align 8
  %80 = call i8* @cxgb4_l2t_get(i32 %77, %struct.neighbour* %78, %struct.net_device* %79, i64 0)
  %81 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %82 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %84 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %83, i32 0, i32 7
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %73
  br label %273

88:                                               ; preds = %73
  %89 = load %struct.net_device*, %struct.net_device** %17, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %93 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.net_device*, %struct.net_device** %17, align 8
  %95 = call i8* @cxgb4_port_chan(%struct.net_device* %94)
  %96 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %97 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.net_device*, %struct.net_device** %17, align 8
  %99 = call i64 @netdev_priv(%struct.net_device* %98)
  %100 = inttoptr i64 %99 to %struct.port_info*
  %101 = getelementptr inbounds %struct.port_info, %struct.port_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %104 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %106 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %110 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %108, %112
  store i32 %113, i32* %16, align 4
  %114 = load %struct.net_device*, %struct.net_device** %17, align 8
  %115 = call i32 @cxgb4_port_idx(%struct.net_device* %114)
  %116 = load i32, i32* %16, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %119 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %121 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %125 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %123, %127
  store i32 %128, i32* %16, align 4
  %129 = load %struct.net_device*, %struct.net_device** %17, align 8
  %130 = call i32 @cxgb4_port_idx(%struct.net_device* %129)
  %131 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %132 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %134 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.net_device*, %struct.net_device** %17, align 8
  %138 = call i32 @cxgb4_port_idx(%struct.net_device* %137)
  %139 = load i32, i32* %16, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %136, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %145 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.net_device*, %struct.net_device** %17, align 8
  %147 = call i32 @cxgb4_port_idx(%struct.net_device* %146)
  %148 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %149 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %151 = load %struct.net_device*, %struct.net_device** %17, align 8
  %152 = call i64 @netdev_priv(%struct.net_device* %151)
  %153 = inttoptr i64 %152 to %struct.port_info*
  %154 = call i32 @cxgbit_set_tcp_window(%struct.cxgbit_sock* %150, %struct.port_info* %153)
  br label %272

155:                                              ; preds = %39
  %156 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %157 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = call %struct.net_device* @cxgbit_get_real_dev(%struct.TYPE_4__* %158)
  store %struct.net_device* %159, %struct.net_device** %17, align 8
  %160 = load %struct.net_device*, %struct.net_device** %17, align 8
  %161 = icmp ne %struct.net_device* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* @ENODEV, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %15, align 4
  br label %273

165:                                              ; preds = %155
  %166 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %167 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %171 = load %struct.net_device*, %struct.net_device** %17, align 8
  %172 = call i8* @cxgb4_l2t_get(i32 %169, %struct.neighbour* %170, %struct.net_device* %171, i64 0)
  %173 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %174 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %173, i32 0, i32 7
  store i8* %172, i8** %174, align 8
  %175 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %176 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %175, i32 0, i32 7
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %165
  br label %273

180:                                              ; preds = %165
  %181 = load %struct.net_device*, %struct.net_device** %17, align 8
  %182 = call i32 @cxgb4_port_idx(%struct.net_device* %181)
  store i32 %182, i32* %19, align 4
  %183 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %184 = call i32 @dst_mtu(%struct.dst_entry* %183)
  %185 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %186 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  %187 = load %struct.net_device*, %struct.net_device** %17, align 8
  %188 = call i8* @cxgb4_port_chan(%struct.net_device* %187)
  %189 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %190 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  %191 = load %struct.net_device*, %struct.net_device** %17, align 8
  %192 = call i64 @netdev_priv(%struct.net_device* %191)
  %193 = inttoptr i64 %192 to %struct.port_info*
  %194 = getelementptr inbounds %struct.port_info, %struct.port_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %197 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 8
  %198 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %199 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %203 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 %201, %205
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %16, align 4
  %209 = mul nsw i32 %207, %208
  %210 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %211 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %210, i32 0, i32 1
  %212 = load i32**, i32*** %211, align 8
  %213 = load i32, i32* %19, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %212, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  %220 = load i32, i32* %16, align 4
  %221 = srem i32 %218, %220
  %222 = add nsw i32 %209, %221
  %223 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %224 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.net_device*, %struct.net_device** %17, align 8
  %226 = call i32 @cxgb4_port_idx(%struct.net_device* %225)
  %227 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %228 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %230 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %234 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = sdiv i32 %232, %236
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* %16, align 4
  %240 = mul nsw i32 %238, %239
  %241 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %242 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %241, i32 0, i32 1
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32*, i32** %243, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* %16, align 4
  %252 = srem i32 %249, %251
  %253 = add nsw i32 %240, %252
  store i32 %253, i32* %18, align 4
  %254 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  %255 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %18, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %263 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %19, align 4
  %265 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %266 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %268 = load %struct.net_device*, %struct.net_device** %17, align 8
  %269 = call i64 @netdev_priv(%struct.net_device* %268)
  %270 = inttoptr i64 %269 to %struct.port_info*
  %271 = call i32 @cxgbit_set_tcp_window(%struct.cxgbit_sock* %267, %struct.port_info* %270)
  br label %272

272:                                              ; preds = %180, %88
  store i32 0, i32* %15, align 4
  br label %273

273:                                              ; preds = %272, %179, %162, %87, %70
  %274 = call i32 (...) @rcu_read_unlock()
  %275 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %276 = call i32 @neigh_release(%struct.neighbour* %275)
  %277 = load i32, i32* %15, align 4
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %273, %25
  %279 = load i32, i32* %7, align 4
  ret i32 %279
}

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local %struct.net_device* @cxgbit_ipv4_netdev(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.net_device* @cxgbit_ipv6_netdev(%struct.in6_addr*) #1

declare dso_local i8* @cxgb4_l2t_get(i32, %struct.neighbour*, %struct.net_device*, i64) #1

declare dso_local i8* @cxgb4_port_chan(%struct.net_device*) #1

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cxgb4_port_idx(%struct.net_device*) #1

declare dso_local i32 @cxgbit_set_tcp_window(%struct.cxgbit_sock*, %struct.port_info*) #1

declare dso_local %struct.net_device* @cxgbit_get_real_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
