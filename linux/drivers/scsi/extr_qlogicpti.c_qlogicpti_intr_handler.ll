; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i8*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.qlogicpti = type { i32, i64, i64, i32*, %struct.TYPE_5__*, i32, %struct.scsi_cmnd**, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.Status_Entry = type { i64, i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@SBUS_STAT = common dso_local global i64 0, align 8
@SBUS_STAT_RINT = common dso_local global i32 0, align 4
@MBOX5 = common dso_local global i64 0, align 8
@HCCTRL_CRIRQ = common dso_local global i64 0, align 8
@HCCTRL = common dso_local global i64 0, align 8
@SBUS_SEMAPHORE = common dso_local global i64 0, align 8
@SBUS_SEMAPHORE_LCK = common dso_local global i32 0, align 4
@MBOX0 = common dso_local global i64 0, align 8
@CS_RESET_OCCURRED = common dso_local global i64 0, align 8
@CS_ABORTED = common dso_local global i64 0, align 8
@STF_BUS_RESET = common dso_local global i32 0, align 4
@SF_GOT_SENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@ENTRY_STATUS = common dso_local global i64 0, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_cmnd* (%struct.qlogicpti*)* @qlogicpti_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_cmnd* @qlogicpti_intr_handler(%struct.qlogicpti* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.qlogicpti*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.Status_Entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qlogicpti* %0, %struct.qlogicpti** %3, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %11 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SBUS_STAT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @sbus_readw(i64 %14)
  %16 = load i32, i32* @SBUS_STAT_RINT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %2, align 8
  br label %196

20:                                               ; preds = %1
  %21 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %22 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MBOX5, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @sbus_readw(i64 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @HCCTRL_CRIRQ, align 8
  %29 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %30 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HCCTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @sbus_writew(i64 %28, i64 %33)
  %35 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %36 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SBUS_SEMAPHORE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @sbus_readw(i64 %39)
  %41 = load i32, i32* @SBUS_SEMAPHORE_LCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %20
  %45 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %46 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MBOX0, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @sbus_readw(i64 %49)
  switch i32 %50, label %55 [
    i32 133, label %51
    i32 130, label %51
    i32 128, label %54
    i32 129, label %54
    i32 132, label %54
    i32 131, label %54
  ]

51:                                               ; preds = %44, %44
  %52 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %53 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %55

54:                                               ; preds = %44, %44, %44, %44
  br label %55

55:                                               ; preds = %44, %54, %51
  %56 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %57 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SBUS_SEMAPHORE, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @sbus_writew(i64 0, i64 %60)
  br label %62

62:                                               ; preds = %55, %20
  %63 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %64 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %167, %62
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %191

70:                                               ; preds = %66
  %71 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %72 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to %struct.Status_Entry*
  store %struct.Status_Entry* %76, %struct.Status_Entry** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @NEXT_RES_PTR(i64 %77)
  store i64 %78, i64* %8, align 8
  %79 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %80 = getelementptr inbounds %struct.Status_Entry, %struct.Status_Entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  %82 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %83 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %82, i32 0, i32 6
  %84 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %84, i64 %85
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %86, align 8
  store %struct.scsi_cmnd* %87, %struct.scsi_cmnd** %4, align 8
  %88 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %89 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %88, i32 0, i32 6
  %90 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %90, i64 %91
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %92, align 8
  %93 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %94 = getelementptr inbounds %struct.Status_Entry, %struct.Status_Entry* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CS_RESET_OCCURRED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %111, label %98

98:                                               ; preds = %70
  %99 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %100 = getelementptr inbounds %struct.Status_Entry, %struct.Status_Entry* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CS_ABORTED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %98
  %105 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %106 = getelementptr inbounds %struct.Status_Entry, %struct.Status_Entry* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @STF_BUS_RESET, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104, %98, %70
  %112 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %113 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %104
  %115 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %116 = getelementptr inbounds %struct.Status_Entry, %struct.Status_Entry* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SF_GOT_SENSE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %126 = getelementptr inbounds %struct.Status_Entry, %struct.Status_Entry* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %129 = call i32 @memcpy(i32 %124, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %121, %114
  %131 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %132 = getelementptr inbounds %struct.Status_Entry, %struct.Status_Entry* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ENTRY_STATUS, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load %struct.Status_Entry*, %struct.Status_Entry** %6, align 8
  %139 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %140 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @qlogicpti_return_status(%struct.Status_Entry* %138, i32 %141)
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %150

145:                                              ; preds = %130
  %146 = load i32, i32* @DID_ERROR, align 4
  %147 = shl i32 %146, 16
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %149 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %152 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %156 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %155, i32 0, i32 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %160 = call i32 @scsi_sglist(%struct.scsi_cmnd* %159)
  %161 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %162 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %161)
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %164 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dma_unmap_sg(i32* %158, i32 %160, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %154, %150
  %168 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %169 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %172 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %171, i32 0, i32 2
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %170, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %176, align 4
  %179 = load i64, i64* %8, align 8
  %180 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %181 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MBOX5, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @sbus_writew(i64 %179, i64 %184)
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %187 = bitcast %struct.scsi_cmnd* %186 to i8*
  %188 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %189 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  store %struct.scsi_cmnd* %190, %struct.scsi_cmnd** %5, align 8
  br label %66

191:                                              ; preds = %66
  %192 = load i64, i64* %8, align 8
  %193 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %194 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  store %struct.scsi_cmnd* %195, %struct.scsi_cmnd** %2, align 8
  br label %196

196:                                              ; preds = %191, %19
  %197 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  ret %struct.scsi_cmnd* %197
}

declare dso_local i32 @sbus_readw(i64) #1

declare dso_local i32 @sbus_writew(i64, i64) #1

declare dso_local i64 @NEXT_RES_PTR(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qlogicpti_return_status(%struct.Status_Entry*, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
