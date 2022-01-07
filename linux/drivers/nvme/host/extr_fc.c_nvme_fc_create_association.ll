; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_create_association.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_create_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i64, i32, i64, i32, i64, i32, %struct.nvmf_ctrl_options* }
%struct.nvmf_ctrl_options = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }

@FC_OBJSTATE_ONLINE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOTUNIQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"NVME-FC{%d}: create association : host wwpn 0x%016llx  rport wwpn 0x%016llx: NQN \22%s\22\0A\00", align 1
@NVME_AQ_DEPTH = common dso_local global i32 0, align 4
@NVME_FC_Q_LIVE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"icdoff %d is not supported!\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"queue_size %zu > ctrl maxcmd %u, reducing to queue_size\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"queue_size %zu > ctrl sqsize %u, clamping down\0A\00", align 1
@NVME_CTRL_LIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*)* @nvme_fc_create_association to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_create_association(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca %struct.nvmf_ctrl_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  %7 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 8
  %10 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %9, align 8
  store %struct.nvmf_ctrl_options* %10, %struct.nvmf_ctrl_options** %4, align 8
  %11 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %16, i32 0, i32 5
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %273

27:                                               ; preds = %1
  %28 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %29 = call i64 @nvme_fc_ctlr_active_on_rport(%struct.nvme_fc_ctrl* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOTUNIQ, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %273

34:                                               ; preds = %27
  %35 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %42, i32 0, i32 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %48, i32 0, i32 5
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 8
  %57 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %56, align 8
  %58 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_info(i32 %38, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %47, i32 %53, i32 %59)
  %61 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %62 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %62, i32 0, i32 1
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i64 0
  %66 = load i32, i32* @NVME_AQ_DEPTH, align 4
  %67 = call i32 @__nvme_fc_create_hw_queue(%struct.nvme_fc_ctrl* %61, %struct.TYPE_21__* %65, i32 0, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %34
  br label %262

71:                                               ; preds = %34
  %72 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %73 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %74 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %73, i32 0, i32 1
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 0
  %77 = load i32, i32* @NVME_AQ_DEPTH, align 4
  %78 = load i32, i32* @NVME_AQ_DEPTH, align 4
  %79 = sdiv i32 %78, 4
  %80 = call i32 @nvme_fc_connect_admin_queue(%struct.nvme_fc_ctrl* %72, %struct.TYPE_21__* %76, i32 %77, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %255

84:                                               ; preds = %71
  %85 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %86 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %85, i32 0, i32 2
  %87 = call i32 @nvmf_connect_admin_queue(%struct.TYPE_20__* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %252

91:                                               ; preds = %84
  %92 = load i32, i32* @NVME_FC_Q_LIVE, align 4
  %93 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %94 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %93, i32 0, i32 1
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %92, i32* %97)
  %99 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %100 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %99, i32 0, i32 2
  %101 = call i32 @nvme_enable_ctrl(%struct.TYPE_20__* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %252

105:                                              ; preds = %91
  %106 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %107 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %106, i32 0, i32 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* @PAGE_SHIFT, align 4
  %115 = sub nsw i32 %114, 9
  %116 = shl i32 %113, %115
  %117 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %118 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %121 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @blk_mq_unquiesce_queue(i32 %123)
  %125 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %126 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %125, i32 0, i32 2
  %127 = call i32 @nvme_init_identify(%struct.TYPE_20__* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %105
  br label %252

131:                                              ; preds = %105
  %132 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %133 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %139 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %143 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %145)
  br label %252

147:                                              ; preds = %131
  %148 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %149 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %152 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %150, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %147
  %157 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %158 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %162 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %165 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @dev_warn(i32 %160, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %163, i64 %167)
  %169 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %170 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %174 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %156, %147
  %176 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %177 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %180 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  %184 = icmp sgt i64 %178, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %175
  %186 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %187 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %191 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %194 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 1
  %198 = call i32 @dev_warn(i32 %189, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %192, i64 %197)
  %199 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %200 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  %204 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %205 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %185, %175
  %207 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %208 = call i32 @nvme_fc_init_aen_ops(%struct.nvme_fc_ctrl* %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %249

212:                                              ; preds = %206
  %213 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %214 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp sgt i32 %216, 1
  br i1 %217, label %218, label %234

218:                                              ; preds = %212
  %219 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %220 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %225 = call i32 @nvme_fc_create_io_queues(%struct.nvme_fc_ctrl* %224)
  store i32 %225, i32* %5, align 4
  br label %229

226:                                              ; preds = %218
  %227 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %228 = call i32 @nvme_fc_recreate_io_queues(%struct.nvme_fc_ctrl* %227)
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %226, %223
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  br label %249

233:                                              ; preds = %229
  br label %234

234:                                              ; preds = %233, %212
  %235 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %236 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %235, i32 0, i32 2
  %237 = load i32, i32* @NVME_CTRL_LIVE, align 4
  %238 = call i32 @nvme_change_ctrl_state(%struct.TYPE_20__* %236, i32 %237)
  store i32 %238, i32* %6, align 4
  %239 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %240 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 4
  store i64 0, i64* %241, align 8
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %234
  %245 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %246 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %245, i32 0, i32 2
  %247 = call i32 @nvme_start_ctrl(%struct.TYPE_20__* %246)
  br label %248

248:                                              ; preds = %244, %234
  store i32 0, i32* %2, align 4
  br label %273

249:                                              ; preds = %232, %211
  %250 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %251 = call i32 @nvme_fc_term_aen_ops(%struct.nvme_fc_ctrl* %250)
  br label %252

252:                                              ; preds = %249, %137, %130, %104, %90
  %253 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %254 = call i32 @nvme_fc_xmt_disconnect_assoc(%struct.nvme_fc_ctrl* %253)
  br label %255

255:                                              ; preds = %252, %83
  %256 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %257 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %258 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %257, i32 0, i32 1
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i64 0
  %261 = call i32 @__nvme_fc_delete_hw_queue(%struct.nvme_fc_ctrl* %256, %struct.TYPE_21__* %260, i32 0)
  br label %262

262:                                              ; preds = %255, %70
  %263 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %264 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %263, i32 0, i32 1
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i64 0
  %267 = call i32 @nvme_fc_free_queue(%struct.TYPE_21__* %266)
  %268 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %269 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %268, i32 0, i32 0
  store i32 0, i32* %269, align 8
  %270 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %271 = call i32 @nvme_fc_ctlr_inactive_on_rport(%struct.nvme_fc_ctrl* %270)
  %272 = load i32, i32* %5, align 4
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %262, %248, %31, %24
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i64 @nvme_fc_ctlr_active_on_rport(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @__nvme_fc_create_hw_queue(%struct.nvme_fc_ctrl*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @nvme_fc_connect_admin_queue(%struct.nvme_fc_ctrl*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @nvmf_connect_admin_queue(%struct.TYPE_20__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nvme_enable_ctrl(%struct.TYPE_20__*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32) #1

declare dso_local i32 @nvme_init_identify(%struct.TYPE_20__*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @nvme_fc_init_aen_ops(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_fc_create_io_queues(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_fc_recreate_io_queues(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_change_ctrl_state(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @nvme_start_ctrl(%struct.TYPE_20__*) #1

declare dso_local i32 @nvme_fc_term_aen_ops(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_fc_xmt_disconnect_assoc(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @__nvme_fc_delete_hw_queue(%struct.nvme_fc_ctrl*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @nvme_fc_free_queue(%struct.TYPE_21__*) #1

declare dso_local i32 @nvme_fc_ctlr_inactive_on_rport(%struct.nvme_fc_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
