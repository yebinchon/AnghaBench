; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_route_clr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_route_clr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@LOCAL_RTE_CONF_DESTID_SEL = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_EXTCFGEN = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_DESTID_SEL_CSR = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_PORT_SEL_CSR = common dso_local global i32 0, align 4
@IDT_DEFAULT_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i32, i64)* @idtg2_route_clr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg2_route_clr_table(%struct.rio_mport* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i64 0, i64* %8, align 8
  br label %17

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %14, %13
  %18 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LOCAL_RTE_CONF_DESTID_SEL, align 4
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %18, i64 %19, i32 %20, i32 %21, i32 %23)
  %25 = load i32, i32* @RIO_STD_RTE_CONF_EXTCFGEN, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %31, %17
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @RIO_STD_RTE_CONF_EXTCFGEN, align 4
  %29 = or i32 %28, 255
  %30 = icmp sle i32 %27, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @RIO_STD_RTE_CONF_DESTID_SEL_CSR, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %32, i64 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RIO_STD_RTE_CONF_PORT_SEL_CSR, align 4
  %42 = load i32, i32* @IDT_DEFAULT_ROUTE, align 4
  %43 = shl i32 %42, 24
  %44 = load i32, i32* @IDT_DEFAULT_ROUTE, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %43, %45
  %47 = load i32, i32* @IDT_DEFAULT_ROUTE, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = load i32, i32* @IDT_DEFAULT_ROUTE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %38, i64 %39, i32 %40, i32 %41, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %9, align 4
  br label %26

55:                                               ; preds = %26
  ret i32 0
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
