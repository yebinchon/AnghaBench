; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_find_dst_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_find_dst_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.tb_port*, %struct.tb_switch* }
%struct.tb_switch = type { %struct.tb_port* }
%struct.tb_regs_hop = type { i64, i32, i32 }

@TB_PATH_MAX_HOPS = common dso_local global i32 0, align 4
@TB_CFG_HOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read path at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_port* (%struct.tb_port*, i32, i32)* @tb_path_find_dst_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_port* @tb_path_find_dst_port(%struct.tb_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_port*, align 8
  %9 = alloca %struct.tb_port*, align 8
  %10 = alloca %struct.tb_regs_hop, align 8
  %11 = alloca %struct.tb_switch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.tb_port* null, %struct.tb_port** %9, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  store %struct.tb_port* %16, %struct.tb_port** %8, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %58, %3
  %18 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %19 = icmp ne %struct.tb_port* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @TB_PATH_MAX_HOPS, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %61

26:                                               ; preds = %24
  %27 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %28 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %27, i32 0, i32 1
  %29 = load %struct.tb_switch*, %struct.tb_switch** %28, align 8
  store %struct.tb_switch* %29, %struct.tb_switch** %11, align 8
  %30 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %31 = load i32, i32* @TB_CFG_HOPS, align 4
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 2, %32
  %34 = call i32 @tb_port_read(%struct.tb_port* %30, %struct.tb_regs_hop* %10, i32 %31, i32 %33, i32 2)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @tb_port_warn(%struct.tb_port* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  store %struct.tb_port* null, %struct.tb_port** %4, align 8
  br label %73

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %10, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store %struct.tb_port* null, %struct.tb_port** %4, align 8
  br label %73

46:                                               ; preds = %41
  %47 = load %struct.tb_switch*, %struct.tb_switch** %11, align 8
  %48 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %47, i32 0, i32 0
  %49 = load %struct.tb_port*, %struct.tb_port** %48, align 8
  %50 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %49, i64 %51
  store %struct.tb_port* %52, %struct.tb_port** %9, align 8
  %53 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %14, align 4
  %55 = load %struct.tb_port*, %struct.tb_port** %9, align 8
  %56 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %55, i32 0, i32 0
  %57 = load %struct.tb_port*, %struct.tb_port** %56, align 8
  store %struct.tb_port* %57, %struct.tb_port** %8, align 8
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %17

61:                                               ; preds = %24
  %62 = load %struct.tb_port*, %struct.tb_port** %9, align 8
  %63 = icmp ne %struct.tb_port* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load %struct.tb_port*, %struct.tb_port** %9, align 8
  br label %71

70:                                               ; preds = %64, %61
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi %struct.tb_port* [ %69, %68 ], [ null, %70 ]
  store %struct.tb_port* %72, %struct.tb_port** %4, align 8
  br label %73

73:                                               ; preds = %71, %45, %37
  %74 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  ret %struct.tb_port* %74
}

declare dso_local i32 @tb_port_read(%struct.tb_port*, %struct.tb_regs_hop*, i32, i32, i32) #1

declare dso_local i32 @tb_port_warn(%struct.tb_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
