; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_fake_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_fake_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@sdebug_cmnd_count = common dso_local global i32 0, align 4
@sdebug_every_nth = common dso_local global i32 0, align 4
@SDEBUG_OPT_TIMEOUT = common dso_local global i32 0, align 4
@sdebug_opts = common dso_local global i32 0, align 4
@SDEBUG_OPT_MAC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @fake_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_timeout(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %4 = call i32 @atomic_read(i32* @sdebug_cmnd_count)
  %5 = load i32, i32* @sdebug_every_nth, align 4
  %6 = call i32 @abs(i32 %5) #3
  %7 = srem i32 %4, %6
  %8 = icmp eq i32 0, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @sdebug_every_nth, align 4
  %11 = icmp slt i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 -1, i32* @sdebug_every_nth, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* @SDEBUG_OPT_TIMEOUT, align 4
  %15 = load i32, i32* @sdebug_opts, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %32

19:                                               ; preds = %13
  %20 = load i32, i32* @SDEBUG_OPT_MAC_TIMEOUT, align 4
  %21 = load i32, i32* @sdebug_opts, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = call i64 @scsi_medium_access_command(%struct.scsi_cmnd* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %32

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30, %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @atomic_read(i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @scsi_medium_access_command(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
