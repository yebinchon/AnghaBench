; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_mdsk_term_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_mdsk_term_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_diag_private* }
%struct.dasd_diag_private = type { %struct.TYPE_2__, %struct.dasd_diag_init_io }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_diag_init_io = type { i32 }

@TERM_BIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @mdsk_term_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdsk_term_io(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_diag_private*, align 8
  %4 = alloca %struct.dasd_diag_init_io*, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %7, align 8
  store %struct.dasd_diag_private* %8, %struct.dasd_diag_private** %3, align 8
  %9 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %9, i32 0, i32 1
  store %struct.dasd_diag_init_io* %10, %struct.dasd_diag_init_io** %4, align 8
  %11 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %4, align 8
  %12 = call i32 @memset(%struct.dasd_diag_init_io* %11, i32 0, i32 4)
  %13 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %3, align 8
  %14 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %4, align 8
  %18 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %4, align 8
  %20 = load i32, i32* @TERM_BIO, align 4
  %21 = call i32 @dia250(%struct.dasd_diag_init_io* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @memset(%struct.dasd_diag_init_io*, i32, i32) #1

declare dso_local i32 @dia250(%struct.dasd_diag_init_io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
