; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_assign_write_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_assign_write_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@WRITE_LIFE_NOT_SET = common dso_local global i32 0, align 4
@WRITE_LIFE_NONE = common dso_local global i32 0, align 4
@NVME_RW_DTYPE_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*, %struct.request*, i32*, i32*)* @nvme_assign_write_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_assign_write_stream(%struct.nvme_ctrl* %0, %struct.request* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @WRITE_LIFE_NOT_SET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @WRITE_LIFE_NONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %4
  store i32 0, i32* %9, align 4
  br label %43

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %66

33:                                               ; preds = %21
  %34 = load i32, i32* @NVME_RW_DTYPE_STREAMS, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 16
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %33, %20
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.request*, %struct.request** %6, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @ARRAY_SIZE(i32* %49)
  %51 = icmp ult i32 %44, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.request*, %struct.request** %6, align 8
  %54 = call i32 @blk_rq_bytes(%struct.request* %53)
  %55 = ashr i32 %54, 9
  %56 = load %struct.request*, %struct.request** %6, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %55
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %32, %52, %43
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
