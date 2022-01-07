; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_eh_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_eh_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.scsi_device*, %struct.TYPE_2__* }
%struct.scsi_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_disk = type { i32, i64, i64 }

@DID_TIME_OUT = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Medium access timeout failure. Offlining disk!\0A\00", align 1
@SDEV_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @sd_eh_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_eh_action(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.scsi_disk* @scsi_disk(i32 %12)
  store %struct.scsi_disk* %13, %struct.scsi_disk** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %7, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %18 = call i32 @scsi_device_online(%struct.scsi_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = call i32 @scsi_medium_access_command(%struct.scsi_cmnd* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @host_byte(i32 %27)
  %29 = load i64, i64* @DID_TIME_OUT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %24, %20, %2
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %31
  %38 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %44 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %51 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %54 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = call i32 @scmd_printk(i32 %58, %struct.scsi_cmnd* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %65 = load i32, i32* @SDEV_OFFLINE, align 4
  %66 = call i32 @scsi_device_set_state(%struct.scsi_device* %64, i32 %65)
  %67 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* @SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %49
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %57, %35
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @scsi_medium_access_command(%struct.scsi_cmnd*) #1

declare dso_local i64 @host_byte(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
