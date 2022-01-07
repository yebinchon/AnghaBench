; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_set_sess_by_loop_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_set_sess_by_loop_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_qla2xxx_lport = type { i64 }
%struct.se_node_acl = type { i32 }
%struct.tcm_qla2xxx_nacl = type { %struct.fc_port* }
%struct.se_session = type { i32 }
%struct.fc_port = type { %struct.se_session* }
%struct.tcm_qla2xxx_fc_loopid = type { %struct.se_node_acl* }

@.str = private unnamed_addr constant [44 x i8] c"set_sess_by_loop_id: Using loop_id: 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Setting up new fc_loopid->se_nacl to new_se_nacl\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Clearing nacl->fc_port and fc_loopid->se_nacl\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Replacing existing nacl->fc_port and fc_loopid->se_nacl\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Clearing fc_loopid->se_nacl\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Replacing existing fc_loopid->se_nacl w/o active nacl->fc_port\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Setup nacl->fc_port %p by loop_id for se_nacl: %p, initiatorname: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcm_qla2xxx_lport*, %struct.se_node_acl*, %struct.tcm_qla2xxx_nacl*, %struct.se_session*, %struct.fc_port*, i64)* @tcm_qla2xxx_set_sess_by_loop_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcm_qla2xxx_set_sess_by_loop_id(%struct.tcm_qla2xxx_lport* %0, %struct.se_node_acl* %1, %struct.tcm_qla2xxx_nacl* %2, %struct.se_session* %3, %struct.fc_port* %4, i64 %5) #0 {
  %7 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %8 = alloca %struct.se_node_acl*, align 8
  %9 = alloca %struct.tcm_qla2xxx_nacl*, align 8
  %10 = alloca %struct.se_session*, align 8
  %11 = alloca %struct.fc_port*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.se_node_acl*, align 8
  %14 = alloca %struct.tcm_qla2xxx_fc_loopid*, align 8
  store %struct.tcm_qla2xxx_lport* %0, %struct.tcm_qla2xxx_lport** %7, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %8, align 8
  store %struct.tcm_qla2xxx_nacl* %2, %struct.tcm_qla2xxx_nacl** %9, align 8
  store %struct.se_session* %3, %struct.se_session** %10, align 8
  store %struct.fc_port* %4, %struct.fc_port** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %7, align 8
  %18 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.tcm_qla2xxx_fc_loopid*
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.tcm_qla2xxx_fc_loopid, %struct.tcm_qla2xxx_fc_loopid* %20, i64 %21
  store %struct.tcm_qla2xxx_fc_loopid* %22, %struct.tcm_qla2xxx_fc_loopid** %14, align 8
  %23 = load %struct.tcm_qla2xxx_fc_loopid*, %struct.tcm_qla2xxx_fc_loopid** %14, align 8
  %24 = getelementptr inbounds %struct.tcm_qla2xxx_fc_loopid, %struct.tcm_qla2xxx_fc_loopid* %23, i32 0, i32 0
  %25 = load %struct.se_node_acl*, %struct.se_node_acl** %24, align 8
  store %struct.se_node_acl* %25, %struct.se_node_acl** %13, align 8
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %13, align 8
  %27 = icmp ne %struct.se_node_acl* %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %6
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %31 = load %struct.tcm_qla2xxx_fc_loopid*, %struct.tcm_qla2xxx_fc_loopid** %14, align 8
  %32 = getelementptr inbounds %struct.tcm_qla2xxx_fc_loopid, %struct.tcm_qla2xxx_fc_loopid* %31, i32 0, i32 0
  store %struct.se_node_acl* %30, %struct.se_node_acl** %32, align 8
  %33 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %34 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %33, i32 0, i32 0
  %35 = load %struct.se_session*, %struct.se_session** %34, align 8
  %36 = load %struct.se_session*, %struct.se_session** %10, align 8
  %37 = icmp ne %struct.se_session* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.se_session*, %struct.se_session** %10, align 8
  %40 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %41 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %40, i32 0, i32 0
  store %struct.se_session* %39, %struct.se_session** %41, align 8
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %44 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %43, i32 0, i32 0
  %45 = load %struct.fc_port*, %struct.fc_port** %44, align 8
  %46 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %47 = icmp ne %struct.fc_port* %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %50 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %51 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %50, i32 0, i32 0
  store %struct.fc_port* %49, %struct.fc_port** %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %132

