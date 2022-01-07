; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_alloc_dma_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_alloc_dma_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s DMA buffer alloc fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @alloc_dma_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dma_bufs(%struct.slgt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 0
  store i32 32, i32* %5, align 4
  %6 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 1
  store i32 32, i32* %7, align 4
  %8 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %9 = call i64 @alloc_desc(%struct.slgt_info* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @alloc_bufs(%struct.slgt_info* %12, i32 %15, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %11
  %22 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %23 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @alloc_bufs(%struct.slgt_info* %22, i32 %25, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %33 = call i64 @alloc_tmp_rbuf(%struct.slgt_info* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31, %21, %11, %1
  %36 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %37 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @DBGERR(i8* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %31
  %45 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %46 = call i32 @reset_rbufs(%struct.slgt_info* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %35
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @alloc_desc(%struct.slgt_info*) #1

declare dso_local i64 @alloc_bufs(%struct.slgt_info*, i32, i32) #1

declare dso_local i64 @alloc_tmp_rbuf(%struct.slgt_info*) #1

declare dso_local i32 @DBGERR(i8*) #1

declare dso_local i32 @reset_rbufs(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
