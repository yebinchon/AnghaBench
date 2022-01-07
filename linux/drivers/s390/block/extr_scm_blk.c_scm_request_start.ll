; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_request_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i32, %struct.scm_blk_dev* }
%struct.scm_blk_dev = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"no subchannel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*)* @scm_request_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_request_start(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca %struct.scm_blk_dev*, align 8
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  %4 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %5 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %4, i32 0, i32 1
  %6 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %5, align 8
  store %struct.scm_blk_dev* %6, %struct.scm_blk_dev** %3, align 8
  %7 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %8 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %7, i32 0, i32 0
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %11 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @eadm_start_aob(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @SCM_LOG(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %18 = call i32 @scm_request_requeue(%struct.scm_request* %17)
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @eadm_start_aob(i32) #1

declare dso_local i32 @SCM_LOG(i32, i8*) #1

declare dso_local i32 @scm_request_requeue(%struct.scm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
