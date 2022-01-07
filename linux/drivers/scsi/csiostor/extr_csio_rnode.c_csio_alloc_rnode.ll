; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_alloc_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_alloc_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32 }
%struct.csio_lnode = type { i32 }
%struct.csio_hw = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_rnode_alloc = common dso_local global i32 0, align 4
@n_rnode_nomem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csio_rnode* (%struct.csio_lnode*)* @csio_alloc_rnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csio_rnode* @csio_alloc_rnode(%struct.csio_lnode* %0) #0 {
  %2 = alloca %struct.csio_rnode*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_rnode*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  %6 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %7 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %6)
  store %struct.csio_hw* %7, %struct.csio_hw** %4, align 8
  %8 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %9 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.csio_rnode* @mempool_alloc(i32 %10, i32 %11)
  store %struct.csio_rnode* %12, %struct.csio_rnode** %5, align 8
  %13 = load %struct.csio_rnode*, %struct.csio_rnode** %5, align 8
  %14 = icmp ne %struct.csio_rnode* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.csio_rnode*, %struct.csio_rnode** %5, align 8
  %18 = call i32 @memset(%struct.csio_rnode* %17, i32 0, i32 4)
  %19 = load %struct.csio_rnode*, %struct.csio_rnode** %5, align 8
  %20 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %21 = call i64 @csio_rnode_init(%struct.csio_rnode* %19, %struct.csio_lnode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %29

24:                                               ; preds = %16
  %25 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %26 = load i32, i32* @n_rnode_alloc, align 4
  %27 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %25, i32 %26)
  %28 = load %struct.csio_rnode*, %struct.csio_rnode** %5, align 8
  store %struct.csio_rnode* %28, %struct.csio_rnode** %2, align 8
  br label %39

29:                                               ; preds = %23
  %30 = load %struct.csio_rnode*, %struct.csio_rnode** %5, align 8
  %31 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %32 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mempool_free(%struct.csio_rnode* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %15
  %36 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %37 = load i32, i32* @n_rnode_nomem, align 4
  %38 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %36, i32 %37)
  store %struct.csio_rnode* null, %struct.csio_rnode** %2, align 8
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  ret %struct.csio_rnode* %40
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local %struct.csio_rnode* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.csio_rnode*, i32, i32) #1

declare dso_local i64 @csio_rnode_init(%struct.csio_rnode*, %struct.csio_lnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i32 @mempool_free(%struct.csio_rnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
