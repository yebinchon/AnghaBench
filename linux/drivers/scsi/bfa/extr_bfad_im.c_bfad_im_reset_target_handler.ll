; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_target_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_target_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64* }
%struct.scsi_target = type { i32 }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32 }
%struct.bfad_itnim_s = type { i32 }

@FAILED = common dso_local global i64 0, align 8
@wq = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@IO_DONE_BIT = common dso_local global i32 0, align 4
@BFI_TSKIM_STS_OK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"target reset failure, status: %d\0A\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @bfad_im_reset_target_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_reset_target_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_target*, align 8
  %5 = alloca %struct.bfad_im_port_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfad_itnim_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %3, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.scsi_target* @scsi_target(%struct.TYPE_4__* %19)
  store %struct.scsi_target* %20, %struct.scsi_target** %4, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %26, %struct.bfad_im_port_s** %5, align 8
  %27 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %27, i32 0, i32 0
  %29 = load %struct.bfad_s*, %struct.bfad_s** %28, align 8
  store %struct.bfad_s* %29, %struct.bfad_s** %6, align 8
  %30 = load i64, i64* @FAILED, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* @wq, align 4
  %32 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %31)
  %33 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %38 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.bfad_itnim_s* @bfad_get_itnim(%struct.bfad_im_port_s* %37, i32 %40)
  store %struct.bfad_itnim_s* %41, %struct.bfad_itnim_s** %7, align 8
  %42 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %43 = icmp ne %struct.bfad_itnim_s* %42, null
  br i1 %43, label %44, label %90

44:                                               ; preds = %1
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* bitcast (i32* @wq to i8*), i8** %47, align 8
  %48 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %50 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %51 = call i64 @bfad_im_target_reset_send(%struct.bfad_s* %48, %struct.scsi_cmnd* %49, %struct.bfad_itnim_s* %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @BFA_STATUS_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %44
  %56 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %57 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* @wq, align 4
  %61 = load i32, i32* @IO_DONE_BIT, align 4
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = bitcast i32* %64 to i64*
  %66 = call i32 @test_bit(i32 %61, i64* %65)
  %67 = call i32 @wait_event(i32 %60, i32 %66)
  %68 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %69 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @BFI_TSKIM_STS_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %55
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %83 = load i32, i32* @bfa_log_level, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @BFA_LOG(i32 %81, %struct.bfad_s* %82, i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %88

86:                                               ; preds = %55
  %87 = load i64, i64* @SUCCESS, align 8
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %88, %44
  br label %90

90:                                               ; preds = %89, %1
  %91 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %92 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %91, i32 0, i32 0
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  ret i32 %96
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.TYPE_4__*) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfad_itnim_s* @bfad_get_itnim(%struct.bfad_im_port_s*, i32) #1

declare dso_local i64 @bfad_im_target_reset_send(%struct.bfad_s*, %struct.scsi_cmnd*, %struct.bfad_itnim_s*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
