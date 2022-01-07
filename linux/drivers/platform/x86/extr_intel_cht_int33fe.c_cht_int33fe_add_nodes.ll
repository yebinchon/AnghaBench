; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_add_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_add_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cht_int33fe_data = type { i32 }

@nodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"intel-xhci-usb-sw\00", align 1
@mux_ref = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cht_int33fe_data*)* @cht_int33fe_add_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_int33fe_add_nodes(%struct.cht_int33fe_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cht_int33fe_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cht_int33fe_data* %0, %struct.cht_int33fe_data** %3, align 8
  %5 = load i32, i32* @nodes, align 4
  %6 = call i32 @software_node_register_nodes(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = call i32 @software_node_find_by_name(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mux_ref, i32 0, i32 0), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mux_ref, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @EPROBE_DEFER, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %11
  %19 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %3, align 8
  %20 = call i32 @cht_int33fe_setup_dp(%struct.cht_int33fe_data* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %29

25:                                               ; preds = %23, %15
  %26 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %3, align 8
  %27 = call i32 @cht_int33fe_remove_nodes(%struct.cht_int33fe_data* %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %24, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @software_node_register_nodes(i32) #1

declare dso_local i32 @software_node_find_by_name(i32*, i8*) #1

declare dso_local i32 @cht_int33fe_setup_dp(%struct.cht_int33fe_data*) #1

declare dso_local i32 @cht_int33fe_remove_nodes(%struct.cht_int33fe_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
