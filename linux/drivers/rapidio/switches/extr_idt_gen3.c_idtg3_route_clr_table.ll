; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen3.c_idtg3_route_clr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen3.c_idtg3_route_clr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@RIO_RT_ENTRY_DROP_PKT = common dso_local global i32 0, align 4
@RIO_SWP_INFO_CAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i32, i64)* @idtg3_route_clr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg3_route_clr_table(%struct.rio_mport* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %10, align 4
  %19 = icmp sle i32 %18, 255
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @RIO_BC_L2_Gn_ENTRYx_CSR(i32 0, i32 %24)
  %26 = load i32, i32* @RIO_RT_ENTRY_DROP_PKT, align 4
  %27 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %21, i64 %22, i32 %23, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %17

35:                                               ; preds = %30, %17
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %77

37:                                               ; preds = %4
  %38 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RIO_SWP_INFO_CAR, align 4
  %42 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %38, i64 %39, i32 %40, i32 %41, i32* %11)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %77

47:                                               ; preds = %37
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @RIO_GET_TOTAL_PORTS(i32 %49)
  %51 = icmp sge i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %77

55:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %57, 255
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @RIO_SPx_L2_Gn_ENTRYy_CSR(i64 %63, i32 0, i32 %64)
  %66 = load i32, i32* @RIO_RT_ENTRY_DROP_PKT, align 4
  %67 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %60, i64 %61, i32 %62, i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %75

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %56

75:                                               ; preds = %70, %56
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %52, %45, %35
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i32, i32, i32) #1

declare dso_local i32 @RIO_BC_L2_Gn_ENTRYx_CSR(i32, i32) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i64, i32, i32, i32*) #1

declare dso_local i64 @RIO_GET_TOTAL_PORTS(i32) #1

declare dso_local i32 @RIO_SPx_L2_Gn_ENTRYy_CSR(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
