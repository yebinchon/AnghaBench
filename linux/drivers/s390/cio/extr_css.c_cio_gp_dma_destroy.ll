; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_cio_gp_dma_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_cio_gp_dma_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.device = type { i32 }

@__gp_dma_free_dma = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cio_gp_dma_destroy(%struct.gen_pool* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.gen_pool*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  %6 = icmp ne %struct.gen_pool* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %15

8:                                                ; preds = %2
  %9 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  %10 = load i32, i32* @__gp_dma_free_dma, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @gen_pool_for_each_chunk(%struct.gen_pool* %9, i32 %10, %struct.device* %11)
  %13 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  %14 = call i32 @gen_pool_destroy(%struct.gen_pool* %13)
  br label %15

15:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @gen_pool_for_each_chunk(%struct.gen_pool*, i32, %struct.device*) #1

declare dso_local i32 @gen_pool_destroy(%struct.gen_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
