; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_blk_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scm_blk_dev_cleanup(%struct.scm_blk_dev* %0) #0 {
  %2 = alloca %struct.scm_blk_dev*, align 8
  store %struct.scm_blk_dev* %0, %struct.scm_blk_dev** %2, align 8
  %3 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %2, align 8
  %4 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @del_gendisk(%struct.TYPE_3__* %5)
  %7 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %2, align 8
  %8 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @blk_cleanup_queue(i32 %11)
  %13 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %2, align 8
  %14 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %13, i32 0, i32 1
  %15 = call i32 @blk_mq_free_tag_set(i32* %14)
  %16 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %2, align 8
  %17 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @put_disk(%struct.TYPE_3__* %18)
  ret void
}

declare dso_local i32 @del_gendisk(%struct.TYPE_3__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
