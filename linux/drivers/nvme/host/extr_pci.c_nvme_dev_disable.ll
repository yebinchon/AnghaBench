; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dev_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dev_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, %struct.TYPE_6__, i32, i32, i32*, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.pci_dev = type { i64 }

@NVME_REG_CSTS = common dso_local global i64 0, align 8
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@NVME_CTRL_RESETTING = common dso_local global i64 0, align 8
@NVME_CSTS_CFS = common dso_local global i32 0, align 4
@NVME_CSTS_RDY = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i64 0, align 8
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@nvme_cancel_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*, i32)* @nvme_dev_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_dev_disable(%struct.nvme_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %7, align 8
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = call i64 @pci_is_enabled(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %2
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NVME_REG_CSTS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NVME_CTRL_RESETTING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32, %19
  store i32 1, i32* %6, align 4
  %40 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %40, i32 0, i32 1
  %42 = call i32 @nvme_start_freeze(%struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @NVME_CSTS_CFS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @NVME_CSTS_RDY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @pci_channel_io_normal, align 8
  %58 = icmp ne i64 %56, %57
  br label %59

59:                                               ; preds = %53, %48, %43
  %60 = phi i1 [ true, %48 ], [ true, %43 ], [ %58, %53 ]
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %2
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %74, i32 0, i32 1
  %76 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %77 = call i32 @nvme_wait_freeze_timeout(%struct.TYPE_6__* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %70, %67, %64
  %79 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %80 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %79, i32 0, i32 1
  %81 = call i32 @nvme_stop_queues(%struct.TYPE_6__* %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %86 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %92 = call i32 @nvme_disable_io_queues(%struct.nvme_dev* %91)
  %93 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @nvme_disable_admin_queue(%struct.nvme_dev* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %84, %78
  %97 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %98 = call i32 @nvme_suspend_io_queues(%struct.nvme_dev* %97)
  %99 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %100 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = call i32 @nvme_suspend_queue(i32* %102)
  %104 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %105 = call i32 @nvme_pci_disable(%struct.nvme_dev* %104)
  %106 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %107 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %106, i32 0, i32 3
  %108 = load i32, i32* @nvme_cancel_request, align 4
  %109 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %110 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %109, i32 0, i32 1
  %111 = call i32 @blk_mq_tagset_busy_iter(i32* %107, i32 %108, %struct.TYPE_6__* %110)
  %112 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %113 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %112, i32 0, i32 2
  %114 = load i32, i32* @nvme_cancel_request, align 4
  %115 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %116 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %115, i32 0, i32 1
  %117 = call i32 @blk_mq_tagset_busy_iter(i32* %113, i32 %114, %struct.TYPE_6__* %116)
  %118 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %119 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %118, i32 0, i32 3
  %120 = call i32 @blk_mq_tagset_wait_completed_request(i32* %119)
  %121 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %122 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %121, i32 0, i32 2
  %123 = call i32 @blk_mq_tagset_wait_completed_request(i32* %122)
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %96
  %127 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %128 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %127, i32 0, i32 1
  %129 = call i32 @nvme_start_queues(%struct.TYPE_6__* %128)
  %130 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %131 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %126
  %136 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %137 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @blk_queue_dying(i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %135
  %143 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %144 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @blk_mq_unquiesce_queue(i64 %146)
  br label %148

148:                                              ; preds = %142, %135, %126
  br label %149

149:                                              ; preds = %148, %96
  %150 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %151 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @pci_is_enabled(%struct.pci_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @nvme_start_freeze(%struct.TYPE_6__*) #1

declare dso_local i32 @nvme_wait_freeze_timeout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @nvme_stop_queues(%struct.TYPE_6__*) #1

declare dso_local i32 @nvme_disable_io_queues(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_disable_admin_queue(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_suspend_io_queues(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_suspend_queue(i32*) #1

declare dso_local i32 @nvme_pci_disable(%struct.nvme_dev*) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @blk_mq_tagset_wait_completed_request(i32*) #1

declare dso_local i32 @nvme_start_queues(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_queue_dying(i64) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
