; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_data_for_srp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_data_for_srp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32 }
%struct.srp_event_struct = type { i32 }
%struct.srp_cmd = type { i32 }
%struct.device = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Can't map DMA_BIDIRECTIONAL to read/write\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Unknown data direction 0x%02x; can't map!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.srp_event_struct*, %struct.srp_cmd*, %struct.device*)* @map_data_for_srp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_data_for_srp_cmd(%struct.scsi_cmnd* %0, %struct.srp_event_struct* %1, %struct.srp_cmd* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.srp_event_struct*, align 8
  %8 = alloca %struct.srp_cmd*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.srp_event_struct* %1, %struct.srp_event_struct** %7, align 8
  store %struct.srp_cmd* %2, %struct.srp_cmd** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %21 [
    i32 130, label %13
    i32 128, label %13
    i32 129, label %14
    i32 131, label %15
  ]

13:                                               ; preds = %4, %4
  br label %30

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %36

15:                                               ; preds = %4
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i32, i8*, ...) @sdev_printk(i32 %16, i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %36

21:                                               ; preds = %4
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i32, i8*, ...) @sdev_printk(i32 %22, i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %5, align 4
  br label %36

30:                                               ; preds = %13
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %32 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %33 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %34 = load %struct.device*, %struct.device** %9, align 8
  %35 = call i32 @map_sg_data(%struct.scsi_cmnd* %31, %struct.srp_event_struct* %32, %struct.srp_cmd* %33, %struct.device* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %21, %15, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @sdev_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @map_sg_data(%struct.scsi_cmnd*, %struct.srp_event_struct*, %struct.srp_cmd*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
