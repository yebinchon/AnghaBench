; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_handle_scsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_handle_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, i32 }
%struct.myrb_cmdblk = type { i16, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad Data Encountered\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MEDIUM_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Irrecoverable Data Error\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Logical Drive Nonexistent or Offline\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Attempt to Access Beyond End of Logical Drive\00", align 1
@NOT_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Device nonresponsive\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unexpected Error Status %04X\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*, %struct.myrb_cmdblk*, %struct.scsi_cmnd*)* @myrb_handle_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_handle_scsi(%struct.myrb_hba* %0, %struct.myrb_cmdblk* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.myrb_hba*, align 8
  %5 = alloca %struct.myrb_cmdblk*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i16, align 2
  store %struct.myrb_hba* %0, %struct.myrb_hba** %4, align 8
  store %struct.myrb_cmdblk* %1, %struct.myrb_cmdblk** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %8 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %9 = icmp ne %struct.myrb_cmdblk* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %178

11:                                               ; preds = %3
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %13 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %12)
  %14 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %15 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %23 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(i32 %21, i32* %25, i32 64)
  %27 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %28 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %31 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %34 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dma_pool_free(i32 %29, %struct.TYPE_4__* %32, i64 %35)
  %37 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %38 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %37, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %38, align 8
  br label %39

39:                                               ; preds = %18, %11
  %40 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %41 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %46 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %49 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %52 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dma_pool_free(i32 %47, %struct.TYPE_4__* %50, i64 %53)
  %55 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %56 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %55, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %58 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %44, %39
  %60 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %61 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 8
  store i16 %62, i16* %7, align 2
  %63 = load i16, i16* %7, align 2
  %64 = zext i16 %63 to i32
  switch i32 %64, label %162 [
    i32 128, label %65
    i32 132, label %65
    i32 133, label %73
    i32 130, label %103
    i32 129, label %131
    i32 134, label %141
    i32 131, label %152
  ]

65:                                               ; preds = %59, %59
  %66 = load i32, i32* @DID_OK, align 4
  %67 = shl i32 %66, 16
  %68 = load i16, i16* %7, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %172

73:                                               ; preds = %59
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MEDIUM_ERROR, align 4
  %89 = call i32 @scsi_build_sense_buffer(i32 0, i32 %87, i32 %88, i32 17, i32 0)
  br label %96

90:                                               ; preds = %73
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MEDIUM_ERROR, align 4
  %95 = call i32 @scsi_build_sense_buffer(i32 0, i32 %93, i32 %94, i32 12, i32 0)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load i32, i32* @DID_OK, align 4
  %98 = shl i32 %97, 16
  %99 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %172

103:                                              ; preds = %59
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %106 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %104, %struct.scsi_cmnd* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %103
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MEDIUM_ERROR, align 4
  %117 = call i32 @scsi_build_sense_buffer(i32 0, i32 %115, i32 %116, i32 17, i32 4)
  br label %124

118:                                              ; preds = %103
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MEDIUM_ERROR, align 4
  %123 = call i32 @scsi_build_sense_buffer(i32 0, i32 %121, i32 %122, i32 12, i32 2)
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i32, i32* @DID_OK, align 4
  %126 = shl i32 %125, 16
  %127 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %172

131:                                              ; preds = %59
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @dev_dbg(i32* %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* @DID_BAD_TARGET, align 4
  %138 = shl i32 %137, 16
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %140 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %172

141:                                              ; preds = %59
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 2
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = call i32 @dev_dbg(i32* %145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @NOT_READY, align 4
  %151 = call i32 @scsi_build_sense_buffer(i32 0, i32 %149, i32 %150, i32 33, i32 0)
  br label %172

152:                                              ; preds = %59
  %153 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %154 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %153, i32 0, i32 2
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = call i32 @dev_dbg(i32* %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @DID_BAD_TARGET, align 4
  %159 = shl i32 %158, 16
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %172

162:                                              ; preds = %59
  %163 = load i32, i32* @KERN_ERR, align 4
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %165 = load i16, i16* %7, align 2
  %166 = zext i16 %165 to i32
  %167 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %163, %struct.scsi_cmnd* %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @DID_ERROR, align 4
  %169 = shl i32 %168, 16
  %170 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %171 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %162, %152, %141, %131, %124, %96, %65
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %174 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %173, i32 0, i32 1
  %175 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %174, align 8
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %177 = call i32 %175(%struct.scsi_cmnd* %176)
  br label %178

178:                                              ; preds = %172, %10
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
