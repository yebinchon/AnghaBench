; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_dev_loss_tmo_callbk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_dev_loss_tmo_callbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64 }
%struct.csio_rnode = type { i32 }
%struct.csio_hw = type { i32, i32, i32 }
%struct.csio_lnode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"devloss timeout on rnode:%p portid:x%x flowid:x%x\0A\00", align 1
@n_dev_loss_tmo = common dso_local global i32 0, align 4
@CSIO_EVT_DEV_LOSS = common dso_local global i32 0, align 4
@n_evt_drop = common dso_local global i32 0, align 4
@CSIO_HWF_FWEVT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport*)* @csio_dev_loss_tmo_callbk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_dev_loss_tmo_callbk(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.csio_rnode*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %6 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %7 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.csio_rnode**
  %10 = load %struct.csio_rnode*, %struct.csio_rnode** %9, align 8
  store %struct.csio_rnode* %10, %struct.csio_rnode** %3, align 8
  %11 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %12 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %11)
  store %struct.csio_lnode* %12, %struct.csio_lnode** %5, align 8
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %14 = call %struct.csio_lnode* @csio_lnode_to_hw(%struct.csio_lnode* %13)
  %15 = bitcast %struct.csio_lnode* %14 to %struct.csio_hw*
  store %struct.csio_hw* %15, %struct.csio_hw** %4, align 8
  %16 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %17 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %20 = bitcast %struct.csio_hw* %19 to %struct.csio_lnode*
  %21 = call i64 @csio_is_hw_removing(%struct.csio_lnode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %25 = call i64 @csio_is_rnode_ready(%struct.csio_rnode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %1
  br label %70

28:                                               ; preds = %23
  %29 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %30 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %31 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %32 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %35 = call i32 @csio_rn_flowid(%struct.csio_rnode* %34)
  %36 = call i32 @csio_ln_dbg(%struct.csio_lnode* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.csio_rnode* %30, i32 %33, i32 %35)
  %37 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %38 = load i32, i32* @n_dev_loss_tmo, align 4
  %39 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %37, i32 %38)
  %40 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %41 = bitcast %struct.csio_hw* %40 to %struct.csio_lnode*
  %42 = load i32, i32* @CSIO_EVT_DEV_LOSS, align 4
  %43 = call i64 @csio_enqueue_evt(%struct.csio_lnode* %41, i32 %42, %struct.csio_rnode** %3, i32 8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %47 = bitcast %struct.csio_hw* %46 to %struct.csio_lnode*
  %48 = load i32, i32* @n_evt_drop, align 4
  %49 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %47, i32 %48)
  br label %70

50:                                               ; preds = %28
  %51 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %52 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %59 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %60 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %64 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %67 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %66, i32 0, i32 2
  %68 = call i32 @schedule_work(i32* %67)
  br label %74

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %45, %27
  %71 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %72 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock_irq(i32* %72)
  br label %74

74:                                               ; preds = %70, %57
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local %struct.csio_lnode* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @csio_is_hw_removing(%struct.csio_lnode*) #1

declare dso_local i64 @csio_is_rnode_ready(%struct.csio_rnode*) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, %struct.csio_rnode*, i32, i32) #1

declare dso_local i32 @csio_rn_flowid(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i64 @csio_enqueue_evt(%struct.csio_lnode*, i32, %struct.csio_rnode**, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
