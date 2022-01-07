; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_find_src_hopid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_find_src_hopid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TB_PATH_MIN_HOPID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_port*, %struct.tb_port*, i32)* @tb_path_find_src_hopid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_path_find_src_hopid(%struct.tb_port* %0, %struct.tb_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca %struct.tb_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_port*, align 8
  %9 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %5, align 8
  store %struct.tb_port* %1, %struct.tb_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @TB_PATH_MIN_HOPID, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %14 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %12, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.tb_port* @tb_path_find_dst_port(%struct.tb_port* %19, i32 %20, i32 %21)
  store %struct.tb_port* %22, %struct.tb_port** %8, align 8
  %23 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %24 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %25 = icmp eq %struct.tb_port* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %11

32:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.tb_port* @tb_path_find_dst_port(%struct.tb_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
