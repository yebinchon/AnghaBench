; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32 }
%struct.visorhba_devdata = type { i32, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visor_device*)* @visorhba_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visorhba_remove(%struct.visor_device* %0) #0 {
  %2 = alloca %struct.visor_device*, align 8
  %3 = alloca %struct.visorhba_devdata*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %2, align 8
  %5 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %6 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %5, i32 0, i32 0
  %7 = call %struct.visorhba_devdata* @dev_get_drvdata(i32* %6)
  store %struct.visorhba_devdata* %7, %struct.visorhba_devdata** %3, align 8
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %4, align 8
  %8 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %9 = icmp ne %struct.visorhba_devdata* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %12, i32 0, i32 4
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %4, align 8
  %15 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @visor_thread_stop(i32 %17)
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = call i32 @scsi_remove_host(%struct.Scsi_Host* %19)
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %22 = call i32 @scsi_host_put(%struct.Scsi_Host* %21)
  %23 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %23, i32 0, i32 2
  %25 = call i32 @idr_destroy(i32* %24)
  %26 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %27 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %26, i32 0, i32 0
  %28 = call i32 @dev_set_drvdata(i32* %27, i32* null)
  %29 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @debugfs_remove(i32 %31)
  %33 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %34 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @debugfs_remove_recursive(i32 %35)
  br label %37

37:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.visorhba_devdata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @visor_thread_stop(i32) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
