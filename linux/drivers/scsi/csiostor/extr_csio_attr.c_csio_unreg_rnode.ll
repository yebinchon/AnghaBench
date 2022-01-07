; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_unreg_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_unreg_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32, i32, %struct.fc_rport* }
%struct.fc_rport = type { i32 }
%struct.csio_lnode = type { i32 }

@CSIO_RNFR_INITIATOR = common dso_local global i32 0, align 4
@CSIO_RNFR_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Remote port x%x un-registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_unreg_rnode(%struct.csio_rnode* %0) #0 {
  %2 = alloca %struct.csio_rnode*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  store %struct.csio_rnode* %0, %struct.csio_rnode** %2, align 8
  %5 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %6 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %5)
  store %struct.csio_lnode* %6, %struct.csio_lnode** %3, align 8
  %7 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %8 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %7, i32 0, i32 2
  %9 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  store %struct.fc_rport* %9, %struct.fc_rport** %4, align 8
  %10 = load i32, i32* @CSIO_RNFR_INITIATOR, align 4
  %11 = load i32, i32* @CSIO_RNFR_TARGET, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %15 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %19 = call i32 @fc_remote_port_delete(%struct.fc_rport* %18)
  %20 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %21 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %25 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %26 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @csio_ln_dbg(%struct.csio_lnode* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local i32 @fc_remote_port_delete(%struct.fc_rport*) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
