; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@mt7601u_tx_tasklet = common dso_local global i32 0, align 4
@mt7601u_rx_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_dma_init(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %7, i32 0, i32 1
  %9 = load i32, i32* @mt7601u_tx_tasklet, align 4
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %11 = ptrtoint %struct.mt7601u_dev* %10 to i64
  %12 = call i32 @tasklet_init(i32* %8, i32 %9, i64 %11)
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 0
  %15 = load i32, i32* @mt7601u_rx_tasklet, align 4
  %16 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %17 = ptrtoint %struct.mt7601u_dev* %16 to i64
  %18 = call i32 @tasklet_init(i32* %14, i32 %15, i64 %17)
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = call i32 @mt7601u_alloc_tx(%struct.mt7601u_dev* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %26 = call i32 @mt7601u_alloc_rx(%struct.mt7601u_dev* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %37

30:                                               ; preds = %24
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %32 = call i32 @mt7601u_submit_rx(%struct.mt7601u_dev* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %41

37:                                               ; preds = %35, %29, %23
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %39 = call i32 @mt7601u_dma_cleanup(%struct.mt7601u_dev* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mt7601u_alloc_tx(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_alloc_rx(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_submit_rx(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_dma_cleanup(%struct.mt7601u_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
