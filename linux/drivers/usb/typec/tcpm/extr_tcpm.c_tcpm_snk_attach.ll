; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_snk_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_snk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i64, i32, i32, i32* }

@TYPEC_CC_OPEN = common dso_local global i64 0, align 8
@TYPEC_POLARITY_CC2 = common dso_local global i32 0, align 4
@TYPEC_POLARITY_CC1 = common dso_local global i32 0, align 4
@TYPEC_SINK = common dso_local global i32 0, align 4
@TYPEC_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_snk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_snk_attach(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TYPEC_CC_OPEN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  br label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @tcpm_set_polarity(%struct.tcpm_port* %11, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %21
  %29 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %30 = load i32, i32* @TYPEC_SINK, align 4
  %31 = load i32, i32* @TYPEC_DEVICE, align 4
  %32 = call i32 @tcpm_set_roles(%struct.tcpm_port* %29, i32 1, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %28
  %38 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %39 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %41 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %43 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %45 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %37, %35, %26, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @tcpm_set_polarity(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_set_roles(%struct.tcpm_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
