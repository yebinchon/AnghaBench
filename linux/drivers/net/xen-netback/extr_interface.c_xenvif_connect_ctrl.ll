; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_connect_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_connect_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i32, %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32* }
%struct.net_device = type { i32 }
%struct.xen_netif_ctrl_sring = type { i32 }

@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@xenvif_ctrl_irq_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"xen-netback-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not setup irq handler for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_connect_ctrl(%struct.xenvif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenvif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xen_netif_ctrl_sring*, align 8
  %11 = alloca i32, align 4
  store %struct.xenvif* %0, %struct.xenvif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %13 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %16 = call i32 @xenvif_to_xenbus_device(%struct.xenvif* %15)
  %17 = call i32 @xenbus_map_ring_valloc(i32 %16, i32* %6, i32 1, i8** %9)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %79

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.xen_netif_ctrl_sring*
  store %struct.xen_netif_ctrl_sring* %23, %struct.xen_netif_ctrl_sring** %10, align 8
  %24 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %25 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %24, i32 0, i32 1
  %26 = load %struct.xen_netif_ctrl_sring*, %struct.xen_netif_ctrl_sring** %10, align 8
  %27 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %28 = call i32 @BACK_RING_INIT(%struct.TYPE_2__* %25, %struct.xen_netif_ctrl_sring* %26, i32 %27)
  %29 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %30 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bind_interdomain_evtchn_to_irq(i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %68

37:                                               ; preds = %21
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %40 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %42 = call i32 @xenvif_init_hash(%struct.xenvif* %41)
  %43 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %44 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @xenvif_ctrl_irq_fn, align 4
  %47 = load i32, i32* @IRQF_ONESHOT, align 4
  %48 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %49 = call i32 @request_threaded_irq(i32 %45, i32* null, i32 %46, i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.xenvif* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %58

57:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %81

58:                                               ; preds = %52
  %59 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %60 = call i32 @xenvif_deinit_hash(%struct.xenvif* %59)
  %61 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %62 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %65 = call i32 @unbind_from_irqhandler(i32 %63, %struct.xenvif* %64)
  %66 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %67 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %58, %36
  %69 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %70 = call i32 @xenvif_to_xenbus_device(%struct.xenvif* %69)
  %71 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %72 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @xenbus_unmap_ring_vfree(i32 %70, i32* %74)
  %76 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %77 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %68, %20
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %57
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @xenbus_map_ring_valloc(i32, i32*, i32, i8**) #1

declare dso_local i32 @xenvif_to_xenbus_device(%struct.xenvif*) #1

declare dso_local i32 @BACK_RING_INIT(%struct.TYPE_2__*, %struct.xen_netif_ctrl_sring*, i32) #1

declare dso_local i32 @bind_interdomain_evtchn_to_irq(i32, i32) #1

declare dso_local i32 @xenvif_init_hash(%struct.xenvif*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.xenvif*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @xenvif_deinit_hash(%struct.xenvif*) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.xenvif*) #1

declare dso_local i32 @xenbus_unmap_ring_vfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
