; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dz_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DZ_MODEM = common dso_local global i64 0, align 8
@DZ_MSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dz_port*)* @check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_modem_status(%struct.dz_port* %0) #0 {
  %2 = alloca %struct.dz_port*, align 8
  %3 = alloca i64, align 8
  store %struct.dz_port* %0, %struct.dz_port** %2, align 8
  %4 = load %struct.dz_port*, %struct.dz_port** %2, align 8
  %5 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DZ_MODEM, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.dz_port*, %struct.dz_port** %2, align 8
  %13 = load i32, i32* @DZ_MSR, align 4
  %14 = call i64 @dz_in(%struct.dz_port* %12, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.dz_port*, %struct.dz_port** %2, align 8
  %19 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %10, %17, %11
  ret void
}

declare dso_local i64 @dz_in(%struct.dz_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
