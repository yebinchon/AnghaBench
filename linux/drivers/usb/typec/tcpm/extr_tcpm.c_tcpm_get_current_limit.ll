; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_get_current_limit(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %15 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %12, %9 ], [ %16, %13 ]
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %23 [
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
  ]

20:                                               ; preds = %17
  store i32 1500, i32* %4, align 4
  br label %42

21:                                               ; preds = %17
  store i32 3000, i32* %4, align 4
  br label %42

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %17, %22
  %24 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %25 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_2__*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %32 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %34, align 8
  %36 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %37 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 %35(%struct.TYPE_2__* %38)
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %21, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
