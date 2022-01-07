; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_client = type { i32 }
%struct.ntb_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ntb_transport_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.ntb_transport_ctx*, i32, %struct.ntb_transport_ctx*, i32, i32, i32, i32, i64, i32*, i64, i64, i32, i32, %struct.ntb_dev* }
%struct.ntb_transport_mw = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.ntb_transport_mw*, i32, %struct.ntb_transport_mw*, i32, i32, i32, i32, i64, i32*, i64, i64, i32, i32, %struct.ntb_dev* }

@.str = private unnamed_addr constant [38 x i8] c"Inbound MW based NTB API is required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"doorbell is unsafe, proceed anyway...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"scratchpad is unsafe, proceed anyway...\0A\00", align 1
@NTB_DEF_PEER_CNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Multi-port NTB devices unsupported\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@use_msi = common dso_local global i64 0, align 8
@ntb_transport_msi_desc_changed = common dso_local global i32 0, align 4
@NTB_TRANSPORT_MIN_SPADS = common dso_local global i32 0, align 4
@MW0_SZ_HIGH = common dso_local global i32 0, align 4
@max_num_clients = common dso_local global i32 0, align 4
@nt_debugfs_dir = common dso_local global i64 0, align 8
@ntb_transport_link_work = common dso_local global i32 0, align 4
@ntb_transport_link_cleanup_work = common dso_local global i32 0, align 4
@ntb_transport_ops = common dso_local global i32 0, align 4
@NTB_SPEED_AUTO = common dso_local global i32 0, align 4
@NTB_WIDTH_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_client*, %struct.ntb_dev*)* @ntb_transport_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transport_probe(%struct.ntb_client* %0, %struct.ntb_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_client*, align 8
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca %struct.ntb_transport_ctx*, align 8
  %7 = alloca %struct.ntb_transport_mw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ntb_client* %0, %struct.ntb_client** %4, align 8
  store %struct.ntb_dev* %1, %struct.ntb_dev** %5, align 8
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %17 = call i32 @ntb_peer_mw_count(%struct.ntb_dev* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %19 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %26 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %25, i32 0, i32 1
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %355

30:                                               ; preds = %2
  %31 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %32 = call i64 @ntb_db_is_unsafe(%struct.ntb_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %36 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %35, i32 0, i32 1
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %40 = call i64 @ntb_spad_is_unsafe(%struct.ntb_dev* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %44 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %43, i32 0, i32 1
  %45 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %48 = call i64 @ntb_peer_port_count(%struct.ntb_dev* %47)
  %49 = load i64, i64* @NTB_DEF_PEER_CNT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %53 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %52, i32 0, i32 1
  %54 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %57 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %56, i32 0, i32 1
  %58 = call i32 @dev_to_node(i32* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call %struct.ntb_transport_mw* @kzalloc_node(i32 120, i32 %59, i32 %60)
  %62 = bitcast %struct.ntb_transport_mw* %61 to %struct.ntb_transport_ctx*
  store %struct.ntb_transport_ctx* %62, %struct.ntb_transport_ctx** %6, align 8
  %63 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %64 = icmp ne %struct.ntb_transport_ctx* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %355

68:                                               ; preds = %55
  %69 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %70 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %70, i32 0, i32 21
  store %struct.ntb_dev* %69, %struct.ntb_dev** %71, align 8
  %72 = load i64, i64* @use_msi, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp ugt i32 %75, 1
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %79 = load i32, i32* @ntb_transport_msi_desc_changed, align 4
  %80 = call i32 @ntb_msi_init(%struct.ntb_dev* %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = sub i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88, %74, %68
  %90 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %91 = call i32 @ntb_spad_count(%struct.ntb_dev* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @NTB_TRANSPORT_MIN_SPADS, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %14, align 4
  br label %350

100:                                              ; preds = %89
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MW0_SZ_HIGH, align 4
  %103 = sub i32 %101, %102
  %104 = udiv i32 %103, 2
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @min(i32 %105, i32 %106)
  %108 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %109 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %111 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 2
  %114 = load i32, i32* @MW0_SZ_HIGH, align 4
  %115 = add i32 %113, %114
  %116 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %117 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i8* @kcalloc_node(i32 %118, i32 120, i32 %119, i32 %120)
  %122 = bitcast i8* %121 to %struct.ntb_transport_ctx*
  %123 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %124 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %123, i32 0, i32 8
  store %struct.ntb_transport_ctx* %122, %struct.ntb_transport_ctx** %124, align 8
  %125 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %126 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %125, i32 0, i32 8
  %127 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %126, align 8
  %128 = icmp ne %struct.ntb_transport_ctx* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %100
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %14, align 4
  br label %350

132:                                              ; preds = %100
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %181, %132
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %184

137:                                              ; preds = %133
  %138 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %139 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %138, i32 0, i32 8
  %140 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %140, i64 %142
  %144 = bitcast %struct.ntb_transport_ctx* %143 to %struct.ntb_transport_mw*
  store %struct.ntb_transport_mw* %144, %struct.ntb_transport_mw** %7, align 8
  %145 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %148 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %147, i32 0, i32 20
  %149 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %150 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %149, i32 0, i32 19
  %151 = call i32 @ntb_peer_mw_get_addr(%struct.ntb_dev* %145, i32 %146, i32* %148, i32* %150)
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %137
  br label %327

155:                                              ; preds = %137
  %156 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %157 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %156, i32 0, i32 20
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %160 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %159, i32 0, i32 19
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ioremap_wc(i32 %158, i32 %161)
  %163 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %164 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 8
  %165 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %166 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %155
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %14, align 4
  br label %327

172:                                              ; preds = %155
  %173 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %174 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %173, i32 0, i32 18
  store i64 0, i64* %174, align 8
  %175 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %176 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %175, i32 0, i32 17
  store i64 0, i64* %176, align 8
  %177 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %178 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %177, i32 0, i32 16
  store i32* null, i32** %178, align 8
  %179 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %180 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %179, i32 0, i32 15
  store i64 0, i64* %180, align 8
  br label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %133

184:                                              ; preds = %133
  %185 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %186 = call i32 @ntb_db_valid_mask(%struct.ntb_dev* %185)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @ilog2(i32 %187)
  store i32 %188, i32* %9, align 4
  %189 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %190 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %184
  %194 = load i32, i32* %9, align 4
  %195 = sub i32 %194, 1
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = shl i32 1, %196
  %198 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %199 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %201 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %202 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ntb_db_clear_mask(%struct.ntb_dev* %200, i32 %203)
  br label %205

205:                                              ; preds = %193, %184
  %206 = load i32, i32* @max_num_clients, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i32, i32* @max_num_clients, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @max_num_clients, align 4
  store i32 %213, i32* %9, align 4
  br label %225

214:                                              ; preds = %208, %205
  %215 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %216 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %222 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %220, %214
  br label %225

225:                                              ; preds = %224, %212
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @BIT_ULL(i32 %226)
  %228 = sub nsw i32 %227, 1
  %229 = load i32, i32* %12, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %233 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %236 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %239 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @GFP_KERNEL, align 4
  %242 = load i32, i32* %13, align 4
  %243 = call i8* @kcalloc_node(i32 %240, i32 120, i32 %241, i32 %242)
  %244 = bitcast i8* %243 to %struct.ntb_transport_ctx*
  %245 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %246 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %245, i32 0, i32 10
  store %struct.ntb_transport_ctx* %244, %struct.ntb_transport_ctx** %246, align 8
  %247 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %248 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %247, i32 0, i32 10
  %249 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %248, align 8
  %250 = icmp ne %struct.ntb_transport_ctx* %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %225
  %252 = load i32, i32* @ENOMEM, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %14, align 4
  br label %327

254:                                              ; preds = %225
  %255 = load i64, i64* @nt_debugfs_dir, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %254
  %258 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %259 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @pci_name(i32 %260)
  %262 = load i64, i64* @nt_debugfs_dir, align 8
  %263 = call i32 @debugfs_create_dir(i32 %261, i64 %262)
  %264 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %265 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %264, i32 0, i32 14
  store i32 %263, i32* %265, align 4
  br label %266

266:                                              ; preds = %257, %254
  store i32 0, i32* %15, align 4
  br label %267

267:                                              ; preds = %280, %266
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* %9, align 4
  %270 = icmp ult i32 %268, %269
  br i1 %270, label %271, label %283

271:                                              ; preds = %267
  %272 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %273 = bitcast %struct.ntb_transport_ctx* %272 to %struct.ntb_transport_mw*
  %274 = load i32, i32* %15, align 4
  %275 = call i32 @ntb_transport_init_queue(%struct.ntb_transport_mw* %273, i32 %274)
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %14, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %321

279:                                              ; preds = %271
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %15, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %15, align 4
  br label %267

283:                                              ; preds = %267
  %284 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %285 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %284, i32 0, i32 13
  %286 = load i32, i32* @ntb_transport_link_work, align 4
  %287 = call i32 @INIT_DELAYED_WORK(i32* %285, i32 %286)
  %288 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %289 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %288, i32 0, i32 12
  %290 = load i32, i32* @ntb_transport_link_cleanup_work, align 4
  %291 = call i32 @INIT_WORK(i32* %289, i32 %290)
  %292 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %293 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %294 = bitcast %struct.ntb_transport_ctx* %293 to %struct.ntb_transport_mw*
  %295 = call i32 @ntb_set_ctx(%struct.ntb_dev* %292, %struct.ntb_transport_mw* %294, i32* @ntb_transport_ops)
  store i32 %295, i32* %14, align 4
  %296 = load i32, i32* %14, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %283
  br label %321

299:                                              ; preds = %283
  %300 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %301 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %300, i32 0, i32 11
  %302 = call i32 @INIT_LIST_HEAD(i32* %301)
  %303 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %304 = bitcast %struct.ntb_transport_ctx* %303 to %struct.ntb_transport_mw*
  %305 = call i32 @ntb_bus_init(%struct.ntb_transport_mw* %304)
  store i32 %305, i32* %14, align 4
  %306 = load i32, i32* %14, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %299
  br label %318

309:                                              ; preds = %299
  %310 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %311 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %310, i32 0, i32 7
  store i32 0, i32* %311, align 4
  %312 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %313 = load i32, i32* @NTB_SPEED_AUTO, align 4
  %314 = load i32, i32* @NTB_WIDTH_AUTO, align 4
  %315 = call i32 @ntb_link_enable(%struct.ntb_dev* %312, i32 %313, i32 %314)
  %316 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %317 = call i32 @ntb_link_event(%struct.ntb_dev* %316)
  store i32 0, i32* %3, align 4
  br label %355

318:                                              ; preds = %308
  %319 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %320 = call i32 @ntb_clear_ctx(%struct.ntb_dev* %319)
  br label %321

321:                                              ; preds = %318, %298, %278
  %322 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %323 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %322, i32 0, i32 10
  %324 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %323, align 8
  %325 = bitcast %struct.ntb_transport_ctx* %324 to %struct.ntb_transport_mw*
  %326 = call i32 @kfree(%struct.ntb_transport_mw* %325)
  br label %327

327:                                              ; preds = %321, %251, %169, %154
  br label %328

328:                                              ; preds = %332, %327
  %329 = load i32, i32* %15, align 4
  %330 = add nsw i32 %329, -1
  store i32 %330, i32* %15, align 4
  %331 = icmp ne i32 %329, 0
  br i1 %331, label %332, label %344

332:                                              ; preds = %328
  %333 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %334 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %333, i32 0, i32 8
  %335 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %334, align 8
  %336 = load i32, i32* %15, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %335, i64 %337
  %339 = bitcast %struct.ntb_transport_ctx* %338 to %struct.ntb_transport_mw*
  store %struct.ntb_transport_mw* %339, %struct.ntb_transport_mw** %7, align 8
  %340 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %341 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %340, i32 0, i32 9
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @iounmap(i32 %342)
  br label %328

344:                                              ; preds = %328
  %345 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %346 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %345, i32 0, i32 8
  %347 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %346, align 8
  %348 = bitcast %struct.ntb_transport_ctx* %347 to %struct.ntb_transport_mw*
  %349 = call i32 @kfree(%struct.ntb_transport_mw* %348)
  br label %350

350:                                              ; preds = %344, %129, %95
  %351 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  %352 = bitcast %struct.ntb_transport_ctx* %351 to %struct.ntb_transport_mw*
  %353 = call i32 @kfree(%struct.ntb_transport_mw* %352)
  %354 = load i32, i32* %14, align 4
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %350, %309, %65, %24
  %356 = load i32, i32* %3, align 4
  ret i32 %356
}

declare dso_local i32 @ntb_peer_mw_count(%struct.ntb_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @ntb_db_is_unsafe(%struct.ntb_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @ntb_spad_is_unsafe(%struct.ntb_dev*) #1

declare dso_local i64 @ntb_peer_port_count(%struct.ntb_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local %struct.ntb_transport_mw* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @ntb_msi_init(%struct.ntb_dev*, i32) #1

declare dso_local i32 @ntb_spad_count(%struct.ntb_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @ntb_peer_mw_get_addr(%struct.ntb_dev*, i32, i32*, i32*) #1

declare dso_local i32 @ioremap_wc(i32, i32) #1

declare dso_local i32 @ntb_db_valid_mask(%struct.ntb_dev*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @ntb_db_clear_mask(%struct.ntb_dev*, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i64) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @ntb_transport_init_queue(%struct.ntb_transport_mw*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ntb_set_ctx(%struct.ntb_dev*, %struct.ntb_transport_mw*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ntb_bus_init(%struct.ntb_transport_mw*) #1

declare dso_local i32 @ntb_link_enable(%struct.ntb_dev*, i32, i32) #1

declare dso_local i32 @ntb_link_event(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_clear_ctx(%struct.ntb_dev*) #1

declare dso_local i32 @kfree(%struct.ntb_transport_mw*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
