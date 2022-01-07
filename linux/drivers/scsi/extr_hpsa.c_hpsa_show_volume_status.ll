; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_show_volume_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_show_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32 }

@HPSA_VPD_LV_STATUS_UNSUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"C%d:B%d:T%d:L%d Volume status is not available through vital product data pages.\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"C%d:B%d:T%d:L%d Volume is undergoing background erase process.\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"C%d:B%d:T%d:L%d Volume is waiting for transforming volume.\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"C%d:B%d:T%d:L%d Volume is undergoing rapid parity init.\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"C%d:B%d:T%d:L%d Volume is queued for rapid parity initialization process.\0A\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"C%d:B%d:T%d:L%d Volume is encrypted and cannot be accessed because key is not present.\0A\00", align 1
@.str.6 = private unnamed_addr constant [111 x i8] c"C%d:B%d:T%d:L%d Volume is not encrypted and cannot be accessed because controller is in encryption-only mode.\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"C%d:B%d:T%d:L%d Volume is undergoing encryption process.\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"C%d:B%d:T%d:L%d Volume is undergoing encryption re-keying process.\0A\00", align 1
@.str.9 = private unnamed_addr constant [113 x i8] c"C%d:B%d:T%d:L%d Volume is encrypted and cannot be accessed because controller does not have encryption enabled.\0A\00", align 1
@.str.10 = private unnamed_addr constant [94 x i8] c"C%d:B%d:T%d:L%d Volume is pending migration to encrypted state, but process has not started.\0A\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"C%d:B%d:T%d:L%d Volume is encrypted and is pending encryption rekeying.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*)* @hpsa_show_volume_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_show_volume_status(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %4, align 8
  %5 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %6 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HPSA_VPD_LV_STATUS_UNSUPPORTED, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %12 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %21 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %24 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %27 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %10, %2
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %32 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %255 [
    i32 136, label %34
    i32 129, label %35
    i32 137, label %55
    i32 128, label %75
    i32 133, label %95
    i32 138, label %115
    i32 132, label %135
    i32 131, label %155
    i32 130, label %175
    i32 139, label %195
    i32 135, label %215
    i32 134, label %235
  ]

34:                                               ; preds = %30
  br label %255

35:                                               ; preds = %30
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %37 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %41 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %46 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %49 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %52 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53)
  br label %255

55:                                               ; preds = %30
  %56 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %57 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %61 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %66 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %69 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %72 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67, i32 %70, i32 %73)
  br label %255

75:                                               ; preds = %30
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %77 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %81 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %86 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %89 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %92 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87, i32 %90, i32 %93)
  br label %255

95:                                               ; preds = %30
  %96 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %97 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %101 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %106 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %109 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %112 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_info(i32* %99, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %113)
  br label %255

115:                                              ; preds = %30
  %116 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %117 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %121 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %126 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %129 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %132 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_info(i32* %119, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %127, i32 %130, i32 %133)
  br label %255

135:                                              ; preds = %30
  %136 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %137 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %141 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %146 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %149 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %152 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dev_info(i32* %139, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %147, i32 %150, i32 %153)
  br label %255

155:                                              ; preds = %30
  %156 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %157 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %161 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %166 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %169 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %172 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dev_info(i32* %159, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %164, i32 %167, i32 %170, i32 %173)
  br label %255

175:                                              ; preds = %30
  %176 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %177 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %176, i32 0, i32 1
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %181 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %186 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %189 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %192 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @dev_info(i32* %179, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %184, i32 %187, i32 %190, i32 %193)
  br label %255

195:                                              ; preds = %30
  %196 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %197 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %196, i32 0, i32 1
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %201 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %200, i32 0, i32 0
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %206 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %209 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %212 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @dev_info(i32* %199, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.9, i64 0, i64 0), i32 %204, i32 %207, i32 %210, i32 %213)
  br label %255

215:                                              ; preds = %30
  %216 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %217 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %216, i32 0, i32 1
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %221 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %220, i32 0, i32 0
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %226 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %229 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %232 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @dev_info(i32* %219, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.10, i64 0, i64 0), i32 %224, i32 %227, i32 %230, i32 %233)
  br label %255

235:                                              ; preds = %30
  %236 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %237 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %236, i32 0, i32 1
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %241 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %240, i32 0, i32 0
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %246 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %249 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %252 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @dev_info(i32* %239, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0), i32 %244, i32 %247, i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %30, %235, %215, %195, %175, %155, %135, %115, %95, %75, %55, %35, %34
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
