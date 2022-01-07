; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_local_config_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_local_config_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i64, i32, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.lpfc_vport* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.lpfc_vport = type { i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@FC_LBIT = common dso_local global i32 0, align 4
@LPFC_FLOGI = common dso_local global i64 0, align 8
@lpfc_bbscn_def = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"0306 CONFIG_LINK mbxStatus error x%x HBA state x%x\0A\00", align 1
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"0200 CONFIG_LINK bad hba state x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_local_config_link(%struct.lpfc_hba* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_vport* %9, %struct.lpfc_vport** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mempool_free(%struct.TYPE_14__* %18, i32 %21)
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LPFC_SLI_REV4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HBA_FCOE_MODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %147

43:                                               ; preds = %35, %28, %17
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FC_LBIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %65 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %64)
  br label %147

66:                                               ; preds = %56, %49, %43
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LPFC_FLOGI, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %66
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load i32, i32* @lpfc_bbscn_def, align 4
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @bf_get(i32 %83, i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 15
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 %94, 4
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %97 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %82, %77, %72
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %104 = call i32 @lpfc_initial_flogi(%struct.lpfc_vport* %103)
  br label %116

105:                                              ; preds = %66
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %107 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @FC_PT2PT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %114 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %113)
  br label %115

115:                                              ; preds = %112, %105
  br label %116

116:                                              ; preds = %115, %102
  br label %147

117:                                              ; preds = %16
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %119 = load i32, i32* @KERN_ERR, align 4
  %120 = load i32, i32* @LOG_MBOX, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %127 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %125, i64 %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @mempool_free(%struct.TYPE_14__* %130, i32 %133)
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %135)
  %137 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %138 = load i32, i32* @KERN_ERR, align 4
  %139 = load i32, i32* @LOG_DISCOVERY, align 4
  %140 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %141 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %146 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %144, %struct.lpfc_vport* %145)
  br label %147

147:                                              ; preds = %117, %116, %63, %42
  ret void
}

declare dso_local i32 @mempool_free(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_initial_flogi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
