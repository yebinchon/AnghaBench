; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.st_rproc = type { i32, %struct.mbox_chan**, %struct.TYPE_2__, %struct.TYPE_2__, i32, %struct.st_rproc_config* }
%struct.mbox_chan = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, %struct.device* }
%struct.st_rproc_config = type { i32 }
%struct.rproc = type { i32, %struct.device, i32, i32, %struct.st_rproc* }

@st_rproc_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@st_rproc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RPROC_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mbox-names\00", align 1
@st_rproc_mbox_callback_vq0 = common dso_local global i32 0, align 4
@st_rproc_mbox_callback_vq1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"vq0_rx\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to request mbox chan 0\0A\00", align 1
@ST_RPROC_VQ0 = common dso_local global i64 0, align 8
@MBOX_MAX = common dso_local global i64 0, align 8
@MBOX_RX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"vq0_tx\00", align 1
@MBOX_TX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"vq1_rx\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to request mbox chan 1\0A\00", align 1
@ST_RPROC_VQ1 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"vq1_tx\00", align 1
@ST_RPROC_MAX_VRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_rproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.st_rproc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.rproc*, align 8
  %9 = alloca %struct.mbox_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load i32, i32* @st_rproc_match, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.of_device_id* @of_match_device(i32 %18, %struct.device* %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %5, align 8
  %21 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %22 = icmp ne %struct.of_device_id* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %257

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = getelementptr inbounds %struct.device_node, %struct.device_node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.rproc* @rproc_alloc(%struct.device* %34, i32 %37, i32* @st_rproc_ops, i32* null, i32 96)
  store %struct.rproc* %38, %struct.rproc** %8, align 8
  %39 = load %struct.rproc*, %struct.rproc** %8, align 8
  %40 = icmp ne %struct.rproc* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %257

44:                                               ; preds = %33
  %45 = load %struct.rproc*, %struct.rproc** %8, align 8
  %46 = getelementptr inbounds %struct.rproc, %struct.rproc* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.rproc*, %struct.rproc** %8, align 8
  %48 = getelementptr inbounds %struct.rproc, %struct.rproc* %47, i32 0, i32 4
  %49 = load %struct.st_rproc*, %struct.st_rproc** %48, align 8
  store %struct.st_rproc* %49, %struct.st_rproc** %6, align 8
  %50 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.st_rproc_config*
  %54 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %55 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %54, i32 0, i32 5
  store %struct.st_rproc_config* %53, %struct.st_rproc_config** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.rproc*, %struct.rproc** %8, align 8
  %58 = call i32 @platform_set_drvdata(%struct.platform_device* %56, %struct.rproc* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i32 @st_rproc_parse_dt(%struct.platform_device* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %253

64:                                               ; preds = %44
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i32 @st_rproc_state(%struct.platform_device* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %11, align 4
  br label %248

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.rproc*, %struct.rproc** %8, align 8
  %76 = getelementptr inbounds %struct.rproc, %struct.rproc* %75, i32 0, i32 3
  %77 = call i32 @atomic_inc(i32* %76)
  %78 = load i32, i32* @RPROC_RUNNING, align 4
  %79 = load %struct.rproc*, %struct.rproc** %8, align 8
  %80 = getelementptr inbounds %struct.rproc, %struct.rproc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %89

81:                                               ; preds = %71
  %82 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %83 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %86 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @clk_set_rate(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %81, %74
  %90 = load %struct.device_node*, %struct.device_node** %7, align 8
  %91 = call i64 @of_get_property(%struct.device_node* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %220

93:                                               ; preds = %89
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %96 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store %struct.device* %94, %struct.device** %97, align 8
  %98 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %99 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store i32* null, i32** %100, align 8
  %101 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %102 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %105 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* @st_rproc_mbox_callback_vq0, align 4
  %108 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %109 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %113 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  store %struct.device* %111, %struct.device** %114, align 8
  %115 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %116 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  store i32* null, i32** %117, align 8
  %118 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %119 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %122 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* @st_rproc_mbox_callback_vq1, align 4
  %125 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %126 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  %128 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %129 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %128, i32 0, i32 3
  %130 = call %struct.mbox_chan* @mbox_request_channel_byname(%struct.TYPE_2__* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.mbox_chan* %130, %struct.mbox_chan** %9, align 8
  %131 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %132 = call i64 @IS_ERR(%struct.mbox_chan* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %93
  %135 = load %struct.rproc*, %struct.rproc** %8, align 8
  %136 = getelementptr inbounds %struct.rproc, %struct.rproc* %135, i32 0, i32 1
  %137 = call i32 @dev_err(%struct.device* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %138 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %139 = call i32 @PTR_ERR(%struct.mbox_chan* %138)
  store i32 %139, i32* %11, align 4
  br label %248

140:                                              ; preds = %93
  %141 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %142 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %143 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %142, i32 0, i32 1
  %144 = load %struct.mbox_chan**, %struct.mbox_chan*** %143, align 8
  %145 = load i64, i64* @ST_RPROC_VQ0, align 8
  %146 = load i64, i64* @MBOX_MAX, align 8
  %147 = mul i64 %145, %146
  %148 = load i64, i64* @MBOX_RX, align 8
  %149 = add i64 %147, %148
  %150 = getelementptr inbounds %struct.mbox_chan*, %struct.mbox_chan** %144, i64 %149
  store %struct.mbox_chan* %141, %struct.mbox_chan** %150, align 8
  %151 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %152 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %151, i32 0, i32 3
  %153 = call %struct.mbox_chan* @mbox_request_channel_byname(%struct.TYPE_2__* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.mbox_chan* %153, %struct.mbox_chan** %9, align 8
  %154 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %155 = call i64 @IS_ERR(%struct.mbox_chan* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %140
  %158 = load %struct.rproc*, %struct.rproc** %8, align 8
  %159 = getelementptr inbounds %struct.rproc, %struct.rproc* %158, i32 0, i32 1
  %160 = call i32 @dev_err(%struct.device* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %161 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %162 = call i32 @PTR_ERR(%struct.mbox_chan* %161)
  store i32 %162, i32* %11, align 4
  br label %227

163:                                              ; preds = %140
  %164 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %165 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %166 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %165, i32 0, i32 1
  %167 = load %struct.mbox_chan**, %struct.mbox_chan*** %166, align 8
  %168 = load i64, i64* @ST_RPROC_VQ0, align 8
  %169 = load i64, i64* @MBOX_MAX, align 8
  %170 = mul i64 %168, %169
  %171 = load i64, i64* @MBOX_TX, align 8
  %172 = add i64 %170, %171
  %173 = getelementptr inbounds %struct.mbox_chan*, %struct.mbox_chan** %167, i64 %172
  store %struct.mbox_chan* %164, %struct.mbox_chan** %173, align 8
  %174 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %175 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %174, i32 0, i32 2
  %176 = call %struct.mbox_chan* @mbox_request_channel_byname(%struct.TYPE_2__* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store %struct.mbox_chan* %176, %struct.mbox_chan** %9, align 8
  %177 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %178 = call i64 @IS_ERR(%struct.mbox_chan* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %163
  %181 = load %struct.rproc*, %struct.rproc** %8, align 8
  %182 = getelementptr inbounds %struct.rproc, %struct.rproc* %181, i32 0, i32 1
  %183 = call i32 @dev_err(%struct.device* %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %184 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %185 = call i32 @PTR_ERR(%struct.mbox_chan* %184)
  store i32 %185, i32* %11, align 4
  br label %227

186:                                              ; preds = %163
  %187 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %188 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %189 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %188, i32 0, i32 1
  %190 = load %struct.mbox_chan**, %struct.mbox_chan*** %189, align 8
  %191 = load i64, i64* @ST_RPROC_VQ1, align 8
  %192 = load i64, i64* @MBOX_MAX, align 8
  %193 = mul i64 %191, %192
  %194 = load i64, i64* @MBOX_RX, align 8
  %195 = add i64 %193, %194
  %196 = getelementptr inbounds %struct.mbox_chan*, %struct.mbox_chan** %190, i64 %195
  store %struct.mbox_chan* %187, %struct.mbox_chan** %196, align 8
  %197 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %198 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %197, i32 0, i32 2
  %199 = call %struct.mbox_chan* @mbox_request_channel_byname(%struct.TYPE_2__* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store %struct.mbox_chan* %199, %struct.mbox_chan** %9, align 8
  %200 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %201 = call i64 @IS_ERR(%struct.mbox_chan* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %186
  %204 = load %struct.rproc*, %struct.rproc** %8, align 8
  %205 = getelementptr inbounds %struct.rproc, %struct.rproc* %204, i32 0, i32 1
  %206 = call i32 @dev_err(%struct.device* %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %207 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %208 = call i32 @PTR_ERR(%struct.mbox_chan* %207)
  store i32 %208, i32* %11, align 4
  br label %227

209:                                              ; preds = %186
  %210 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %211 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %212 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %211, i32 0, i32 1
  %213 = load %struct.mbox_chan**, %struct.mbox_chan*** %212, align 8
  %214 = load i64, i64* @ST_RPROC_VQ1, align 8
  %215 = load i64, i64* @MBOX_MAX, align 8
  %216 = mul i64 %214, %215
  %217 = load i64, i64* @MBOX_TX, align 8
  %218 = add i64 %216, %217
  %219 = getelementptr inbounds %struct.mbox_chan*, %struct.mbox_chan** %213, i64 %218
  store %struct.mbox_chan* %210, %struct.mbox_chan** %219, align 8
  br label %220

220:                                              ; preds = %209, %89
  %221 = load %struct.rproc*, %struct.rproc** %8, align 8
  %222 = call i32 @rproc_add(%struct.rproc* %221)
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %227

226:                                              ; preds = %220
  store i32 0, i32* %2, align 4
  br label %257

227:                                              ; preds = %225, %203, %180, %157
  store i32 0, i32* %12, align 4
  br label %228

228:                                              ; preds = %244, %227
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* @ST_RPROC_MAX_VRING, align 8
  %232 = load i64, i64* @MBOX_MAX, align 8
  %233 = mul i64 %231, %232
  %234 = icmp ult i64 %230, %233
  br i1 %234, label %235, label %247

235:                                              ; preds = %228
  %236 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %237 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %236, i32 0, i32 1
  %238 = load %struct.mbox_chan**, %struct.mbox_chan*** %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.mbox_chan*, %struct.mbox_chan** %238, i64 %240
  %242 = load %struct.mbox_chan*, %struct.mbox_chan** %241, align 8
  %243 = call i32 @mbox_free_channel(%struct.mbox_chan* %242)
  br label %244

244:                                              ; preds = %235
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %228

247:                                              ; preds = %228
  br label %248

248:                                              ; preds = %247, %134, %69
  %249 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %250 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @clk_unprepare(i32 %251)
  br label %253

253:                                              ; preds = %248, %63
  %254 = load %struct.rproc*, %struct.rproc** %8, align 8
  %255 = call i32 @rproc_free(%struct.rproc* %254)
  %256 = load i32, i32* %11, align 4
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %253, %226, %41, %28
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.rproc* @rproc_alloc(%struct.device*, i32, i32*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rproc*) #1

declare dso_local i32 @st_rproc_parse_dt(%struct.platform_device*) #1

declare dso_local i32 @st_rproc_state(%struct.platform_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.mbox_chan* @mbox_request_channel_byname(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.mbox_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.mbox_chan*) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @mbox_free_channel(%struct.mbox_chan*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
