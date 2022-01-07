; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.visordisk_info*, i64 }
%struct.visordisk_info = type { %struct.scsi_device* }
%struct.visorhba_devdata = type { i32 }
%struct.Scsi_Host = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @visorhba_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorhba_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.visordisk_info*, align 8
  %5 = alloca %struct.visorhba_devdata*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load %struct.visordisk_info*, %struct.visordisk_info** %12, align 8
  %14 = icmp ne %struct.visordisk_info* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.visorhba_devdata*
  store %struct.visorhba_devdata* %20, %struct.visorhba_devdata** %5, align 8
  %21 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %22 = icmp ne %struct.visorhba_devdata* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.visordisk_info* @kzalloc(i32 8, i32 %25)
  store %struct.visordisk_info* %26, %struct.visordisk_info** %4, align 8
  %27 = load %struct.visordisk_info*, %struct.visordisk_info** %4, align 8
  %28 = icmp ne %struct.visordisk_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = load %struct.visordisk_info*, %struct.visordisk_info** %4, align 8
  %35 = getelementptr inbounds %struct.visordisk_info, %struct.visordisk_info* %34, i32 0, i32 0
  store %struct.scsi_device* %33, %struct.scsi_device** %35, align 8
  %36 = load %struct.visordisk_info*, %struct.visordisk_info** %4, align 8
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  store %struct.visordisk_info* %36, %struct.visordisk_info** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %29, %23, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.visordisk_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
