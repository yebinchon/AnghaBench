; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_adapter_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_adapter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to clear routing bits.\0A\00", align 1
@QL_ASIC_RECOVERY = common dso_local global i32 0, align 4
@MB_SET_MPI_TFK_STOP = common dso_local global i32 0, align 4
@RST_FO = common dso_local global i32 0, align 4
@RST_FO_FR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ifdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ETIMEDOUT!!! errored out of resetting the chip!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MB_SET_MPI_TFK_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_adapter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_reset(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %8 = call i32 @ql_clear_routing_entries(%struct.ql_adapter* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %13 = load i32, i32* @ifup, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netif_err(%struct.ql_adapter* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %1
  %20 = load i32, i32* @QL_ASIC_RECOVERY, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 1
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %27 = load i32, i32* @MB_SET_MPI_TFK_STOP, align 4
  %28 = call i32 @ql_mb_set_mgmnt_traffic_ctl(%struct.ql_adapter* %26, i32 %27)
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = call i32 @ql_wait_fifo_empty(%struct.ql_adapter* %29)
  br label %36

31:                                               ; preds = %19
  %32 = load i32, i32* @QL_ASIC_RECOVERY, align 4
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 1
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = load i32, i32* @RST_FO, align 4
  %39 = load i32, i32* @RST_FO_FR, align 4
  %40 = shl i32 %39, 16
  %41 = load i32, i32* @RST_FO_FR, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @ql_write32(%struct.ql_adapter* %37, i32 %38, i32 %42)
  %44 = load i64, i64* @jiffies, align 8
  %45 = call i64 @usecs_to_jiffies(i32 30)
  %46 = add i64 %44, %45
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %58, %36
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = load i32, i32* @RST_FO, align 4
  %50 = call i32 @ql_read32(%struct.ql_adapter* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RST_FO_FR, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %63

56:                                               ; preds = %47
  %57 = call i32 (...) @cpu_relax()
  br label %58

58:                                               ; preds = %56
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @time_before(i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %47, label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RST_FO_FR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %70 = load i32, i32* @ifdown, align 4
  %71 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @netif_err(%struct.ql_adapter* %69, i32 %70, i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %68, %63
  %78 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %79 = load i32, i32* @MB_SET_MPI_TFK_RESUME, align 4
  %80 = call i32 @ql_mb_set_mgmnt_traffic_ctl(%struct.ql_adapter* %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %11
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @ql_clear_routing_entries(%struct.ql_adapter*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_mb_set_mgmnt_traffic_ctl(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_wait_fifo_empty(%struct.ql_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
