; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_falcon_get_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_falcon_get_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@scsi_falcon_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @falcon_get_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_get_lock(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %4 = call i64 (...) @IS_A_TT()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

7:                                                ; preds = %1
  %8 = load i32, i32* @scsi_falcon_intr, align 4
  %9 = call i64 @stdma_is_locked_by(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %30

19:                                               ; preds = %11, %7
  %20 = call i64 (...) @in_interrupt()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @scsi_falcon_intr, align 4
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %25 = call i32 @stdma_try_lock(i32 %23, %struct.Scsi_Host* %24)
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @scsi_falcon_intr, align 4
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %29 = call i32 @stdma_lock(i32 %27, %struct.Scsi_Host* %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %22, %18, %6
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @IS_A_TT(...) #1

declare dso_local i64 @stdma_is_locked_by(i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @stdma_try_lock(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @stdma_lock(i32, %struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
