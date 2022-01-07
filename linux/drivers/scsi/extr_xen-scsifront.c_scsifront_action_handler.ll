; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_action_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_action_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.vscsifrnt_info = type { i32, i32, i32 }
%struct.vscsifrnt_shadow = type { i32, i32, i32, i32, i32, %struct.scsi_cmnd*, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@RSLT_RESET_WAITING = common dso_local global i32 0, align 4
@RSLT_RESET_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @scsifront_action_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsifront_action_handler(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.vscsifrnt_info*, align 8
  %8 = alloca %struct.vscsifrnt_shadow*, align 8
  %9 = alloca %struct.vscsifrnt_shadow*, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %6, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %17 = call %struct.vscsifrnt_info* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.vscsifrnt_info* %17, %struct.vscsifrnt_info** %7, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = call %struct.vscsifrnt_shadow* @scsi_cmd_priv(%struct.scsi_cmnd* %18)
  store %struct.vscsifrnt_shadow* %19, %struct.vscsifrnt_shadow** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @GFP_NOIO, align 4
  %21 = call %struct.vscsifrnt_shadow* @kzalloc(i32 40, i32 %20)
  store %struct.vscsifrnt_shadow* %21, %struct.vscsifrnt_shadow** %8, align 8
  %22 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %23 = icmp ne %struct.vscsifrnt_shadow* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %142

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %29 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @RSLT_RESET_WAITING, align 4
  %31 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %32 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %35 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %34, i32 0, i32 5
  store %struct.scsi_cmnd* %33, %struct.scsi_cmnd** %35, align 8
  %36 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %9, align 8
  %37 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %40 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %42 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %41, i32 0, i32 3
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @spin_lock_irq(i32 %46)
  br label %48

48:                                               ; preds = %65, %26
  %49 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %50 = call i64 @scsifront_enter(%struct.vscsifrnt_info* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %134

53:                                               ; preds = %48
  %54 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %55 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %56 = call i32 @scsifront_do_request(%struct.vscsifrnt_info* %54, %struct.vscsifrnt_shadow* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %86

59:                                               ; preds = %53
  %60 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %61 = call i32 @scsifront_return(%struct.vscsifrnt_info* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %134

65:                                               ; preds = %59
  %66 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %67 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @spin_unlock_irq(i32 %70)
  %72 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %73 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %76 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @wait_event_interruptible(i32 %74, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_lock_irq(i32 %84)
  br label %48

86:                                               ; preds = %58
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @spin_unlock_irq(i32 %89)
  %91 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %92 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %95 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @wait_event_interruptible(i32 %93, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %99 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @spin_lock_irq(i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %86
  %105 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %106 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %10, align 4
  %108 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %109 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %110 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @scsifront_put_rqid(%struct.vscsifrnt_info* %108, i32 %111)
  %113 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %114 = call i32 @kfree(%struct.vscsifrnt_shadow* %113)
  br label %126

115:                                              ; preds = %86
  %116 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %117 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %116, i32 0, i32 1
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load i32, i32* @RSLT_RESET_ERR, align 4
  %120 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %121 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %123 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %122, i32 0, i32 1
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load i32, i32* @FAILED, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %115, %104
  %127 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %7, align 8
  %128 = call i32 @scsifront_return(%struct.vscsifrnt_info* %127)
  %129 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %130 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @spin_unlock_irq(i32 %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %142

134:                                              ; preds = %64, %52
  %135 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %136 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @spin_unlock_irq(i32 %137)
  %139 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %8, align 8
  %140 = call i32 @kfree(%struct.vscsifrnt_shadow* %139)
  %141 = load i32, i32* @FAILED, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %134, %126, %24
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.vscsifrnt_info* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.vscsifrnt_shadow* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local %struct.vscsifrnt_shadow* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @scsifront_enter(%struct.vscsifrnt_info*) #1

declare dso_local i32 @scsifront_do_request(%struct.vscsifrnt_info*, %struct.vscsifrnt_shadow*) #1

declare dso_local i32 @scsifront_return(%struct.vscsifrnt_info*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @scsifront_put_rqid(%struct.vscsifrnt_info*, i32) #1

declare dso_local i32 @kfree(%struct.vscsifrnt_shadow*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
