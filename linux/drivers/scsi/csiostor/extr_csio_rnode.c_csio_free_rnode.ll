; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_free_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_free_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32 }
%struct.csio_hw = type { i32 }

@n_rnode_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_rnode*)* @csio_free_rnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_free_rnode(%struct.csio_rnode* %0) #0 {
  %2 = alloca %struct.csio_rnode*, align 8
  %3 = alloca %struct.csio_hw*, align 8
  store %struct.csio_rnode* %0, %struct.csio_rnode** %2, align 8
  %4 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %5 = call i32 @csio_rnode_to_lnode(%struct.csio_rnode* %4)
  %6 = call %struct.csio_hw* @csio_lnode_to_hw(i32 %5)
  store %struct.csio_hw* %6, %struct.csio_hw** %3, align 8
  %7 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %8 = call i32 @csio_rnode_exit(%struct.csio_rnode* %7)
  %9 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %10 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @n_rnode_free, align 4
  %13 = call i32 @CSIO_INC_STATS(i32 %11, i32 %12)
  %14 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %15 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %16 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mempool_free(%struct.csio_rnode* %14, i32 %17)
  ret void
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(i32) #1

declare dso_local i32 @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local i32 @csio_rnode_exit(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_INC_STATS(i32, i32) #1

declare dso_local i32 @mempool_free(%struct.csio_rnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
