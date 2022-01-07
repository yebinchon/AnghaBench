; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_close_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_close_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_pipe = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*)* @cvmx_usb_close_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_usb_close_pipe(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_hcd*, align 8
  %5 = alloca %struct.cvmx_usb_pipe*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %4, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %5, align 8
  %6 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %5, align 8
  %7 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %6, i32 0, i32 1
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %5, align 8
  %15 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %5, align 8
  %18 = call i32 @kfree(%struct.cvmx_usb_pipe* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.cvmx_usb_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
