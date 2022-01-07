; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_init_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i8* }

@FLAGS_TOPOLOGY_FAILOVER = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LANCER_G6_FC = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LANCER_G7_FC = common dso_local global i64 0, align 8
@FLAGS_IMED_ABORT = common dso_local global i32 0, align 4
@FLAGS_LINK_SPEED = common dso_local global i32 0, align 4
@LINK_SPEED_1G = common dso_local global i8* null, align 8
@LINK_SPEED_2G = common dso_local global i8* null, align 8
@LINK_SPEED_4G = common dso_local global i8* null, align 8
@LINK_SPEED_8G = common dso_local global i8* null, align 8
@LINK_SPEED_10G = common dso_local global i8* null, align 8
@LINK_SPEED_16G = common dso_local global i8* null, align 8
@LINK_SPEED_32G = common dso_local global i8* null, align 8
@LINK_SPEED_64G = common dso_local global i8* null, align 8
@LINK_SPEED_AUTO = common dso_local global i8* null, align 8
@MBX_INIT_LINK = common dso_local global i64 0, align 8
@OWN_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_init_link(%struct.lpfc_hba* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = call i32 @memset(%struct.TYPE_18__* %14, i32 0, i32 32)
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %56 [
    i32 139, label %17
    i32 137, label %29
    i32 140, label %34
    i32 138, label %39
    i32 141, label %51
  ]

17:                                               ; preds = %4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i32 140, i32* %21, align 8
  %22 = load i32, i32* @FLAGS_TOPOLOGY_FAILOVER, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 8
  br label %56

29:                                               ; preds = %4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i32 137, i32* %33, align 8
  br label %56

34:                                               ; preds = %4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 140, i32* %38, align 8
  br label %56

39:                                               ; preds = %4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32 137, i32* %43, align 8
  %44 = load i32, i32* @FLAGS_TOPOLOGY_FAILOVER, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 8
  br label %56

51:                                               ; preds = %4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 141, i32* %55, align 8
  br label %56

56:                                               ; preds = %4, %51, %39, %34, %29, %17
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 3
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCI_DEVICE_ID_LANCER_G6_FC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 3
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCI_DEVICE_ID_LANCER_G7_FC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %64, %56
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 140
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 137, i32* %84, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  store i32 137, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %72, %64
  %88 = load i32, i32* @FLAGS_IMED_ABORT, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 2
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %9, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 2
  br i1 %101, label %102, label %216

102:                                              ; preds = %87
  %103 = load i32, i32* %8, align 4
  switch i32 %103, label %209 [
    i32 134, label %104
    i32 133, label %117
    i32 131, label %130
    i32 129, label %143
    i32 136, label %156
    i32 135, label %169
    i32 132, label %182
    i32 130, label %195
    i32 128, label %208
  ]

104:                                              ; preds = %102
  %105 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 8
  %112 = load i8*, i8** @LINK_SPEED_1G, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i8* %112, i8** %116, align 8
  br label %215

117:                                              ; preds = %102
  %118 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 8
  %125 = load i8*, i8** @LINK_SPEED_2G, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  store i8* %125, i8** %129, align 8
  br label %215

130:                                              ; preds = %102
  %131 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 8
  %138 = load i8*, i8** @LINK_SPEED_4G, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  store i8* %138, i8** %142, align 8
  br label %215

143:                                              ; preds = %102
  %144 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %144
  store i32 %150, i32* %148, align 8
  %151 = load i8*, i8** @LINK_SPEED_8G, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  store i8* %151, i8** %155, align 8
  br label %215

156:                                              ; preds = %102
  %157 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %157
  store i32 %163, i32* %161, align 8
  %164 = load i8*, i8** @LINK_SPEED_10G, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  store i8* %164, i8** %168, align 8
  br label %215

169:                                              ; preds = %102
  %170 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %170
  store i32 %176, i32* %174, align 8
  %177 = load i8*, i8** @LINK_SPEED_16G, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  store i8* %177, i8** %181, align 8
  br label %215

182:                                              ; preds = %102
  %183 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 8
  %190 = load i8*, i8** @LINK_SPEED_32G, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  store i8* %190, i8** %194, align 8
  br label %215

195:                                              ; preds = %102
  %196 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %196
  store i32 %202, i32* %200, align 8
  %203 = load i8*, i8** @LINK_SPEED_64G, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 2
  store i8* %203, i8** %207, align 8
  br label %215

208:                                              ; preds = %102
  br label %209

209:                                              ; preds = %102, %208
  %210 = load i8*, i8** @LINK_SPEED_AUTO, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  store i8* %210, i8** %214, align 8
  br label %215

215:                                              ; preds = %209, %195, %182, %169, %156, %143, %130, %117, %104
  br label %222

216:                                              ; preds = %87
  %217 = load i8*, i8** @LINK_SPEED_AUTO, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  store i8* %217, i8** %221, align 8
  br label %222

222:                                              ; preds = %216, %215
  %223 = load i64, i64* @MBX_INIT_LINK, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* @OWN_HOST, align 4
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
