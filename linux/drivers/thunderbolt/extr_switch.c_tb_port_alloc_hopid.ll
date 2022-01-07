; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_alloc_hopid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_alloc_hopid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.ida, %struct.TYPE_2__, %struct.ida }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ida = type { i32 }

@TB_PATH_MIN_HOPID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_port*, i32, i32, i32)* @tb_port_alloc_hopid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_port_alloc_hopid(%struct.tb_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ida*, align 8
  store %struct.tb_port* %0, %struct.tb_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %15 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %19 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %18, i32 0, i32 2
  store %struct.ida* %19, %struct.ida** %10, align 8
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %22 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %26 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %25, i32 0, i32 0
  store %struct.ida* %26, %struct.ida** %10, align 8
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TB_PATH_MIN_HOPID, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TB_PATH_MIN_HOPID, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.ida*, %struct.ida** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @ida_simple_get(%struct.ida* %43, i32 %44, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @ida_simple_get(%struct.ida*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
