; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rnode_devloss_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rnode_devloss_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32 }
%struct.csio_lnode = type { i32 }

@CSIO_RNFE_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_rnode_devloss_handler(%struct.csio_rnode* %0) #0 {
  %2 = alloca %struct.csio_rnode*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  store %struct.csio_rnode* %0, %struct.csio_rnode** %2, align 8
  %4 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %5 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %4)
  store %struct.csio_lnode* %5, %struct.csio_lnode** %3, align 8
  %6 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %7 = call i64 @csio_is_rnode_ready(%struct.csio_rnode* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %12 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %11, i32 0, i32 0
  %13 = load i32, i32* @CSIO_RNFE_CLOSE, align 4
  %14 = call i32 @csio_post_event(i32* %12, i32 %13)
  %15 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %16 = call i64 @csio_is_rnode_uninit(%struct.csio_rnode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %20 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %21 = call i32 @csio_put_rnode(%struct.csio_lnode* %19, %struct.csio_rnode* %20)
  br label %22

22:                                               ; preds = %9, %18, %10
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local i64 @csio_is_rnode_ready(%struct.csio_rnode*) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i64 @csio_is_rnode_uninit(%struct.csio_rnode*) #1

declare dso_local i32 @csio_put_rnode(%struct.csio_lnode*, %struct.csio_rnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
