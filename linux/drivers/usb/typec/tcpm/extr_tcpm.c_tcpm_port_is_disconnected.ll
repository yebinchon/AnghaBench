; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_port_is_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_port_is_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i64, i64, i64 }

@TYPEC_CC_OPEN = common dso_local global i64 0, align 8
@TYPEC_POLARITY_CC1 = common dso_local global i64 0, align 8
@TYPEC_POLARITY_CC2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_port_is_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_port_is_disconnected(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %3 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %4 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %9 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TYPEC_CC_OPEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %15 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TYPEC_CC_OPEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %54, label %19

19:                                               ; preds = %13, %7, %1
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %21 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %26 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TYPEC_POLARITY_CC1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %32 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TYPEC_CC_OPEN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %38 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TYPEC_POLARITY_CC2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %44 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TYPEC_CC_OPEN, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i1 [ false, %36 ], [ %47, %42 ]
  br label %50

50:                                               ; preds = %48, %30
  %51 = phi i1 [ true, %30 ], [ %49, %48 ]
  br label %52

52:                                               ; preds = %50, %19
  %53 = phi i1 [ false, %19 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %13
  %55 = phi i1 [ true, %13 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
