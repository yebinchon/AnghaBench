; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_start_fdiscs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_start_fdiscs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i64, i32 }
%struct.lpfc_vport = type { i64, i64, i32 }

@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@LS_NPIV_FAB_SUPPORTED = common dso_local global i32 0, align 4
@FC_VPORT_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"0259 No NPIV Fabric support\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_start_fdiscs(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport**, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %5)
  store %struct.lpfc_vport** %6, %struct.lpfc_vport*** %3, align 8
  %7 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %8 = icmp ne %struct.lpfc_vport** %7, null
  br i1 %8, label %9, label %123

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %119, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %17, i64 %19
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %20, align 8
  %22 = icmp ne %struct.lpfc_vport* %21, null
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i1 [ false, %10 ], [ %22, %16 ]
  br i1 %24, label %25, label %122

25:                                               ; preds = %23
  %26 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %26, i64 %28
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %29, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %119

36:                                               ; preds = %25
  %37 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %37, i64 %39
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %40, align 8
  %42 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %49, i64 %51
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %52, align 8
  %54 = load i32, i32* @FC_VPORT_FAILED, align 4
  %55 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %53, i32 %54)
  br label %119

56:                                               ; preds = %36
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %63, i64 %65
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %66, align 8
  %68 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %69 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %67, i32 %68)
  br label %119

70:                                               ; preds = %56
  %71 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %71, i64 %73
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %74, align 8
  %76 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %82, i64 %84
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %85, align 8
  %87 = call i32 @lpfc_issue_init_vpi(%struct.lpfc_vport* %86)
  br label %119

88:                                               ; preds = %70
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @LS_NPIV_FAB_SUPPORTED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %96, i64 %98
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %99, align 8
  %101 = call i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %100)
  br label %118

102:                                              ; preds = %88
  %103 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %103, i64 %105
  %107 = load %struct.lpfc_vport*, %struct.lpfc_vport** %106, align 8
  %108 = load i32, i32* @FC_VPORT_NO_FABRIC_SUPP, align 4
  %109 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %107, i32 %108)
  %110 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %110, i64 %112
  %114 = load %struct.lpfc_vport*, %struct.lpfc_vport** %113, align 8
  %115 = load i32, i32* @KERN_ERR, align 4
  %116 = load i32, i32* @LOG_ELS, align 4
  %117 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %102, %95
  br label %119

119:                                              ; preds = %118, %81, %62, %48, %35
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %10

122:                                              ; preds = %23
  br label %123

123:                                              ; preds = %122, %1
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %125 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %126 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %124, %struct.lpfc_vport** %125)
  ret void
}

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_issue_init_vpi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
