; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.h_tb_port_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.h_tb_port_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32 }
%struct.tb_switch = type { %struct.tb_port*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_port* (i32, %struct.tb_switch*)* @tb_port_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_port* @tb_port_at(i32 %0, %struct.tb_switch* %1) #0 {
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %9 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 8
  %13 = ashr i32 %7, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %17 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.tb_port* null, %struct.tb_port** %3, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %27 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %26, i32 0, i32 0
  %28 = load %struct.tb_port*, %struct.tb_port** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %28, i64 %29
  store %struct.tb_port* %30, %struct.tb_port** %3, align 8
  br label %31

31:                                               ; preds = %25, %24
  %32 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  ret %struct.tb_port* %32
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
