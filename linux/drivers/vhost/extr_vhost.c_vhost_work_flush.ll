; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_work_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_work_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i64 }
%struct.vhost_work = type { i32 }
%struct.vhost_flush_struct = type { i32, i32 }

@vhost_flush_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_work_flush(%struct.vhost_dev* %0, %struct.vhost_work* %1) #0 {
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.vhost_work*, align 8
  %5 = alloca %struct.vhost_flush_struct, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  store %struct.vhost_work* %1, %struct.vhost_work** %4, align 8
  %6 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.vhost_flush_struct, %struct.vhost_flush_struct* %5, i32 0, i32 0
  %12 = call i32 @init_completion(i32* %11)
  %13 = getelementptr inbounds %struct.vhost_flush_struct, %struct.vhost_flush_struct* %5, i32 0, i32 1
  %14 = load i32, i32* @vhost_flush_work, align 4
  %15 = call i32 @vhost_work_init(i32* %13, i32 %14)
  %16 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vhost_flush_struct, %struct.vhost_flush_struct* %5, i32 0, i32 1
  %18 = call i32 @vhost_work_queue(%struct.vhost_dev* %16, i32* %17)
  %19 = getelementptr inbounds %struct.vhost_flush_struct, %struct.vhost_flush_struct* %5, i32 0, i32 0
  %20 = call i32 @wait_for_completion(i32* %19)
  br label %21

21:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vhost_work_init(i32*, i32) #1

declare dso_local i32 @vhost_work_queue(%struct.vhost_dev*, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
