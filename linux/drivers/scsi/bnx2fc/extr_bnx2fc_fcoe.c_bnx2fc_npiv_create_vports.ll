; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_npiv_create_vports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_npiv_create_vports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i32 }
%struct.cnic_fc_npiv_tbl = type { i64, i32*, i32* }
%struct.fc_vport_identifiers = type { i32, i8*, i8*, i32, i32, i32 }

@MAX_NPIV_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Exceeded count max of npiv table\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"First NPIV table entries invalid.\0A\00", align 1
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_PORTTYPE_NPIV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"NPIV[%u]:%016llx-%016llx\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Creating vport %s:%s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to create vport\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fc_lport*, %struct.cnic_fc_npiv_tbl*)* @bnx2fc_npiv_create_vports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2fc_npiv_create_vports(%struct.fc_lport* %0, %struct.cnic_fc_npiv_tbl* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.cnic_fc_npiv_tbl*, align 8
  %5 = alloca %struct.fc_vport_identifiers, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.cnic_fc_npiv_tbl* %1, %struct.cnic_fc_npiv_tbl** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.cnic_fc_npiv_tbl*, %struct.cnic_fc_npiv_tbl** %4, align 8
  %12 = getelementptr inbounds %struct.cnic_fc_npiv_tbl, %struct.cnic_fc_npiv_tbl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_NPIV_ENTRIES, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = call i32 (%struct.fc_lport*, i8*, ...) @BNX2FC_HBA_DBG(%struct.fc_lport* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %113

19:                                               ; preds = %2
  %20 = load %struct.cnic_fc_npiv_tbl*, %struct.cnic_fc_npiv_tbl** %4, align 8
  %21 = getelementptr inbounds %struct.cnic_fc_npiv_tbl, %struct.cnic_fc_npiv_tbl* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @wwn_to_u64(i32 %24)
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.cnic_fc_npiv_tbl*, %struct.cnic_fc_npiv_tbl** %4, align 8
  %29 = getelementptr inbounds %struct.cnic_fc_npiv_tbl, %struct.cnic_fc_npiv_tbl* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @wwn_to_u64(i32 %32)
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %37 = call i32 (%struct.fc_lport*, i8*, ...) @BNX2FC_HBA_DBG(%struct.fc_lport* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %113

38:                                               ; preds = %27, %19
  %39 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %40 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 5
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @FC_PORTTYPE_NPIV, align 4
  %42 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 0
  store i32 0, i32* %43, align 8
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %109, %38
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.cnic_fc_npiv_tbl*, %struct.cnic_fc_npiv_tbl** %4, align 8
  %47 = getelementptr inbounds %struct.cnic_fc_npiv_tbl, %struct.cnic_fc_npiv_tbl* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %112

50:                                               ; preds = %44
  %51 = load %struct.cnic_fc_npiv_tbl*, %struct.cnic_fc_npiv_tbl** %4, align 8
  %52 = getelementptr inbounds %struct.cnic_fc_npiv_tbl, %struct.cnic_fc_npiv_tbl* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @wwn_to_u64(i32 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %63 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %61, %50
  %66 = load i64, i64* %8, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = load %struct.cnic_fc_npiv_tbl*, %struct.cnic_fc_npiv_tbl** %4, align 8
  %70 = getelementptr inbounds %struct.cnic_fc_npiv_tbl, %struct.cnic_fc_npiv_tbl* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @wwn_to_u64(i32 %74)
  %76 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @scnprintf(i32 %78, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %79, i8* %81, i8* %83)
  %85 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %88 = call i32 @fcoe_wwn_to_str(i8* %86, i8* %87, i32 32)
  %89 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %5, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %92 = call i32 @fcoe_wwn_to_str(i8* %90, i8* %91, i32 32)
  %93 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %96 = call i32 (%struct.fc_lport*, i8*, ...) @BNX2FC_HBA_DBG(%struct.fc_lport* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %98 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @fc_vport_create(i32 %99, i32 0, %struct.fc_vport_identifiers* %5)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %65
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %7, align 8
  br label %108

105:                                              ; preds = %65
  %106 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %107 = call i32 (%struct.fc_lport*, i8*, ...) @BNX2FC_HBA_DBG(%struct.fc_lport* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %44

112:                                              ; preds = %44
  br label %113

113:                                              ; preds = %112, %35, %16
  %114 = load i64, i64* %7, align 8
  ret i64 %114
}

declare dso_local i32 @BNX2FC_HBA_DBG(%struct.fc_lport*, i8*, ...) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i64, i8*, i8*) #1

declare dso_local i32 @fcoe_wwn_to_str(i8*, i8*, i32) #1

declare dso_local i64 @fc_vport_create(i32, i32, %struct.fc_vport_identifiers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
