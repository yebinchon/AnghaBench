; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_mccq_compl_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_mccq_compl_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32, %struct.be_dma_mem }
%struct.be_dma_mem = type { i64, i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@MAX_MCC_CMD = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BC_%d : invalid tag %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MCC_TAG_STATE_RUNNING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BEISCSI_HOST_MBX_TIMEOUT = common dso_local global i32 0, align 4
@BEISCSI_HBA_ONLINE = common dso_local global i32 0, align 4
@MCC_TAG_STATE_TIMEOUT = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@BEISCSI_LOG_EH = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"BC_%d : MBX Cmd Completion timed out\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba* %0, i32 %1, %struct.be_mcc_wrb** %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_mcc_wrb**, align 8
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_dma_mem*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.be_mcc_wrb** %2, %struct.be_mcc_wrb*** %8, align 8
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MAX_MCC_CMD, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14, %4
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %19, i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %146

25:                                               ; preds = %14
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %27 = call i64 @beiscsi_hba_in_error(%struct.beiscsi_hba* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32, i32* @MCC_TAG_STATE_RUNNING, align 4
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %30, i32* %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %146

42:                                               ; preds = %25
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %44 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %52 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BEISCSI_HOST_MBX_TIMEOUT, align 4
  %60 = call i32 @msecs_to_jiffies(i32 %59)
  %61 = call i32 @wait_event_interruptible_timeout(i32 %50, i32 %58, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @BEISCSI_HBA_ONLINE, align 4
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %64 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %63, i32 0, i32 1
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %42
  %68 = load i32, i32* @MCC_TAG_STATE_RUNNING, align 4
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @clear_bit(i32 %68, i32* %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %146

80:                                               ; preds = %42
  %81 = load i32, i32* %10, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %80
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %85 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store %struct.be_dma_mem* %91, %struct.be_dma_mem** %11, align 8
  %92 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %93 = icmp ne %struct.be_dma_mem* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %83
  %95 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %96 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %99 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %101 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %104 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %106 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %109 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  br label %113

110:                                              ; preds = %83
  %111 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %112 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %94
  %114 = call i32 (...) @wmb()
  %115 = load i32, i32* @MCC_TAG_STATE_TIMEOUT, align 4
  %116 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %117 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @set_bit(i32 %115, i32* %123)
  %125 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %126 = load i32, i32* @KERN_ERR, align 4
  %127 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %128 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @beiscsi_log(%struct.beiscsi_hba* %125, i32 %126, i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @EBUSY, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %146

135:                                              ; preds = %80
  %136 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.be_mcc_wrb**, %struct.be_mcc_wrb*** %8, align 8
  %139 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %140 = call i32 @__beiscsi_mcc_compl_status(%struct.beiscsi_hba* %136, i32 %137, %struct.be_mcc_wrb** %138, %struct.be_dma_mem* %139)
  store i32 %140, i32* %10, align 4
  %141 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %142 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %141, i32 0, i32 0
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @free_mcc_wrb(%struct.TYPE_4__* %142, i32 %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %135, %113, %67, %29, %18
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i32) #1

declare dso_local i64 @beiscsi_hba_in_error(%struct.beiscsi_hba*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @__beiscsi_mcc_compl_status(%struct.beiscsi_hba*, i32, %struct.be_mcc_wrb**, %struct.be_dma_mem*) #1

declare dso_local i32 @free_mcc_wrb(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
