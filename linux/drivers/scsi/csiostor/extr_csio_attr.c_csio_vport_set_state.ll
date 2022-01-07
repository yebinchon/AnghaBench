; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_vport_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_vport_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32, %struct.csio_lnode*, %struct.fc_vport* }
%struct.fc_vport = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"READY\00", align 1
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@CSIO_LNF_NPIVSUPP = common dso_local global i32 0, align 4
@FC_VPORT_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@FC_VPORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_lnode*)* @csio_vport_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_vport_set_state(%struct.csio_lnode* %0) #0 {
  %2 = alloca %struct.csio_lnode*, align 8
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.csio_lnode*, align 8
  %5 = alloca [16 x i8], align 16
  store %struct.csio_lnode* %0, %struct.csio_lnode** %2, align 8
  %6 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %7 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %6, i32 0, i32 2
  %8 = load %struct.fc_vport*, %struct.fc_vport** %7, align 8
  store %struct.fc_vport* %8, %struct.fc_vport** %3, align 8
  %9 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %10 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %9, i32 0, i32 1
  %11 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  store %struct.csio_lnode* %11, %struct.csio_lnode** %4, align 8
  %12 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %14 = call i32 @csio_lnode_state_to_str(%struct.csio_lnode* %12, i8* %13)
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %20 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %21 = call i32 @fc_vport_set_state(%struct.fc_vport* %19, i32 %20)
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %24 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CSIO_LNF_NPIVSUPP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %31 = load i32, i32* @FC_VPORT_NO_FABRIC_SUPP, align 4
  %32 = call i32 @fc_vport_set_state(%struct.fc_vport* %30, i32 %31)
  br label %48

33:                                               ; preds = %22
  %34 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %36 = call i32 @csio_lnode_state_to_str(%struct.csio_lnode* %34, i8* %35)
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %42 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %43 = call i32 @fc_vport_set_state(%struct.fc_vport* %41, i32 %42)
  br label %48

44:                                               ; preds = %33
  %45 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %46 = load i32, i32* @FC_VPORT_ACTIVE, align 4
  %47 = call i32 @fc_vport_set_state(%struct.fc_vport* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %40, %29, %18
  ret void
}

declare dso_local i32 @csio_lnode_state_to_str(%struct.csio_lnode*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fc_vport_set_state(%struct.fc_vport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
