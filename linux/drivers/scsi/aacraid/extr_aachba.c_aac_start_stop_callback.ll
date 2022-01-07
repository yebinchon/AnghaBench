; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_start_stop_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_start_stop_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fib*)* @aac_start_stop_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_start_stop_callback(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %7, %struct.scsi_cmnd** %5, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.fib*, %struct.fib** %4, align 8
  %10 = call i32 @aac_valid_context(%struct.scsi_cmnd* %8, %struct.fib* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.fib*, %struct.fib** %4, align 8
  %15 = icmp eq %struct.fib* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @DID_OK, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* @COMMAND_COMPLETE, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  %23 = load i32, i32* @SAM_STAT_GOOD, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fib*, %struct.fib** %4, align 8
  %28 = call i32 @aac_fib_complete(%struct.fib* %27)
  %29 = load %struct.fib*, %struct.fib** %4, align 8
  %30 = call i32 @aac_fib_free(%struct.fib* %29)
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 1
  %33 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %32, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = call i32 %33(%struct.scsi_cmnd* %34)
  br label %36

36:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @aac_valid_context(%struct.scsi_cmnd*, %struct.fib*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
