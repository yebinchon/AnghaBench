; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_complete_scsi_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_complete_scsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uiscmdrsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uiscmdrsp*, %struct.scsi_cmnd*)* @complete_scsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_scsi_command(%struct.uiscmdrsp* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.uiscmdrsp*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  store %struct.uiscmdrsp* %0, %struct.uiscmdrsp** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %5 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %6 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %12 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = call i32 @do_scsi_linuxstat(%struct.uiscmdrsp* %17, %struct.scsi_cmnd* %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = call i32 @do_scsi_nolinuxstat(%struct.uiscmdrsp* %21, %struct.scsi_cmnd* %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %26, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = call i32 %27(%struct.scsi_cmnd* %28)
  ret void
}

declare dso_local i32 @do_scsi_linuxstat(%struct.uiscmdrsp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @do_scsi_nolinuxstat(%struct.uiscmdrsp*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
