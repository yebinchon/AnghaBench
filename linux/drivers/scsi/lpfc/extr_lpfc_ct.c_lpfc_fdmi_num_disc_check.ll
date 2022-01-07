; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_num_disc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_num_disc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i64, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@FC_FABRIC = common dso_local global i32 0, align 4
@LPFC_FDMI_PORT_ATTR_num_disc = common dso_local global i32 0, align 4
@FDMI_DID = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@SLI_MGMT_RPA = common dso_local global i32 0, align 4
@SLI_MGMT_RPRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_fdmi_num_disc_check(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %67

13:                                               ; preds = %1
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FC_FABRIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %67

21:                                               ; preds = %13
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LPFC_FDMI_PORT_ATTR_num_disc, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %67

29:                                               ; preds = %21
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %31 = call i64 @lpfc_find_map_node(%struct.lpfc_vport* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %67

38:                                               ; preds = %29
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %40 = load i32, i32* @FDMI_DID, align 4
  %41 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %39, i32 %40)
  store %struct.lpfc_nodelist* %41, %struct.lpfc_nodelist** %4, align 8
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %43 = icmp ne %struct.lpfc_nodelist* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %46 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %38
  br label %67

49:                                               ; preds = %44
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %58 = load i32, i32* @SLI_MGMT_RPA, align 4
  %59 = load i32, i32* @LPFC_FDMI_PORT_ATTR_num_disc, align 4
  %60 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %56, %struct.lpfc_nodelist* %57, i32 %58, i32 %59)
  br label %67

61:                                               ; preds = %49
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %64 = load i32, i32* @SLI_MGMT_RPRT, align 4
  %65 = load i32, i32* @LPFC_FDMI_PORT_ATTR_num_disc, align 4
  %66 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %62, %struct.lpfc_nodelist* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %12, %20, %28, %37, %48, %61, %55
  ret void
}

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_find_map_node(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_fdmi_cmd(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
