; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c___csio_reg_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c___csio_reg_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32, i64 }
%struct.csio_lnode = type { i32 }
%struct.csio_hw = type { i32 }

@CSIO_RNFR_TARGET = common dso_local global i32 0, align 4
@FC_FID_MGMT_SERV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_rnode*)* @__csio_reg_rnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__csio_reg_rnode(%struct.csio_rnode* %0) #0 {
  %2 = alloca %struct.csio_rnode*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  store %struct.csio_rnode* %0, %struct.csio_rnode** %2, align 8
  %5 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %6 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %5)
  store %struct.csio_lnode* %6, %struct.csio_lnode** %3, align 8
  %7 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %8 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %7)
  store %struct.csio_hw* %8, %struct.csio_hw** %4, align 8
  %9 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %10 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %9, i32 0, i32 0
  %11 = call i32 @spin_unlock_irq(i32* %10)
  %12 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %13 = call i32 @csio_reg_rnode(%struct.csio_rnode* %12)
  %14 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %18 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CSIO_RNFR_TARGET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %25 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %30 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FC_FID_MGMT_SERV, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %36 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %37 = bitcast %struct.csio_rnode* %36 to i8*
  %38 = call i32 @csio_ln_fdmi_start(%struct.csio_lnode* %35, i8* %37)
  br label %39

39:                                               ; preds = %34, %28
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_reg_rnode(%struct.csio_rnode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_ln_fdmi_start(%struct.csio_lnode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
