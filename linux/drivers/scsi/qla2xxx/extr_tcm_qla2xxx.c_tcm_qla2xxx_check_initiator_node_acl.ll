; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_check_initiator_node_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_check_initiator_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.qla_hw_data* }
%struct.TYPE_4__ = type { %struct.tcm_qla2xxx_lport* }
%struct.tcm_qla2xxx_lport = type { %struct.tcm_qla2xxx_tpg* }
%struct.tcm_qla2xxx_tpg = type { i32 }
%struct.qla_hw_data = type { i32 }
%struct.fc_port = type { i32 }
%struct.se_session = type { i32 }

@TCM_QLA2XXX_DEFAULT_TAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to locate struct tcm_qla2xxx_lport\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to locate struct tcm_qla2xxx_lport->tpg_1\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%8phC\00", align 1
@TARGET_PROT_ALL = common dso_local global i32 0, align 4
@tcm_qla2xxx_session_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, %struct.fc_port*)* @tcm_qla2xxx_check_initiator_node_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_qla2xxx_check_initiator_node_acl(%struct.TYPE_5__* %0, i8* %1, %struct.fc_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_port*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %10 = alloca %struct.tcm_qla2xxx_tpg*, align 8
  %11 = alloca %struct.se_session*, align 8
  %12 = alloca [36 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.fc_port* %2, %struct.fc_port** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %8, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @TCM_QLA2XXX_DEFAULT_TAGS, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %31, align 8
  store %struct.tcm_qla2xxx_lport* %32, %struct.tcm_qla2xxx_lport** %9, align 8
  %33 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %9, align 8
  %34 = icmp ne %struct.tcm_qla2xxx_lport* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 (...) @dump_stack()
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %71

40:                                               ; preds = %27
  %41 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %9, align 8
  %42 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %41, i32 0, i32 0
  %43 = load %struct.tcm_qla2xxx_tpg*, %struct.tcm_qla2xxx_tpg** %42, align 8
  store %struct.tcm_qla2xxx_tpg* %43, %struct.tcm_qla2xxx_tpg** %10, align 8
  %44 = load %struct.tcm_qla2xxx_tpg*, %struct.tcm_qla2xxx_tpg** %10, align 8
  %45 = icmp ne %struct.tcm_qla2xxx_tpg* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %40
  %51 = bitcast [36 x i8]* %12 to i8**
  %52 = call i32 @memset(i8** %51, i32 0, i32 36)
  %53 = getelementptr inbounds [36 x i8], [36 x i8]* %12, i64 0, i64 0
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @snprintf(i8* %53, i32 36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load %struct.tcm_qla2xxx_tpg*, %struct.tcm_qla2xxx_tpg** %10, align 8
  %57 = getelementptr inbounds %struct.tcm_qla2xxx_tpg, %struct.tcm_qla2xxx_tpg* %56, i32 0, i32 0
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @TARGET_PROT_ALL, align 4
  %60 = getelementptr inbounds [36 x i8], [36 x i8]* %12, i64 0, i64 0
  %61 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %62 = load i32, i32* @tcm_qla2xxx_session_cb, align 4
  %63 = call %struct.se_session* @target_setup_session(i32* %57, i32 %58, i32 4, i32 %59, i8* %60, %struct.fc_port* %61, i32 %62)
  store %struct.se_session* %63, %struct.se_session** %11, align 8
  %64 = load %struct.se_session*, %struct.se_session** %11, align 8
  %65 = call i64 @IS_ERR(%struct.se_session* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %50
  %68 = load %struct.se_session*, %struct.se_session** %11, align 8
  %69 = call i32 @PTR_ERR(%struct.se_session* %68)
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67, %46, %35
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.se_session* @target_setup_session(i32*, i32, i32, i32, i8*, %struct.fc_port*, i32) #1

declare dso_local i64 @IS_ERR(%struct.se_session*) #1

declare dso_local i32 @PTR_ERR(%struct.se_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
