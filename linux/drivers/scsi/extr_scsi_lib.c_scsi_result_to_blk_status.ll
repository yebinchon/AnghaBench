; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_result_to_blk_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_result_to_blk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_TRANSPORT = common dso_local global i32 0, align 4
@BLK_STS_TARGET = common dso_local global i32 0, align 4
@BLK_STS_NEXUS = common dso_local global i32 0, align 4
@BLK_STS_NOSPC = common dso_local global i32 0, align 4
@BLK_STS_MEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @scsi_result_to_blk_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_result_to_blk_status(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @host_byte(i32 %6)
  switch i32 %7, label %38 [
    i32 130, label %8
    i32 128, label %20
    i32 129, label %22
    i32 131, label %26
    i32 133, label %30
    i32 132, label %34
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @scsi_status_is_good(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %12, %8
  %19 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i32, i32* @BLK_STS_TRANSPORT, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = call i32 @set_host_byte(%struct.scsi_cmnd* %23, i32 130)
  %25 = load i32, i32* @BLK_STS_TARGET, align 4
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = call i32 @set_host_byte(%struct.scsi_cmnd* %27, i32 130)
  %29 = load i32, i32* @BLK_STS_NEXUS, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = call i32 @set_host_byte(%struct.scsi_cmnd* %31, i32 130)
  %33 = load i32, i32* @BLK_STS_NOSPC, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = call i32 @set_host_byte(%struct.scsi_cmnd* %35, i32 130)
  %37 = load i32, i32* @BLK_STS_MEDIUM, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %34, %30, %26, %22, %20, %18, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @scsi_status_is_good(i32) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
