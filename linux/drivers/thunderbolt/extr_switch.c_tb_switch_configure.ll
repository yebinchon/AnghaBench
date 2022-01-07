; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.TYPE_2__, %struct.tb* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tb = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"initializing Switch at %#llx (depth: %d, up port: %d)\0A\00", align 1
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown switch vendor id %#x\0A\00", align 1
@TB_CFG_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_switch_configure(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca %struct.tb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %7 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %8 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %7, i32 0, i32 1
  %9 = load %struct.tb*, %struct.tb** %8, align 8
  store %struct.tb* %9, %struct.tb** %4, align 8
  %10 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %11 = call i32 @tb_route(%struct.tb_switch* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tb*, %struct.tb** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @tb_route_length(i32 %14)
  %16 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %17 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tb_dbg(%struct.tb* %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %19)
  %21 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %22 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %29 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %30 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @tb_sw_warn(%struct.tb_switch* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %36 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %39 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %40 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %39, i32 0, i32 0
  %41 = bitcast %struct.TYPE_2__* %40 to i32*
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* @TB_CFG_SWITCH, align 4
  %44 = call i32 @tb_sw_write(%struct.tb_switch* %38, i32* %42, i32 %43, i32 1, i32 3)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %34
  %50 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %51 = call i32 @tb_lc_configure_link(%struct.tb_switch* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %58 = call i32 @tb_plug_events_active(%struct.tb_switch* %57, i32 1)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %54, %47
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @tb_dbg(%struct.tb*, i8*, i32, i32, i32) #1

declare dso_local i32 @tb_route_length(i32) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*, i64) #1

declare dso_local i32 @tb_sw_write(%struct.tb_switch*, i32*, i32, i32, i32) #1

declare dso_local i32 @tb_lc_configure_link(%struct.tb_switch*) #1

declare dso_local i32 @tb_plug_events_active(%struct.tb_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
