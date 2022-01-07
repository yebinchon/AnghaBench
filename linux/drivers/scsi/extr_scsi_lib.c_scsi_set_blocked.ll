; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_set_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_set_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32 }
%struct.scsi_target = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i32)* @scsi_set_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_set_blocked(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.scsi_target*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 2
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  store %struct.scsi_device* %15, %struct.scsi_device** %6, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %17 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %16)
  store %struct.scsi_target* %17, %struct.scsi_target** %7, align 8
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %40 [
    i32 129, label %19
    i32 131, label %26
    i32 130, label %26
    i32 128, label %33
  ]

19:                                               ; preds = %2
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 1
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @atomic_set(i32* %21, i32 %24)
  br label %40

26:                                               ; preds = %2, %2
  %27 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 1
  %29 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @atomic_set(i32* %28, i32 %31)
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %35 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %34, i32 0, i32 1
  %36 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %37 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @atomic_set(i32* %35, i32 %38)
  br label %40

40:                                               ; preds = %2, %33, %26, %19
  ret void
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
