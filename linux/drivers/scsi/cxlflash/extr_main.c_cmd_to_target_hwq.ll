; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cmd_to_target_hwq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cmd_to_target_hwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.afu = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*, %struct.afu*)* @cmd_to_target_hwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_to_target_hwq(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1, %struct.afu* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.afu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.afu* %2, %struct.afu** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.afu*, %struct.afu** %7, align 8
  %11 = getelementptr inbounds %struct.afu, %struct.afu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.afu*, %struct.afu** %7, align 8
  %17 = getelementptr inbounds %struct.afu, %struct.afu* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %41 [
    i32 129, label %19
    i32 128, label %28
    i32 130, label %35
  ]

19:                                               ; preds = %15
  %20 = load %struct.afu*, %struct.afu** %7, align 8
  %21 = getelementptr inbounds %struct.afu, %struct.afu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.afu*, %struct.afu** %7, align 8
  %25 = getelementptr inbounds %struct.afu, %struct.afu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %22, %26
  store i32 %27, i32* %9, align 4
  br label %43

28:                                               ; preds = %15
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @blk_mq_unique_tag(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @blk_mq_unique_tag_to_hwq(i32 %33)
  store i32 %34, i32* %9, align 4
  br label %43

35:                                               ; preds = %15
  %36 = call i32 (...) @smp_processor_id()
  %37 = load %struct.afu*, %struct.afu** %7, align 8
  %38 = getelementptr inbounds %struct.afu, %struct.afu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %36, %39
  store i32 %40, i32* %9, align 4
  br label %43

41:                                               ; preds = %15
  %42 = call i32 @WARN_ON_ONCE(i32 1)
  br label %43

43:                                               ; preds = %41, %35, %28, %19
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @blk_mq_unique_tag(i32) #1

declare dso_local i32 @blk_mq_unique_tag_to_hwq(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
