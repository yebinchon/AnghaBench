; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_pwr_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_pwr_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32)* @tcpm_set_pwr_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_set_pwr_role(%struct.tcpm_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_2__*, i32, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32, i32)** %10, align 8
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %17 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %11(%struct.TYPE_2__* %14, i32 1, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %27 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %29 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @typec_set_pwr_role(i32 %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @typec_set_pwr_role(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
