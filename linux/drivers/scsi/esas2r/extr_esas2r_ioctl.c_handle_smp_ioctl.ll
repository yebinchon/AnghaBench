; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_handle_smp_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_handle_smp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.atto_ioctl_smp = type { i32, i32 }
%struct.esas2r_buffered_ioctl = type { i32, i64, i64, %struct.atto_ioctl_smp*, %struct.esas2r_adapter* }

@smp_ioctl_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.atto_ioctl_smp*)* @handle_smp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_smp_ioctl(%struct.esas2r_adapter* %0, %struct.atto_ioctl_smp* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.atto_ioctl_smp*, align 8
  %5 = alloca %struct.esas2r_buffered_ioctl, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.atto_ioctl_smp* %1, %struct.atto_ioctl_smp** %4, align 8
  %6 = call i32 @memset(%struct.esas2r_buffered_ioctl* %5, i32 0, i32 40)
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 4
  store %struct.esas2r_adapter* %7, %struct.esas2r_adapter** %8, align 8
  %9 = load %struct.atto_ioctl_smp*, %struct.atto_ioctl_smp** %4, align 8
  %10 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 3
  store %struct.atto_ioctl_smp* %9, %struct.atto_ioctl_smp** %10, align 8
  %11 = load %struct.atto_ioctl_smp*, %struct.atto_ioctl_smp** %4, align 8
  %12 = getelementptr inbounds %struct.atto_ioctl_smp, %struct.atto_ioctl_smp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  %15 = add i64 8, %14
  %16 = load %struct.atto_ioctl_smp*, %struct.atto_ioctl_smp** %4, align 8
  %17 = getelementptr inbounds %struct.atto_ioctl_smp, %struct.atto_ioctl_smp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  %20 = add i64 %15, %19
  %21 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 2
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @smp_ioctl_callback, align 4
  %24 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = call i32 @handle_buffered_ioctl(%struct.esas2r_buffered_ioctl* %5)
  ret i32 %25
}

declare dso_local i32 @memset(%struct.esas2r_buffered_ioctl*, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @handle_buffered_ioctl(%struct.esas2r_buffered_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
