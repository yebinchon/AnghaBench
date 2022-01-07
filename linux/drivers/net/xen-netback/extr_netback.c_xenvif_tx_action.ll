; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_tx_action(%struct.xenvif_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenvif_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %11 = call i32 @tx_work_todo(%struct.xenvif_queue* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @xenvif_tx_build_gops(%struct.xenvif_queue* %19, i32 %20, i32* %7, i32* %6)
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %48

25:                                               ; preds = %18
  %26 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %27 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @gnttab_batch_copy(i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %35 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %38 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @gnttab_map_refs(i32 %36, i32* null, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @BUG_ON(i32 %42)
  br label %44

44:                                               ; preds = %33, %25
  %45 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %46 = call i32 @xenvif_tx_submit(%struct.xenvif_queue* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %24, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tx_work_todo(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_tx_build_gops(%struct.xenvif_queue*, i32, i32*, i32*) #1

declare dso_local i32 @gnttab_batch_copy(i32, i32) #1

declare dso_local i32 @gnttab_map_refs(i32, i32*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xenvif_tx_submit(%struct.xenvif_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
