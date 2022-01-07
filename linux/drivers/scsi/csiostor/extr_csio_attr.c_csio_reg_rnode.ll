; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_reg_rnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_reg_rnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32, i32, i32, %struct.csio_service_parms, %struct.fc_rport* }
%struct.csio_service_parms = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fc_rport = type { i32, i32, i32, i64 }
%struct.csio_lnode = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_rport_identifiers = type { i32, i32, i8*, i8* }

@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CSIO_RNFR_INITIATOR = common dso_local global i32 0, align 4
@CSIO_RNFR_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register rport = 0x%x.\0A\00", align 1
@FC_CPC_VALID = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@FC_COS_UNSPECIFIED = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Remote port x%x role 0x%x registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_reg_rnode(%struct.csio_rnode* %0) #0 {
  %2 = alloca %struct.csio_rnode*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_rport_identifiers, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca %struct.csio_service_parms*, align 8
  store %struct.csio_rnode* %0, %struct.csio_rnode** %2, align 8
  %8 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %9 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %8)
  store %struct.csio_lnode* %9, %struct.csio_lnode** %3, align 8
  %10 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %11 = call %struct.Scsi_Host* @csio_ln_to_shost(%struct.csio_lnode* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %13 = call i32 @csio_rn_wwnn(%struct.csio_rnode* %12)
  %14 = call i8* @wwn_to_u64(i32 %13)
  %15 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %17 = call i32 @csio_rn_wwpn(%struct.csio_rnode* %16)
  %18 = call i8* @wwn_to_u64(i32 %17)
  %19 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %21 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %25 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %27 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CSIO_RNFR_INITIATOR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %1
  %33 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %34 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CSIO_RNFR_TARGET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32, %1
  %40 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %41 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %40, i32 0, i32 4
  %42 = load %struct.fc_rport*, %struct.fc_rport** %41, align 8
  store %struct.fc_rport* %42, %struct.fc_rport** %6, align 8
  %43 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %44 = icmp ne %struct.fc_rport* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @CSIO_ASSERT(i32 %45)
  br label %111

47:                                               ; preds = %32
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %49 = call %struct.fc_rport* @fc_remote_port_add(%struct.Scsi_Host* %48, i32 0, %struct.fc_rport_identifiers* %5)
  %50 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %51 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %50, i32 0, i32 4
  store %struct.fc_rport* %49, %struct.fc_rport** %51, align 8
  %52 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %53 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %52, i32 0, i32 4
  %54 = load %struct.fc_rport*, %struct.fc_rport** %53, align 8
  %55 = icmp ne %struct.fc_rport* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %58 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %59 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @csio_ln_err(%struct.csio_lnode* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %158

62:                                               ; preds = %47
  %63 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %64 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %68 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %67, i32 0, i32 4
  %69 = load %struct.fc_rport*, %struct.fc_rport** %68, align 8
  store %struct.fc_rport* %69, %struct.fc_rport** %6, align 8
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @spin_lock_irq(i32 %72)
  %74 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %75 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %76 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.csio_rnode**
  store %struct.csio_rnode* %74, %struct.csio_rnode** %78, align 8
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %80 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @spin_unlock_irq(i32 %81)
  %83 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %84 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %83, i32 0, i32 3
  store %struct.csio_service_parms* %84, %struct.csio_service_parms** %7, align 8
  %85 = load %struct.csio_service_parms*, %struct.csio_service_parms** %7, align 8
  %86 = getelementptr inbounds %struct.csio_service_parms, %struct.csio_service_parms* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ntohs(i32 %88)
  %90 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %91 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.csio_service_parms*, %struct.csio_service_parms** %7, align 8
  %93 = getelementptr inbounds %struct.csio_service_parms, %struct.csio_service_parms* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ntohs(i32 %97)
  %99 = load i32, i32* @FC_CPC_VALID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %62
  %103 = load i32, i32* @FC_COS_CLASS3, align 4
  %104 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %105 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %110

106:                                              ; preds = %62
  %107 = load i32, i32* @FC_COS_UNSPECIFIED, align 4
  %108 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %109 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %39
  %112 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %113 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CSIO_RNFR_INITIATOR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %120 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %111
  %124 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %125 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CSIO_RNFR_TARGET, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %132 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %130, %123
  %136 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %142 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @fc_remote_port_rolechg(%struct.fc_rport* %141, i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %147 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %150 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %152 = load %struct.csio_rnode*, %struct.csio_rnode** %2, align 8
  %153 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @csio_ln_dbg(%struct.csio_lnode* %151, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %145, %56
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local %struct.Scsi_Host* @csio_ln_to_shost(%struct.csio_lnode*) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @csio_rn_wwnn(%struct.csio_rnode*) #1

declare dso_local i32 @csio_rn_wwpn(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_ASSERT(i32) #1

declare dso_local %struct.fc_rport* @fc_remote_port_add(%struct.Scsi_Host*, i32, %struct.fc_rport_identifiers*) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @fc_remote_port_rolechg(%struct.fc_rport*, i32) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
