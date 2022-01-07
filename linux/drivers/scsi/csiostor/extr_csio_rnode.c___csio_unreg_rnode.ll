; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c___csio_unreg_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c___csio_unreg_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32, i32 }
%struct.csio_lnode = type { i32, i32 }
%struct.csio_hw = type { i32 }

@tmp_q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Returning completion queue I/Os\0A\00", align 1
@CSIO_RNFR_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_rnode*)* @__csio_unreg_rnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__csio_unreg_rnode(%struct.csio_rnode* %0) #0 {
  %2 = alloca %struct.csio_rnode*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.csio_rnode* %0, %struct.csio_rnode** %2, align 8
  %6 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %7 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %6)
  store %struct.csio_lnode* %7, %struct.csio_lnode** %3, align 8
  %8 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %9 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %8)
  store %struct.csio_hw* %9, %struct.csio_hw** %4, align 8
  %10 = load i32, i32* @tmp_q, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  store i32 0, i32* %5, align 4
  %12 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %13 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %18 = call i32 @csio_dbg(%struct.csio_hw* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %20 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %19, i32 0, i32 1
  %21 = call i32 @list_splice_tail_init(i32* %20, i32* @tmp_q)
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %24 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CSIO_RNFR_TARGET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %31 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %35 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %22
  %39 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %40 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %43 = call i32 @csio_unreg_rnode(%struct.csio_rnode* %42)
  %44 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %45 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_irq(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %51 = call i32 @csio_hw_to_scsim(%struct.csio_hw* %50)
  %52 = call i32 @csio_scsi_cleanup_io_q(i32 %51, i32* @tmp_q)
  br label %53

53:                                               ; preds = %49, %38
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_unreg_rnode(%struct.csio_rnode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_scsi_cleanup_io_q(i32, i32*) #1

declare dso_local i32 @csio_hw_to_scsim(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
