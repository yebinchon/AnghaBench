; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_handle_csmi_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_handle_csmi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.atto_csmi = type { i32 }
%struct.esas2r_buffered_ioctl = type { i32, %struct.atto_csmi*, i32, %struct.atto_csmi*, i32, i64, i32*, %struct.esas2r_adapter* }

@csmi_ioctl_callback = common dso_local global i32 0, align 4
@csmi_ioctl_done_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.atto_csmi*)* @handle_csmi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_csmi_ioctl(%struct.esas2r_adapter* %0, %struct.atto_csmi* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.atto_csmi*, align 8
  %5 = alloca %struct.esas2r_buffered_ioctl, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.atto_csmi* %1, %struct.atto_csmi** %4, align 8
  %6 = call i32 @memset(%struct.esas2r_buffered_ioctl* %5, i32 0, i32 64)
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 7
  store %struct.esas2r_adapter* %7, %struct.esas2r_adapter** %8, align 8
  %9 = load %struct.atto_csmi*, %struct.atto_csmi** %4, align 8
  %10 = getelementptr inbounds %struct.atto_csmi, %struct.atto_csmi* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 6
  store i32* %10, i32** %11, align 8
  %12 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @csmi_ioctl_callback, align 4
  %15 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = load %struct.atto_csmi*, %struct.atto_csmi** %4, align 8
  %17 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 3
  store %struct.atto_csmi* %16, %struct.atto_csmi** %17, align 8
  %18 = load i32, i32* @csmi_ioctl_done_callback, align 4
  %19 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load %struct.atto_csmi*, %struct.atto_csmi** %4, align 8
  %21 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %5, i32 0, i32 1
  store %struct.atto_csmi* %20, %struct.atto_csmi** %21, align 8
  %22 = call i32 @handle_buffered_ioctl(%struct.esas2r_buffered_ioctl* %5)
  ret i32 %22
}

declare dso_local i32 @memset(%struct.esas2r_buffered_ioctl*, i32, i32) #1

declare dso_local i32 @handle_buffered_ioctl(%struct.esas2r_buffered_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
