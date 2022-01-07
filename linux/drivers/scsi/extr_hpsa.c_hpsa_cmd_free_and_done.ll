; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_cmd_free_and_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_cmd_free_and_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*)* @hpsa_cmd_free_and_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_cmd_free_and_done(%struct.ctlr_info* %0, %struct.CommandList* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList* %1, %struct.CommandList** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %8 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %9 = call i32 @hpsa_cmd_resolve_and_free(%struct.ctlr_info* %7, %struct.CommandList* %8)
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %11 = icmp ne %struct.scsi_cmnd* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %14, align 8
  %16 = icmp ne i32 (%struct.scsi_cmnd*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %19, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %22 = call i32 %20(%struct.scsi_cmnd* %21)
  br label %23

23:                                               ; preds = %17, %12, %3
  ret void
}

declare dso_local i32 @hpsa_cmd_resolve_and_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
