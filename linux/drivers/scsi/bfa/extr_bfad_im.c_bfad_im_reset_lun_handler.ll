; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_lun_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_lun_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, %struct.bfad_itnim_data_s*, %struct.Scsi_Host* }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32, i32 }
%struct.bfa_tskim_s = type { i32 }
%struct.bfa_itnim_s = type { i32 }
%struct.scsi_lun = type { i32 }
%struct.bfad_tskim_s = type { i32 }

@wq = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"LUN reset, fail to allocate tskim\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"lun reset, bfa_itnim is NULL\0A\00", align 1
@FCP_TM_LUN_RESET = common dso_local global i32 0, align 4
@BFAD_LUN_RESET_TMO = common dso_local global i32 0, align 4
@IO_DONE_BIT = common dso_local global i32 0, align 4
@BFI_TSKIM_STS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"LUN reset failure, status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @bfad_im_reset_lun_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_reset_lun_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.bfad_im_port_s*, align 8
  %5 = alloca %struct.bfad_itnim_data_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfa_tskim_s*, align 8
  %8 = alloca %struct.bfad_itnim_s*, align 8
  %9 = alloca %struct.bfa_itnim_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_lun, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %3, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %24, %struct.bfad_im_port_s** %4, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %28, align 8
  store %struct.bfad_itnim_data_s* %29, %struct.bfad_itnim_data_s** %5, align 8
  %30 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %30, i32 0, i32 0
  %32 = load %struct.bfad_s*, %struct.bfad_s** %31, align 8
  store %struct.bfad_s* %32, %struct.bfad_s** %6, align 8
  %33 = load i32, i32* @wq, align 4
  %34 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %33)
  %35 = load i32, i32* @SUCCESS, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %37 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %40, i32 0, i32 0
  %42 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %41, align 8
  store %struct.bfad_itnim_s* %42, %struct.bfad_itnim_s** %8, align 8
  %43 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %44 = icmp ne %struct.bfad_itnim_s* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %1
  %46 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %47 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* @FAILED, align 4
  store i32 %50, i32* %10, align 4
  br label %137

51:                                               ; preds = %1
  %52 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %53 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %52, i32 0, i32 1
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %55 = bitcast %struct.scsi_cmnd* %54 to %struct.bfad_tskim_s*
  %56 = call %struct.bfa_tskim_s* @bfa_tskim_alloc(i32* %53, %struct.bfad_tskim_s* %55)
  store %struct.bfa_tskim_s* %56, %struct.bfa_tskim_s** %7, align 8
  %57 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %58 = icmp ne %struct.bfa_tskim_s* %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @KERN_ERR, align 4
  %61 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %62 = load i32, i32* @bfa_log_level, align 4
  %63 = call i32 (i32, %struct.bfad_s*, i32, i8*, ...) @BFA_LOG(i32 %60, %struct.bfad_s* %61, i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %65 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %64, i32 0, i32 0
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* @FAILED, align 4
  store i32 %68, i32* %10, align 4
  br label %137

69:                                               ; preds = %51
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* bitcast (i32* @wq to i8*), i8** %74, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %79 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %78, i32 0, i32 0
  %80 = call %struct.bfa_itnim_s* @bfa_fcs_itnim_get_halitn(i32* %79)
  store %struct.bfa_itnim_s* %80, %struct.bfa_itnim_s** %9, align 8
  %81 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %9, align 8
  %82 = icmp eq %struct.bfa_itnim_s* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %69
  %84 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %85 = call i32 @bfa_tskim_free(%struct.bfa_tskim_s* %84)
  %86 = load i32, i32* @KERN_ERR, align 4
  %87 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %88 = load i32, i32* @bfa_log_level, align 4
  %89 = call i32 (i32, %struct.bfad_s*, i32, i8*, ...) @BFA_LOG(i32 %86, %struct.bfad_s* %87, i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %91 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %90, i32 0, i32 0
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* @FAILED, align 4
  store i32 %94, i32* %10, align 4
  br label %137

95:                                               ; preds = %69
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @int_to_scsilun(i32 %100, %struct.scsi_lun* %13)
  %102 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %103 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %9, align 8
  %104 = load i32, i32* @FCP_TM_LUN_RESET, align 4
  %105 = load i32, i32* @BFAD_LUN_RESET_TMO, align 4
  %106 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bfa_tskim_start(%struct.bfa_tskim_s* %102, %struct.bfa_itnim_s* %103, i32 %107, i32 %104, i32 %105)
  %109 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %110 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %109, i32 0, i32 0
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* @wq, align 4
  %114 = load i32, i32* @IO_DONE_BIT, align 4
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = bitcast i32* %117 to i64*
  %119 = call i32 @test_bit(i32 %114, i64* %118)
  %120 = call i32 @wait_event(i32 %113, i32 %119)
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @BFI_TSKIM_STS_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %95
  %130 = load i32, i32* @KERN_ERR, align 4
  %131 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %132 = load i32, i32* @bfa_log_level, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 (i32, %struct.bfad_s*, i32, i8*, ...) @BFA_LOG(i32 %130, %struct.bfad_s* %131, i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @FAILED, align 4
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %129, %95
  br label %137

137:                                              ; preds = %136, %83, %59, %45
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bfa_tskim_s* @bfa_tskim_alloc(i32*, %struct.bfad_tskim_s*) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, ...) #1

declare dso_local %struct.bfa_itnim_s* @bfa_fcs_itnim_get_halitn(i32*) #1

declare dso_local i32 @bfa_tskim_free(%struct.bfa_tskim_s*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @bfa_tskim_start(%struct.bfa_tskim_s*, %struct.bfa_itnim_s*, i32, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
