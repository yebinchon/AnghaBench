; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_vport_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_vport_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64 }
%struct.csio_lnode = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.csio_hw = type { i32 }

@FC_VPORT_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vport disabled\0A\00", align 1
@FC_VPORT_INITIALIZING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"vport enabled failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"vport enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*, i32)* @csio_vport_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_vport_disable(%struct.fc_vport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_lnode*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.csio_hw*, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %10 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.csio_lnode**
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %12, align 8
  store %struct.csio_lnode* %13, %struct.csio_lnode** %6, align 8
  %14 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %15 = call %struct.Scsi_Host* @csio_ln_to_shost(%struct.csio_lnode* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %7, align 8
  %16 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %17 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %16)
  store %struct.csio_hw* %17, %struct.csio_hw** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %22 = call i32 @scsi_block_requests(%struct.Scsi_Host* %21)
  %23 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %24 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %27 = call i32 @csio_hw_to_scsim(%struct.csio_hw* %26)
  %28 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %29 = call i32 @csio_scsim_cleanup_io_lnode(i32 %27, %struct.csio_lnode* %28)
  %30 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %31 = call i32 @csio_lnode_stop(%struct.csio_lnode* %30)
  %32 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %36 = call i32 @scsi_unblock_requests(%struct.Scsi_Host* %35)
  %37 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %38 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %39 = call i32 @csio_fcoe_free_vnp(%struct.csio_hw* %37, %struct.csio_lnode* %38)
  %40 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %41 = load i32, i32* @FC_VPORT_DISABLED, align 4
  %42 = call i32 @fc_vport_set_state(%struct.fc_vport* %40, i32 %41)
  %43 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %44 = call i32 @csio_ln_err(%struct.csio_lnode* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

45:                                               ; preds = %2
  %46 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %47 = load i32, i32* @FC_VPORT_INITIALIZING, align 4
  %48 = call i32 @fc_vport_set_state(%struct.fc_vport* %46, i32 %47)
  %49 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %50 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %51 = call i64 @csio_fcoe_alloc_vnp(%struct.csio_hw* %49, %struct.csio_lnode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %55 = call i32 @csio_ln_err(%struct.csio_lnode* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

56:                                               ; preds = %45
  %57 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %58 = call i32 @csio_ln_err(%struct.csio_lnode* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %53, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.Scsi_Host* @csio_ln_to_shost(%struct.csio_lnode*) #1

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @scsi_block_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_scsim_cleanup_io_lnode(i32, %struct.csio_lnode*) #1

declare dso_local i32 @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @csio_lnode_stop(%struct.csio_lnode*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @csio_fcoe_free_vnp(%struct.csio_hw*, %struct.csio_lnode*) #1

declare dso_local i32 @fc_vport_set_state(%struct.fc_vport*, i32) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*) #1

declare dso_local i64 @csio_fcoe_alloc_vnp(%struct.csio_hw*, %struct.csio_lnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
