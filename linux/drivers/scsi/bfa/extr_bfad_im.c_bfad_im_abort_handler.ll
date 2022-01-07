; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_abort_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { {}*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.TYPE_4__*, %struct.bfad_s* }
%struct.TYPE_4__ = type { i32 }
%struct.bfad_s = type { i32 }
%struct.bfa_ioim_s = type { i32, %struct.bfad_ioim_s* }
%struct.bfad_ioim_s = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"scsi%d: abort cmnd %p iotag %x\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"scsi%d: complete abort 0x%p iotag 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @bfad_im_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.bfad_im_port_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfa_ioim_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %4, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %21, %struct.bfad_im_port_s** %5, align 8
  %22 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %22, i32 0, i32 1
  %24 = load %struct.bfad_s*, %struct.bfad_s** %23, align 8
  store %struct.bfad_s* %24, %struct.bfad_s** %6, align 8
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %27 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.bfa_ioim_s*
  store %struct.bfa_ioim_s* %33, %struct.bfa_ioim_s** %7, align 8
  %34 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %35 = icmp ne %struct.bfa_ioim_s* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @SUCCESS, align 4
  store i32 %37, i32* %10, align 4
  br label %118

38:                                               ; preds = %1
  %39 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %40 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %39, i32 0, i32 1
  %41 = load %struct.bfad_ioim_s*, %struct.bfad_ioim_s** %40, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = bitcast %struct.scsi_cmnd* %42 to %struct.bfad_ioim_s*
  %44 = icmp ne %struct.bfad_ioim_s* %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @FAILED, align 4
  store i32 %46, i32* %10, align 4
  br label %118

47:                                               ; preds = %38
  %48 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %49 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %50 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bfa_trc(%struct.bfad_s* %48, i32 %51)
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %55 = load i32, i32* @bfa_log_level, align 4
  %56 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %62 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %63 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @BFA_LOG(i32 %53, %struct.bfad_s* %54, i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %60, %struct.scsi_cmnd* %61, i32 %64)
  %66 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %67 = call i32 @bfa_ioim_abort(%struct.bfa_ioim_s* %66)
  %68 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %69 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i32 10, i32* %9, align 4
  br label %72

72:                                               ; preds = %91, %47
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.bfa_ioim_s*
  %77 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %78 = icmp eq %struct.bfa_ioim_s* %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %81 = call i32 @set_current_state(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @schedule_timeout(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @HZ, align 4
  %86 = mul nsw i32 4, %85
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %89, 2
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %79
  br label %72

92:                                               ; preds = %72
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = bitcast {}** %94 to i32 (%struct.scsi_cmnd*)**
  %96 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %95, align 8
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %98 = call i32 %96(%struct.scsi_cmnd* %97)
  %99 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %100 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %101 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bfa_trc(%struct.bfad_s* %99, i32 %102)
  %104 = load i32, i32* @KERN_INFO, align 4
  %105 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %106 = load i32, i32* @bfa_log_level, align 4
  %107 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %108 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %113 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %114 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @BFA_LOG(i32 %104, %struct.bfad_s* %105, i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %111, %struct.scsi_cmnd* %112, i32 %115)
  %117 = load i32, i32* @SUCCESS, align 4
  store i32 %117, i32* %2, align 4
  br label %124

118:                                              ; preds = %45, %36
  %119 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %120 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %119, i32 0, i32 0
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %118, %92
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i32, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @bfa_ioim_abort(%struct.bfa_ioim_s*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
