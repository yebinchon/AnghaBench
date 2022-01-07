; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_init_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_init_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.request* }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BLK_STS_TARGET = common dso_local global i32 0, align 4
@BLK_STS_NOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_init_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_command(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %7, %struct.request** %4, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call i32 @req_op(%struct.request* %8)
  switch i32 %9, label %49 [
    i32 139, label %10
    i32 134, label %31
    i32 135, label %34
    i32 138, label %37
    i32 137, label %40
    i32 136, label %40
    i32 133, label %43
    i32 132, label %46
  ]

10:                                               ; preds = %1
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_2__* @scsi_disk(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 131, label %17
    i32 129, label %20
    i32 130, label %23
    i32 128, label %26
  ]

17:                                               ; preds = %10
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = call i32 @sd_setup_unmap_cmnd(%struct.scsi_cmnd* %18)
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %10
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = call i32 @sd_setup_write_same16_cmnd(%struct.scsi_cmnd* %21, i32 1)
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %10
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = call i32 @sd_setup_write_same10_cmnd(%struct.scsi_cmnd* %24, i32 1)
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %10
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = call i32 @sd_setup_write_same10_cmnd(%struct.scsi_cmnd* %27, i32 0)
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %10
  %30 = load i32, i32* @BLK_STS_TARGET, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %1
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = call i32 @sd_setup_write_zeroes_cmnd(%struct.scsi_cmnd* %32)
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %1
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = call i32 @sd_setup_write_same_cmnd(%struct.scsi_cmnd* %35)
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %1
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = call i32 @sd_setup_flush_cmnd(%struct.scsi_cmnd* %38)
  store i32 %39, i32* %2, align 4
  br label %52

40:                                               ; preds = %1, %1
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = call i32 @sd_setup_read_write_cmnd(%struct.scsi_cmnd* %41)
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %1
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = call i32 @sd_zbc_setup_reset_cmnd(%struct.scsi_cmnd* %44, i32 0)
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %1
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %48 = call i32 @sd_zbc_setup_reset_cmnd(%struct.scsi_cmnd* %47, i32 1)
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %1
  %50 = call i32 @WARN_ON_ONCE(i32 1)
  %51 = load i32, i32* @BLK_STS_NOTSUPP, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %29, %26, %23, %20, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local %struct.TYPE_2__* @scsi_disk(i32) #1

declare dso_local i32 @sd_setup_unmap_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_setup_write_same16_cmnd(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sd_setup_write_same10_cmnd(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sd_setup_write_zeroes_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_setup_write_same_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_setup_flush_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_setup_read_write_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_zbc_setup_reset_cmnd(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
