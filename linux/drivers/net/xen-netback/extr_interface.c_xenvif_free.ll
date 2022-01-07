; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i32, i32, %struct.xenvif_queue* }
%struct.xenvif_queue = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_free(%struct.xenvif* %0) #0 {
  %2 = alloca %struct.xenvif*, align 8
  %3 = alloca %struct.xenvif_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xenvif* %0, %struct.xenvif** %2, align 8
  %6 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %7 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %6, i32 0, i32 2
  %8 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  store %struct.xenvif_queue* %8, %struct.xenvif_queue** %3, align 8
  %9 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %10 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %13 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @unregister_netdev(i32 %14)
  %16 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %17 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free_netdev(i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %30, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %25, i64 %27
  %29 = call i32 @xenvif_deinit_queue(%struct.xenvif_queue* %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %35 = call i32 @vfree(%struct.xenvif_queue* %34)
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = call i32 @module_put(i32 %36)
  ret void
}

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @xenvif_deinit_queue(%struct.xenvif_queue*) #1

declare dso_local i32 @vfree(%struct.xenvif_queue*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
