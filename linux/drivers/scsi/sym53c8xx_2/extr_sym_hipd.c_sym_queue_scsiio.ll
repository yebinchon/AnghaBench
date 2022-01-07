; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_queue_scsiio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_queue_scsiio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { %struct.sym_tcb* }
%struct.sym_tcb = type { %struct.TYPE_12__, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.scsi_cmnd = type { i64*, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.sym_ccb = type { i64, i32, i32*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i64, %struct.TYPE_14__, %struct.scsi_cmnd* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.sym_lcb = type { i32, i32, i32, i64* }

@NO_TAG = common dso_local global i32 0, align 4
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@M_SIMPLE_TAG = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@REQUEST_SENSE = common dso_local global i64 0, align 8
@select = common dso_local global i32 0, align 4
@resel_dsa = common dso_local global i32 0, align 4
@scsi_smsg = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@S_ILLEGAL = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TAGS = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TAG = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_queue_scsiio(%struct.sym_hcb* %0, %struct.scsi_cmnd* %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.sym_ccb*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.sym_tcb*, align 8
  %9 = alloca %struct.sym_lcb*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.sym_ccb* %2, %struct.sym_ccb** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %7, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %18 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %19 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %18, i32 0, i32 14
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %19, align 8
  %20 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %21 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %20, i32 0, i32 0
  %22 = load %struct.sym_tcb*, %struct.sym_tcb** %21, align 8
  %23 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %24 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %22, i64 %25
  store %struct.sym_tcb* %26, %struct.sym_tcb** %8, align 8
  %27 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %27, i32 %30)
  store %struct.sym_lcb* %31, %struct.sym_lcb** %9, align 8
  %32 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %33 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NO_TAG, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %3
  %38 = load %struct.sym_lcb*, %struct.sym_lcb** %9, align 8
  %39 = icmp ne %struct.sym_lcb* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.sym_lcb*, %struct.sym_lcb** %9, align 8
  %42 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %40, %37
  %48 = phi i1 [ false, %37 ], [ %46, %40 ]
  br label %49

49:                                               ; preds = %47, %3
  %50 = phi i1 [ true, %3 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %53 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @IDENTIFY(i32 %55, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %66 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NO_TAG, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %49
  %71 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %72 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  switch i32 %74, label %77 [
    i32 128, label %75
    i32 129, label %76
  ]

75:                                               ; preds = %70
  br label %79

76:                                               ; preds = %70
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @M_SIMPLE_TAG, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %76, %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %87 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 1
  %90 = add nsw i32 %89, 1
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %79, %49
  %97 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %98 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %97, i32 0, i32 10
  store i64 0, i64* %98, align 8
  %99 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %100 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %96
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @INQUIRY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %104
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @REQUEST_SENSE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %112, %104, %96
  %121 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %122 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %120
  %126 = load %struct.sym_lcb*, %struct.sym_lcb** %9, align 8
  %127 = icmp ne %struct.sym_lcb* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %130 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @sym_prepare_nego(%struct.sym_hcb* %129, %struct.sym_ccb* %130, i32* %134)
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %128, %125, %120, %112
  %139 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %140 = load i32, i32* @select, align 4
  %141 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %139, i32 %140)
  %142 = call i8* @cpu_to_scr(i32 %141)
  %143 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %144 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %143, i32 0, i32 13
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  store i8* %142, i8** %147, align 8
  %148 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %149 = load i32, i32* @resel_dsa, align 4
  %150 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %148, i32 %149)
  %151 = call i8* @cpu_to_scr(i32 %150)
  %152 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %153 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %152, i32 0, i32 13
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i8* %151, i8** %156, align 8
  %157 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %158 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %161 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %160, i32 0, i32 13
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i64 %159, i64* %163, align 8
  %164 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %165 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %169 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %168, i32 0, i32 13
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  store i32 %167, i32* %171, align 8
  %172 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %173 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %177 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %176, i32 0, i32 13
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i32 %175, i32* %179, align 4
  %180 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %181 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %185 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %184, i32 0, i32 13
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 8
  %188 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %189 = load i32, i32* @scsi_smsg, align 4
  %190 = call i32 @CCB_BA(%struct.sym_ccb* %188, i32 %189)
  %191 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %192 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %191, i32 0, i32 13
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  store i32 %190, i32* %194, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i8* @cpu_to_scr(i32 %195)
  %197 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %198 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %197, i32 0, i32 13
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store i8* %196, i8** %200, align 8
  %201 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %202 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %201, i32 0, i32 12
  store i64 0, i64* %202, align 8
  %203 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %204 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %203, i32 0, i32 10
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %138
  %208 = load i32, i32* @HS_NEGOTIATE, align 4
  br label %211

209:                                              ; preds = %138
  %210 = load i32, i32* @HS_BUSY, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  %213 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %214 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %213, i32 0, i32 11
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @S_ILLEGAL, align 4
  %216 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %217 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %216, i32 0, i32 9
  store i32 %215, i32* %217, align 8
  %218 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %219 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %218, i32 0, i32 8
  store i64 0, i64* %219, align 8
  %220 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %221 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %220, i32 0, i32 7
  store i64 0, i64* %221, align 8
  %222 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %223 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %222, i32 0, i32 6
  store i64 0, i64* %223, align 8
  %224 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %225 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %224, i32 0, i32 4
  store i32 -1, i32* %225, align 4
  %226 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %227 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %226, i32 0, i32 5
  store i64 0, i64* %227, align 8
  %228 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %229 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %230 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %231 = call i32 @sym_setup_data_and_start(%struct.sym_hcb* %228, %struct.scsi_cmnd* %229, %struct.sym_ccb* %230)
  ret i32 %231
}

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i32) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @sym_prepare_nego(%struct.sym_hcb*, %struct.sym_ccb*, i32*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @CCB_BA(%struct.sym_ccb*, i32) #1

declare dso_local i32 @sym_setup_data_and_start(%struct.sym_hcb*, %struct.scsi_cmnd*, %struct.sym_ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
