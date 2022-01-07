; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_streams_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_streams_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_ns = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.streams_directive_params = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, %struct.nvme_ns*)* @nvme_setup_streams_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_streams_ns(%struct.nvme_ctrl* %0, %struct.nvme_ns* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.streams_directive_params, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %5, align 8
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

14:                                               ; preds = %2
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nvme_get_stream_params(%struct.nvme_ctrl* %15, %struct.streams_directive_params* %6, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.streams_directive_params, %struct.streams_directive_params* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %31 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.streams_directive_params, %struct.streams_directive_params* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %38 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %26
  %42 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %43 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %47 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %51 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul i32 %49, %52
  %54 = call i32 @blk_queue_io_min(i32 %48, i32 %53)
  %55 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %56 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %41
  %60 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %61 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %65 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul i32 %63, %66
  %68 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %69 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul i32 %67, %70
  %72 = call i32 @blk_queue_io_opt(i32 %62, i32 %71)
  br label %73

73:                                               ; preds = %59, %41
  br label %74

74:                                               ; preds = %73, %26
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %24, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @nvme_get_stream_params(%struct.nvme_ctrl*, %struct.streams_directive_params*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @blk_queue_io_min(i32, i32) #1

declare dso_local i32 @blk_queue_io_opt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
