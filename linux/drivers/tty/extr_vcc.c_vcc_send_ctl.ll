; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_send_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_send_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcc_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vio_vcc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@VIO_TYPE_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"VCC: ldc_write(%ld)=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcc_port*, i32)* @vcc_send_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_send_ctl(%struct.vcc_port* %0, i32 %1) #0 {
  %3 = alloca %struct.vcc_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vio_vcc, align 8
  %6 = alloca i32, align 4
  store %struct.vcc_port* %0, %struct.vcc_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @VIO_TYPE_CTRL, align 4
  %8 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %5, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %5, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %16 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ldc_write(i32 %18, %struct.vio_vcc* %5, i32 24)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @vccdbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 24, i32 %25)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @ldc_write(i32, %struct.vio_vcc*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vccdbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
