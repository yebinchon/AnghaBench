; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.scsi_driver = type { i32 (%struct.scsi_cmnd.0*)* }
%struct.scsi_cmnd.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @scsi_eh_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_eh_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_driver*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @blk_rq_is_passthrough(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = call %struct.scsi_driver* @scsi_cmd_to_driver(%struct.scsi_cmnd* %10)
  store %struct.scsi_driver* %11, %struct.scsi_driver** %3, align 8
  %12 = load %struct.scsi_driver*, %struct.scsi_driver** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %12, i32 0, i32 0
  %14 = load i32 (%struct.scsi_cmnd.0*)*, i32 (%struct.scsi_cmnd.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.scsi_cmnd.0*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.scsi_driver*, %struct.scsi_driver** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.scsi_cmnd.0*)*, i32 (%struct.scsi_cmnd.0*)** %18, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %21 = bitcast %struct.scsi_cmnd* %20 to %struct.scsi_cmnd.0*
  %22 = call i32 %19(%struct.scsi_cmnd.0* %21)
  br label %23

23:                                               ; preds = %16, %9
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @blk_rq_is_passthrough(i32) #1

declare dso_local %struct.scsi_driver* @scsi_cmd_to_driver(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