53:                                               ; preds = %6
  %54 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %55 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %54, i32 0, i32 0
  %56 = load %struct.fc_port*, %struct.fc_port** %55, align 8
  %57 = icmp ne %struct.fc_port* %56, null
  br i1 %57, label %58, label %92

58:                                               ; preds = %53
  %59 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %60 = icmp eq %struct.se_node_acl* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.tcm_qla2xxx_fc_loopid*, %struct.tcm_qla2xxx_fc_loopid** %14, align 8
  %64 = getelementptr inbounds %struct.tcm_qla2xxx_fc_loopid, %struct.tcm_qla2xxx_fc_loopid* %63, i32 0, i32 0
  store %struct.se_node_acl* null, %struct.se_node_acl** %64, align 8
  %65 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %66 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %65, i32 0, i32 0
  store %struct.fc_port* null, %struct.fc_port** %66, align 8
  br label %132

67:                                               ; preds = %58
  %68 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %70 = load %struct.tcm_qla2xxx_fc_loopid*, %struct.tcm_qla2xxx_fc_loopid** %14, align 8
  %71 = getelementptr inbounds %struct.tcm_qla2xxx_fc_loopid, %struct.tcm_qla2xxx_fc_loopid* %70, i32 0, i32 0
  store %struct.se_node_acl* %69, %struct.se_node_acl** %71, align 8
  %72 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %73 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %72, i32 0, i32 0
  %74 = load %struct.se_session*, %struct.se_session** %73, align 8
  %75 = load %struct.se_session*, %struct.se_session** %10, align 8
  %76 = icmp ne %struct.se_session* %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.se_session*, %struct.se_session** %10, align 8
  %79 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %80 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %79, i32 0, i32 0
  store %struct.se_session* %78, %struct.se_session** %80, align 8
  br label %81

81:                                               ; preds = %77, %67
  %82 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %83 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %82, i32 0, i32 0
  %84 = load %struct.fc_port*, %struct.fc_port** %83, align 8
  %85 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %86 = icmp ne %struct.fc_port* %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %89 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %90 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %89, i32 0, i32 0
  store %struct.fc_port* %88, %struct.fc_port** %90, align 8
  br label %91

91:                                               ; preds = %87, %81
  br label %132

92:                                               ; preds = %53
  %93 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %94 = icmp eq %struct.se_node_acl* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.tcm_qla2xxx_fc_loopid*, %struct.tcm_qla2xxx_fc_loopid** %14, align 8
  %98 = getelementptr inbounds %struct.tcm_qla2xxx_fc_loopid, %struct.tcm_qla2xxx_fc_loopid* %97, i32 0, i32 0
  store %struct.se_node_acl* null, %struct.se_node_acl** %98, align 8
  br label %132

99:                                               ; preds = %92
  %100 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %102 = load %struct.tcm_qla2xxx_fc_loopid*, %struct.tcm_qla2xxx_fc_loopid** %14, align 8
  %103 = getelementptr inbounds %struct.tcm_qla2xxx_fc_loopid, %struct.tcm_qla2xxx_fc_loopid* %102, i32 0, i32 0
  store %struct.se_node_acl* %101, %struct.se_node_acl** %103, align 8
  %104 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %105 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %104, i32 0, i32 0
  %106 = load %struct.se_session*, %struct.se_session** %105, align 8
  %107 = load %struct.se_session*, %struct.se_session** %10, align 8
  %108 = icmp ne %struct.se_session* %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load %struct.se_session*, %struct.se_session** %10, align 8
  %111 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %112 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %111, i32 0, i32 0
  store %struct.se_session* %110, %struct.se_session** %112, align 8
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %115 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %114, i32 0, i32 0
  %116 = load %struct.fc_port*, %struct.fc_port** %115, align 8
  %117 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %118 = icmp ne %struct.fc_port* %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %121 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %122 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %121, i32 0, i32 0
  store %struct.fc_port* %120, %struct.fc_port** %122, align 8
  br label %123

123:                                              ; preds = %119, %113
  %124 = load %struct.tcm_qla2xxx_nacl*, %struct.tcm_qla2xxx_nacl** %9, align 8
  %125 = getelementptr inbounds %struct.tcm_qla2xxx_nacl, %struct.tcm_qla2xxx_nacl* %124, i32 0, i32 0
  %126 = load %struct.fc_port*, %struct.fc_port** %125, align 8
  %127 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %128 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %129 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), %struct.fc_port* %126, %struct.se_node_acl* %127, i32 %130)
  br label %132

132:                                              ; preds = %123, %95, %91, %61, %52
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
