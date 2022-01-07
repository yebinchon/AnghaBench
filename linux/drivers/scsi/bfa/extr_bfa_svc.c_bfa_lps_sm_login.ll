; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@bfa_lps_sm_online = common dso_local global i32 0, align 4
@BFA_PL_MID_LPS = common dso_local global i32 0, align 4
@BFA_PL_EID_LOGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"FDISC Accept\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"FLOGI Accept\00", align 1
@bfa_lps_sm_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"FDISC Fail (RJT or timeout)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"FLOGI Fail (RJT or timeout)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*, i32)* @bfa_lps_sm_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_sm_login(%struct.bfa_lps_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_lps_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_3__* %7, i32 %10)
  %12 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(%struct.TYPE_3__* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %127 [
    i32 130, label %18
    i32 129, label %108
    i32 131, label %108
    i32 128, label %112
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BFA_STATUS_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %18
  %25 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %26 = load i32, i32* @bfa_lps_sm_online, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %25, i32 %26)
  %28 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %39 = load i32, i32* @BFA_PL_EID_LOGIN, align 4
  %40 = call i32 @bfa_plog_str(i32 %37, i32 %38, i32 %39, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %50

41:                                               ; preds = %24
  %42 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %48 = load i32, i32* @BFA_PL_EID_LOGIN, align 4
  %49 = call i32 @bfa_plog_str(i32 %46, i32 %47, i32 %48, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %41, %32
  %51 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bfa_trc(%struct.TYPE_3__* %53, i32 %56)
  %58 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @bfa_trc(%struct.TYPE_3__* %60, i32 %63)
  %65 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %50
  %70 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %71 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %76 = call i32 @bfa_sm_send_event(%struct.bfa_lps_s* %75, i32 128)
  br label %77

77:                                               ; preds = %74, %69, %50
  br label %105

78:                                               ; preds = %18
  %79 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %80 = load i32, i32* @bfa_lps_sm_init, align 4
  %81 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %79, i32 %80)
  %82 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %88 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %93 = load i32, i32* @BFA_PL_EID_LOGIN, align 4
  %94 = call i32 @bfa_plog_str(i32 %91, i32 %92, i32 %93, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %104

95:                                               ; preds = %78
  %96 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %97 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %102 = load i32, i32* @BFA_PL_EID_LOGIN, align 4
  %103 = call i32 @bfa_plog_str(i32 %100, i32 %101, i32 %102, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %95, %86
  br label %105

105:                                              ; preds = %104, %77
  %106 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %107 = call i32 @bfa_lps_login_comp(%struct.bfa_lps_s* %106)
  br label %133

108:                                              ; preds = %2, %2
  %109 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %110 = load i32, i32* @bfa_lps_sm_init, align 4
  %111 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %109, i32 %110)
  br label %133

112:                                              ; preds = %2
  %113 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %114 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %117 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bfa_trc(%struct.TYPE_3__* %115, i32 %118)
  %120 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %121 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %120, i32 0, i32 3
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %124 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @bfa_trc(%struct.TYPE_3__* %122, i32 %125)
  br label %133

127:                                              ; preds = %2
  %128 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %129 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %128, i32 0, i32 3
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %112, %108, %105
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_lps_s*, i32) #1

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_lps_s*, i32) #1

declare dso_local i32 @bfa_lps_login_comp(%struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
