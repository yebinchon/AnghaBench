; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_configure_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_configure_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32)* @nvme_tcp_configure_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_configure_io_queues(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %8 = call i32 @nvme_tcp_alloc_io_queues(%struct.nvme_ctrl* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %18 = call i32 @nvme_tcp_alloc_tagset(%struct.nvme_ctrl* %17, i32 0)
  %19 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %83

31:                                               ; preds = %16
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @blk_mq_init_queue(i32 %34)
  %36 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %45 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %74

48:                                               ; preds = %31
  br label %58

49:                                               ; preds = %13
  %50 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %51 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @blk_mq_update_nr_hw_queues(i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %49, %48
  %59 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %60 = call i32 @nvme_tcp_start_io_queues(%struct.nvme_ctrl* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %65

64:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %87

65:                                               ; preds = %63
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %70 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @blk_cleanup_queue(i32 %71)
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %79 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @blk_mq_free_tag_set(i32 %80)
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %26
  %84 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %85 = call i32 @nvme_tcp_free_io_queues(%struct.nvme_ctrl* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %64, %11
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @nvme_tcp_alloc_io_queues(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_tcp_alloc_tagset(%struct.nvme_ctrl*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @blk_mq_init_queue(i32) #1

declare dso_local i32 @blk_mq_update_nr_hw_queues(i32, i64) #1

declare dso_local i32 @nvme_tcp_start_io_queues(%struct.nvme_ctrl*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32) #1

declare dso_local i32 @nvme_tcp_free_io_queues(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
