; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen3.c_idtg3_route_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen3.c_idtg3_route_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RIO_SWP_INFO_CAR = common dso_local global i32 0, align 4
@RIO_GLOBAL_TABLE = common dso_local global i32 0, align 4
@RIO_RT_ENTRY_DROP_PKT = common dso_local global i64 0, align 8
@RIO_INVALID_ROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i64, i32, i32, i64*)* @idtg3_route_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg3_route_get_entry(%struct.rio_mport* %0, i32 %1, i64 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rio_mport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* %12, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %70

21:                                               ; preds = %6
  %22 = load %struct.rio_mport*, %struct.rio_mport** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* @RIO_SWP_INFO_CAR, align 4
  %26 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %22, i32 %23, i64 %24, i32 %25, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %7, align 4
  br label %70

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @RIO_GLOBAL_TABLE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @RIO_GET_PORT_NUM(i64 %36)
  store i32 %37, i32* %11, align 4
  br label %47

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @RIO_GET_TOTAL_PORTS(i64 %40)
  %42 = icmp sge i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %70

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.rio_mport*, %struct.rio_mport** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @RIO_SPx_L2_Gn_ENTRYy_CSR(i32 %51, i32 0, i32 %52)
  %54 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %48, i32 %49, i64 %50, i32 %53, i64* %14)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %70

59:                                               ; preds = %47
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @RIO_RT_ENTRY_DROP_PKT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @RIO_INVALID_ROUTE, align 8
  %65 = load i64*, i64** %13, align 8
  store i64 %64, i64* %65, align 8
  br label %69

66:                                               ; preds = %59
  %67 = load i64, i64* %14, align 8
  %68 = load i64*, i64** %13, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %57, %43, %29, %18
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i64, i32, i64*) #1

declare dso_local i32 @RIO_GET_PORT_NUM(i64) #1

declare dso_local i32 @RIO_GET_TOTAL_PORTS(i64) #1

declare dso_local i32 @RIO_SPx_L2_Gn_ENTRYy_CSR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
