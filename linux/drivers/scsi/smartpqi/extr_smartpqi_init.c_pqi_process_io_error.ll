; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_io_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_io_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pqi_io_request*)* @pqi_process_io_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_process_io_error(i32 %0, %struct.pqi_io_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_io_request*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pqi_io_request* %1, %struct.pqi_io_request** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %12 [
    i32 128, label %6
    i32 129, label %9
  ]

6:                                                ; preds = %2
  %7 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %8 = call i32 @pqi_process_raid_io_error(%struct.pqi_io_request* %7)
  br label %12

9:                                                ; preds = %2
  %10 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %11 = call i32 @pqi_process_aio_io_error(%struct.pqi_io_request* %10)
  br label %12

12:                                               ; preds = %2, %9, %6
  ret void
}

declare dso_local i32 @pqi_process_raid_io_error(%struct.pqi_io_request*) #1

declare dso_local i32 @pqi_process_aio_io_error(%struct.pqi_io_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
