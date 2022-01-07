; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_disconnect_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_disconnect_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i32, %struct.xenvif_queue* }
%struct.xenvif_queue = type { i64, i64, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_disconnect_data(%struct.xenvif* %0) #0 {
  %2 = alloca %struct.xenvif*, align 8
  %3 = alloca %struct.xenvif_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xenvif* %0, %struct.xenvif** %2, align 8
  store %struct.xenvif_queue* null, %struct.xenvif_queue** %3, align 8
  %6 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %7 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %10 = call i32 @xenvif_carrier_off(%struct.xenvif* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %88, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %11
  %16 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %17 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %16, i32 0, i32 1
  %18 = load %struct.xenvif_queue*, %struct.xenvif_queue** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %18, i64 %20
  store %struct.xenvif_queue* %21, %struct.xenvif_queue** %3, align 8
  %22 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %23 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %22, i32 0, i32 4
  %24 = call i32 @netif_napi_del(i32* %23)
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %26 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %15
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %31 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kthread_stop(i32* %32)
  %34 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %35 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @put_task_struct(i32* %36)
  %38 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %39 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %29, %15
  %41 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %42 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %47 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kthread_stop(i32* %48)
  %50 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %51 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %54 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %59 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %62 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %67 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %70 = call i32 @unbind_from_irqhandler(i64 %68, %struct.xenvif_queue* %69)
  br label %82

71:                                               ; preds = %57
  %72 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %73 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %76 = call i32 @unbind_from_irqhandler(i64 %74, %struct.xenvif_queue* %75)
  %77 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %78 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %81 = call i32 @unbind_from_irqhandler(i64 %79, %struct.xenvif_queue* %80)
  br label %82

82:                                               ; preds = %71, %65
  %83 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %84 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %52
  %86 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %87 = call i32 @xenvif_unmap_frontend_data_rings(%struct.xenvif_queue* %86)
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %11

91:                                               ; preds = %11
  %92 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %93 = call i32 @xenvif_mcast_addr_list_free(%struct.xenvif* %92)
  ret void
}

declare dso_local i32 @xenvif_carrier_off(%struct.xenvif*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @put_task_struct(i32*) #1

declare dso_local i32 @unbind_from_irqhandler(i64, %struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_unmap_frontend_data_rings(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_mcast_addr_list_free(%struct.xenvif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
