; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_remove_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_remove_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.cht_int33fe_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@nodes = common dso_local global i32 0, align 4
@mux_ref = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cht_int33fe_data*)* @cht_int33fe_remove_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cht_int33fe_remove_nodes(%struct.cht_int33fe_data* %0) #0 {
  %2 = alloca %struct.cht_int33fe_data*, align 8
  store %struct.cht_int33fe_data* %0, %struct.cht_int33fe_data** %2, align 8
  %3 = load i32, i32* @nodes, align 4
  %4 = call i32 @software_node_unregister_nodes(i32 %3)
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mux_ref, i32 0, i32 0), align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mux_ref, i32 0, i32 0), align 8
  %9 = call %struct.TYPE_4__* @software_node_fwnode(i32* %8)
  %10 = call i32 @fwnode_handle_put(%struct.TYPE_4__* %9)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mux_ref, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %2, align 8
  %13 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %2, align 8
  %18 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %2, align 8
  %22 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @fwnode_handle_put(%struct.TYPE_4__* %23)
  %25 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %2, align 8
  %26 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %25, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %26, align 8
  br label %27

27:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @software_node_unregister_nodes(i32) #1

declare dso_local i32 @fwnode_handle_put(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @software_node_fwnode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
