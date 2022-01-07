; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_buf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsm_buf = type { i32*, i32* }

@FWLOAD_BLOCK_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wsm_buf_init(%struct.wsm_buf* %0) #0 {
  %2 = alloca %struct.wsm_buf*, align 8
  store %struct.wsm_buf* %0, %struct.wsm_buf** %2, align 8
  %3 = load %struct.wsm_buf*, %struct.wsm_buf** %2, align 8
  %4 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @BUG_ON(i32* %5)
  %7 = load i64, i64* @FWLOAD_BLOCK_SIZE, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @GFP_DMA, align 4
  %10 = or i32 %8, %9
  %11 = call i32* @kmalloc(i64 %7, i32 %10)
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %2, align 8
  %13 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.wsm_buf*, %struct.wsm_buf** %2, align 8
  %15 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.wsm_buf*, %struct.wsm_buf** %2, align 8
  %20 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @FWLOAD_BLOCK_SIZE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.wsm_buf*, %struct.wsm_buf** %2, align 8
  %26 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i32* [ %23, %18 ], [ %27, %24 ]
  %30 = load %struct.wsm_buf*, %struct.wsm_buf** %2, align 8
  %31 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.wsm_buf*, %struct.wsm_buf** %2, align 8
  %33 = call i32 @wsm_buf_reset(%struct.wsm_buf* %32)
  ret void
}

declare dso_local i32 @BUG_ON(i32*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @wsm_buf_reset(%struct.wsm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
