; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fc_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fc_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_23__, i32, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_17__*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.lpfc_acqe_fc_la = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_21__, i32, i32 (%struct.lpfc_hba*, %struct.TYPE_15__*)* }
%struct.TYPE_21__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.lpfc_mbx_read_top = type { i32 }

@lpfc_trailer_type = common dso_local global i32 0, align 4
@LPFC_FC_LA_EVENT_TYPE_FC_LINK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"2895 Non FC link Event detected.(%d)\0A\00", align 1
@lpfc_acqe_fc_la_att_type = common dso_local global i32 0, align 4
@LPFC_FC_LA_TYPE_TRUNKING_EVENT = common dso_local global i32 0, align 4
@LPFC_TRAILER_CODE_FC = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_speed = common dso_local global i32 0, align 4
@LPFC_ASYNC_LINK_DUPLEX_FULL = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_topology = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_port_type = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_port_number = common dso_local global i32 0, align 4
@lpfc_acqe_link_fault = common dso_local global i32 0, align 4
@LPFC_FC_LA_TYPE_LINK_DOWN = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_llink_spd = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [120 x i8] c"2896 Async FC event - Speed:%dGBaud Topology:x%x LA Type:x%x Port Type:%d Port Number:%d Logical speed:%dMbps Fault:%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"2897 The mboxq allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"2898 The lpfc_dmabuf allocation failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"2899 The mbuf allocation failed\0A\00", align 1
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_FC_LA_TYPE_LINK_UP = common dso_local global i32 0, align 4
@LS_MDS_LINK_DOWN = common dso_local global i32 0, align 4
@LS_MDS_LOOPBACK = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@LPFC_FC_LA_TYPE_UNEXP_WWPN = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_att_type = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_acqe_fc_la*)* @lpfc_sli4_async_fc_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_async_fc_evt(%struct.lpfc_hba* %0, %struct.lpfc_acqe_fc_la* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_acqe_fc_la*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.lpfc_mbx_read_top*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_acqe_fc_la* %1, %struct.lpfc_acqe_fc_la** %4, align 8
  %10 = load i32, i32* @lpfc_trailer_type, align 4
  %11 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %12 = call i32 @bf_get(i32 %10, %struct.lpfc_acqe_fc_la* %11)
  %13 = load i32, i32* @LPFC_FC_LA_EVENT_TYPE_FC_LINK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @LOG_SLI, align 4
  %19 = load i32, i32* @lpfc_trailer_type, align 4
  %20 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %21 = call i32 @bf_get(i32 %19, %struct.lpfc_acqe_fc_la* %20)
  %22 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %315

23:                                               ; preds = %2
  %24 = load i32, i32* @lpfc_acqe_fc_la_att_type, align 4
  %25 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %26 = call i32 @bf_get(i32 %24, %struct.lpfc_acqe_fc_la* %25)
  %27 = load i32, i32* @LPFC_FC_LA_TYPE_TRUNKING_EVENT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %32 = call i32 @lpfc_update_trunk_link_status(%struct.lpfc_hba* %30, %struct.lpfc_acqe_fc_la* %31)
  br label %315

33:                                               ; preds = %23
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = load i32, i32* @LPFC_TRAILER_CODE_FC, align 4
  %36 = load i32, i32* @lpfc_acqe_fc_la_speed, align 4
  %37 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %38 = call i32 @bf_get(i32 %36, %struct.lpfc_acqe_fc_la* %37)
  %39 = call i32 @lpfc_sli4_port_speed_parse(%struct.lpfc_hba* %34, i32 %35, i32 %38)
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 6
  store i32 %39, i32* %43, align 8
  %44 = load i32, i32* @LPFC_ASYNC_LINK_DUPLEX_FULL, align 4
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 7
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @lpfc_acqe_fc_la_topology, align 4
  %50 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %51 = call i32 @bf_get(i32 %49, %struct.lpfc_acqe_fc_la* %50)
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* @lpfc_acqe_fc_la_att_type, align 4
  %57 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %58 = call i32 @bf_get(i32 %56, %struct.lpfc_acqe_fc_la* %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @lpfc_acqe_fc_la_port_type, align 4
  %64 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %65 = call i32 @bf_get(i32 %63, %struct.lpfc_acqe_fc_la* %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* @lpfc_acqe_fc_la_port_number, align 4
  %71 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %72 = call i32 @bf_get(i32 %70, %struct.lpfc_acqe_fc_la* %71)
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @lpfc_acqe_link_fault, align 4
  %78 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %79 = call i32 @bf_get(i32 %77, %struct.lpfc_acqe_fc_la* %78)
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 4
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @lpfc_acqe_fc_la_att_type, align 4
  %85 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %86 = call i32 @bf_get(i32 %84, %struct.lpfc_acqe_fc_la* %85)
  %87 = load i32, i32* @LPFC_FC_LA_TYPE_LINK_DOWN, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %33
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 5
  store i32 0, i32* %93, align 4
  br label %110

94:                                               ; preds = %33
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @lpfc_acqe_fc_la_llink_spd, align 4
  %102 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %103 = call i32 @bf_get(i32 %101, %struct.lpfc_acqe_fc_la* %102)
  %104 = mul nsw i32 %103, 10
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 5
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %100, %94
  br label %110

110:                                              ; preds = %109, %89
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %112 = load i32, i32* @KERN_INFO, align 4
  %113 = load i32, i32* @LOG_SLI, align 4
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %123, i32 %128, i32 %133, i32 %138, i32 %143, i32 %148)
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i64 @mempool_alloc(i32 %152, i32 %153)
  %155 = inttoptr i64 %154 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %155, %struct.TYPE_15__** %6, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = icmp ne %struct.TYPE_15__* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %110
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %160 = load i32, i32* @KERN_ERR, align 4
  %161 = load i32, i32* @LOG_SLI, align 4
  %162 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %159, i32 %160, i32 %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %315

163:                                              ; preds = %110
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call %struct.lpfc_dmabuf* @kmalloc(i32 8, i32 %164)
  store %struct.lpfc_dmabuf* %165, %struct.lpfc_dmabuf** %5, align 8
  %166 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %167 = icmp ne %struct.lpfc_dmabuf* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %170 = load i32, i32* @KERN_ERR, align 4
  %171 = load i32, i32* @LOG_SLI, align 4
  %172 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %169, i32 %170, i32 %171, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %309

173:                                              ; preds = %163
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %175 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %176 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %175, i32 0, i32 1
  %177 = call i32 @lpfc_mbuf_alloc(%struct.lpfc_hba* %174, i32 0, i32* %176)
  %178 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %179 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %181 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %173
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %186 = load i32, i32* @KERN_ERR, align 4
  %187 = load i32, i32* @LOG_SLI, align 4
  %188 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %185, i32 %186, i32 %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %306

189:                                              ; preds = %173
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %191 = call i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba* %190)
  %192 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %192
  store i32 %201, i32* %199, align 4
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %203 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %210 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %211 = call i32 @lpfc_read_topology(%struct.lpfc_hba* %208, %struct.TYPE_15__* %209, %struct.lpfc_dmabuf* %210)
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  store i32 (%struct.lpfc_hba*, %struct.TYPE_15__*)* @lpfc_mbx_cmpl_read_topology, i32 (%struct.lpfc_hba*, %struct.TYPE_15__*)** %213, align 8
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %215 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %220 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @LPFC_FC_LA_TYPE_LINK_UP, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %296

226:                                              ; preds = %189
  %227 = load i32, i32* @LS_MDS_LINK_DOWN, align 4
  %228 = load i32, i32* @LS_MDS_LOOPBACK, align 4
  %229 = or i32 %227, %228
  %230 = xor i32 %229, -1
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %232 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  switch i32 %239, label %252 [
    i32 129, label %240
    i32 128, label %246
  ]

240:                                              ; preds = %226
  %241 = load i32, i32* @LS_MDS_LINK_DOWN, align 4
  %242 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %243 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %253

246:                                              ; preds = %226
  %247 = load i32, i32* @LS_MDS_LOOPBACK, align 4
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %249 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  br label %253

252:                                              ; preds = %226
  br label %253

253:                                              ; preds = %252, %246, %240
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  store %struct.TYPE_24__* %256, %struct.TYPE_24__** %7, align 8
  %257 = load i32, i32* @MBX_SUCCESS, align 4
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %261 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %262 = bitcast %struct.lpfc_acqe_fc_la* %261 to i8*
  %263 = call i32 @lpfc_sli4_parse_latt_fault(%struct.lpfc_hba* %260, i8* %262)
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 0
  %269 = bitcast i32* %268 to %struct.lpfc_mbx_read_top*
  store %struct.lpfc_mbx_read_top* %269, %struct.lpfc_mbx_read_top** %8, align 8
  %270 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %271 = getelementptr inbounds %struct.lpfc_acqe_fc_la, %struct.lpfc_acqe_fc_la* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %8, align 8
  %274 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 4
  %275 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %276 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @LPFC_FC_LA_TYPE_UNEXP_WWPN, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %253
  %283 = load i32, i32* @lpfc_mbx_read_top_att_type, align 4
  %284 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %8, align 8
  %285 = load i32, i32* @LPFC_FC_LA_TYPE_UNEXP_WWPN, align 4
  %286 = call i32 @bf_set(i32 %283, %struct.lpfc_mbx_read_top* %284, i32 %285)
  br label %292

287:                                              ; preds = %253
  %288 = load i32, i32* @lpfc_mbx_read_top_att_type, align 4
  %289 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %8, align 8
  %290 = load i32, i32* @LPFC_FC_LA_TYPE_LINK_DOWN, align 4
  %291 = call i32 @bf_set(i32 %288, %struct.lpfc_mbx_read_top* %289, i32 %290)
  br label %292

292:                                              ; preds = %287, %282
  %293 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %295 = call i32 @lpfc_mbx_cmpl_read_topology(%struct.lpfc_hba* %293, %struct.TYPE_15__* %294)
  br label %315

296:                                              ; preds = %189
  %297 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %299 = load i32, i32* @MBX_NOWAIT, align 4
  %300 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %297, %struct.TYPE_15__* %298, i32 %299)
  store i32 %300, i32* %9, align 4
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  br label %306

305:                                              ; preds = %296
  br label %315

306:                                              ; preds = %304, %184
  %307 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %308 = call i32 @kfree(%struct.lpfc_dmabuf* %307)
  br label %309

309:                                              ; preds = %306, %168
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %311 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %312 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @mempool_free(%struct.TYPE_15__* %310, i32 %313)
  br label %315

315:                                              ; preds = %309, %305, %292, %158, %29, %15
  ret void
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_acqe_fc_la*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_update_trunk_link_status(%struct.lpfc_hba*, %struct.lpfc_acqe_fc_la*) #1

declare dso_local i32 @lpfc_sli4_port_speed_parse(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_read_topology(%struct.lpfc_hba*, %struct.TYPE_15__*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbx_cmpl_read_topology(%struct.lpfc_hba*, %struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_sli4_parse_latt_fault(%struct.lpfc_hba*, i8*) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_mbx_read_top*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
