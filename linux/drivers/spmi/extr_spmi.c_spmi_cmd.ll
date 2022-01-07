; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_controller = type { {}*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@spmi_ctrl_type = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_controller*, i32, i32)* @spmi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_cmd(%struct.spmi_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spmi_controller* %0, %struct.spmi_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %10 = icmp ne %struct.spmi_controller* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %13 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.spmi_controller*, i32, i32)**
  %15 = load i32 (%struct.spmi_controller*, i32, i32)*, i32 (%struct.spmi_controller*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.spmi_controller*, i32, i32)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %19 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, @spmi_ctrl_type
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %11, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %28 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.spmi_controller*, i32, i32)**
  %30 = load i32 (%struct.spmi_controller*, i32, i32)*, i32 (%struct.spmi_controller*, i32, i32)** %29, align 8
  %31 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %30(%struct.spmi_controller* %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @trace_spmi_cmd(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %26, %23
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @trace_spmi_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
