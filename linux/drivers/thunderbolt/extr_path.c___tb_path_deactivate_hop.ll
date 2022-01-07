; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c___tb_path_deactivate_hop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c___tb_path_deactivate_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i32 }
%struct.tb_regs_hop = type { i64, i64, i64, i64, i32, i64 }

@TB_CFG_HOPS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_port*, i32, i32)* @__tb_path_deactivate_hop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tb_path_deactivate_hop(%struct.tb_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_regs_hop, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %12 = load i32, i32* @TB_CFG_HOPS, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 2, %13
  %15 = call i32 @tb_port_read(%struct.tb_port* %11, %struct.tb_regs_hop* %8, i32 %12, i32 %14, i32 2)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %77

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %77

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %28 = load i32, i32* @TB_CFG_HOPS, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 2, %29
  %31 = call i32 @tb_port_write(%struct.tb_port* %27, %struct.tb_regs_hop* %8, i32 %28, i32 %30, i32 2)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %77

36:                                               ; preds = %25
  %37 = call i32 (...) @ktime_get()
  %38 = call i32 @ktime_add_ms(i32 %37, i32 500)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %69, %36
  %40 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %41 = load i32, i32* @TB_CFG_HOPS, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 2, %42
  %44 = call i32 @tb_port_read(%struct.tb_port* %40, %struct.tb_regs_hop* %8, i32 %41, i32 %43, i32 2)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %77

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %62 = load i32, i32* @TB_CFG_HOPS, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 2, %63
  %65 = call i32 @tb_port_write(%struct.tb_port* %61, %struct.tb_regs_hop* %8, i32 %62, i32 %64, i32 2)
  store i32 %65, i32* %4, align 4
  br label %77

66:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %77

67:                                               ; preds = %49
  %68 = call i32 @usleep_range(i32 10, i32 20)
  br label %69

69:                                               ; preds = %67
  %70 = call i32 (...) @ktime_get()
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @ktime_before(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %39, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %66, %56, %47, %34, %24, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @tb_port_read(%struct.tb_port*, %struct.tb_regs_hop*, i32, i32, i32) #1

declare dso_local i32 @tb_port_write(%struct.tb_port*, %struct.tb_regs_hop*, i32, i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
