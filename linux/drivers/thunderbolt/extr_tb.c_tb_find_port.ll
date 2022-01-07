; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_find_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tb_switch = type { %struct.tb_port*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_port* (%struct.tb_switch*, i32)* @tb_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_port* @tb_find_port(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %16 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %15, i32 0, i32 0
  %17 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %17, i64 %19
  %21 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %28 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %27, i32 0, i32 0
  %29 = load %struct.tb_port*, %struct.tb_port** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %29, i64 %31
  store %struct.tb_port* %32, %struct.tb_port** %3, align 8
  br label %38

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store %struct.tb_port* null, %struct.tb_port** %3, align 8
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  ret %struct.tb_port* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
