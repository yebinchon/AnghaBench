; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_omapdss_of_get_remote_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_omapdss_of_get_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*)* @omapdss_of_get_remote_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @omapdss_of_get_remote_port(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* %5)
  store %struct.device_node* %6, %struct.device_node** %4, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %11)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %13, %struct.device_node** %2, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %15
}

declare dso_local %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
