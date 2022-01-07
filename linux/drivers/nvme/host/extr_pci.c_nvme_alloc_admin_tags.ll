; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_alloc_admin_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_alloc_admin_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.nvme_dev*, i32, i32, i32, i32, i32* }

@nvme_mq_admin_ops = common dso_local global i32 0, align 4
@NVME_AQ_MQ_TAG_DEPTH = common dso_local global i32 0, align 4
@ADMIN_TIMEOUT = common dso_local global i32 0, align 4
@BLK_MQ_F_NO_SCHED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_alloc_admin_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_alloc_admin_tags(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  %4 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %5 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %89, label %9

9:                                                ; preds = %1
  %10 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 7
  store i32* @nvme_mq_admin_ops, i32** %12, align 8
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @NVME_AQ_MQ_TAG_DEPTH, align 4
  %17 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @ADMIN_TIMEOUT, align 4
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 8
  %24 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_to_node(i32 %26)
  %28 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 4, i32* %33, align 4
  %34 = load i32, i32* @BLK_MQ_F_NO_SCHED, align 4
  %35 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %39 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store %struct.nvme_dev* %38, %struct.nvme_dev** %41, align 8
  %42 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %42, i32 0, i32 1
  %44 = call i64 @blk_mq_alloc_tag_set(%struct.TYPE_6__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %9
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %96

49:                                               ; preds = %9
  %50 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %50, i32 0, i32 1
  %52 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %54, align 8
  %55 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %55, i32 0, i32 1
  %57 = call i32* @blk_mq_init_queue(%struct.TYPE_6__* %56)
  %58 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32* %57, i32** %60, align 8
  %61 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %62 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %49
  %68 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %69 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %68, i32 0, i32 1
  %70 = call i32 @blk_mq_free_tag_set(%struct.TYPE_6__* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %96

73:                                               ; preds = %49
  %74 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @blk_get_queue(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %73
  %81 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %82 = call i32 @nvme_dev_remove_admin(%struct.nvme_dev* %81)
  %83 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %84 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %96

88:                                               ; preds = %73
  br label %95

89:                                               ; preds = %1
  %90 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %91 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @blk_mq_unquiesce_queue(i32* %93)
  br label %95

95:                                               ; preds = %89, %88
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %80, %67, %46
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i64 @blk_mq_alloc_tag_set(%struct.TYPE_6__*) #1

declare dso_local i32* @blk_mq_init_queue(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_get_queue(i32*) #1

declare dso_local i32 @nvme_dev_remove_admin(%struct.nvme_dev*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
