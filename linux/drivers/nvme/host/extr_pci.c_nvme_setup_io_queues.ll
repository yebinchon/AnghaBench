; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__, i32, i32, %struct.nvme_queue* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvme_queue = type { i32, i32 }
%struct.pci_dev = type { i32 }

@NVME_QUIRK_SHARED_TAGS = common dso_local global i32 0, align 4
@NVMEQ_ENABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HCTX_TYPE_POLL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"%d/%d/%d default/read/poll queues\0A\00", align 1
@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_setup_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_io_queues(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca %struct.nvme_queue*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  %9 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %9, i32 0, i32 9
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %10, align 8
  %12 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i64 0
  store %struct.nvme_queue* %12, %struct.nvme_queue** %4, align 8
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = call i32 (...) @max_io_queues()
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NVME_QUIRK_SHARED_TAGS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %27, i32 0, i32 6
  %29 = call i32 @nvme_set_queue_count(%struct.TYPE_2__* %28, i32* %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %182

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %182

38:                                               ; preds = %34
  %39 = load i32, i32* @NVMEQ_ENABLED, align 4
  %40 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  %43 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @nvme_cmb_qdepth(%struct.nvme_dev* %48, i32 %49, i32 4)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %60

57:                                               ; preds = %47
  %58 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %80, %61
  %63 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @db_bar_size(%struct.nvme_dev* %63, i32 %64)
  store i64 %65, i64* %8, align 8
  %66 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @nvme_remap_bar(%struct.nvme_dev* %66, i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %81

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %182

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  br i1 true, label %62, label %81

81:                                               ; preds = %80, %71
  %82 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %83 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %86 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %149, %81
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %90 = call i32 @pci_free_irq(%struct.pci_dev* %88, i32 0, %struct.nvme_queue* %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %91)
  %93 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @nvme_setup_irqs(%struct.nvme_dev* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %182

101:                                              ; preds = %87
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %104 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @max(i32 %106, i32 1)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %110 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %108, %114
  %116 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %117 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %119 = call i32 @queue_request_irq(%struct.nvme_queue* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %101
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %182

124:                                              ; preds = %101
  %125 = load i32, i32* @NVMEQ_ENABLED, align 4
  %126 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %127 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %126, i32 0, i32 0
  %128 = call i32 @set_bit(i32 %125, i32* %127)
  %129 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %130 = call i32 @nvme_create_io_queues(%struct.nvme_dev* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %124
  %134 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %135 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %138, label %140

138:                                              ; preds = %133, %124
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %182

140:                                              ; preds = %133
  %141 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %142 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %146 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %140
  %150 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %151 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %155 = call i32 @nvme_disable_io_queues(%struct.nvme_dev* %154)
  %156 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %157 = call i32 @nvme_suspend_io_queues(%struct.nvme_dev* %156)
  br label %87

158:                                              ; preds = %140
  %159 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %160 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %164 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %170 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @HCTX_TYPE_READ, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %176 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_info(i32 %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %168, i32 %174, i32 %180)
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %158, %138, %122, %98, %76, %37, %32
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @max_io_queues(...) #1

declare dso_local i32 @nvme_set_queue_count(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nvme_cmb_qdepth(%struct.nvme_dev*, i32, i32) #1

declare dso_local i64 @db_bar_size(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_remap_bar(%struct.nvme_dev*, i64) #1

declare dso_local i32 @pci_free_irq(%struct.pci_dev*, i32, %struct.nvme_queue*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @nvme_setup_irqs(%struct.nvme_dev*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @queue_request_irq(%struct.nvme_queue*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nvme_create_io_queues(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_disable_io_queues(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_suspend_io_queues(%struct.nvme_dev*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
