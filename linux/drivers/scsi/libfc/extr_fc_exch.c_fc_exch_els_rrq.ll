; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fc_exch = type { i64, i64, i64, i32, i32, i32 }
%struct.fc_els_rrq = type { i32, i32, i32 }

@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_EXPL_OXID_RXID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RRQ request from %x: xid %x rxid %x oxid %x\0A\00", align 1
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@ELS_EXPL_SID = common dso_local global i32 0, align 4
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@ELS_RJT_LOGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*)* @fc_exch_els_rrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_els_rrq(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_exch*, align 8
  %5 = alloca %struct.fc_els_rrq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  store %struct.fc_exch* null, %struct.fc_exch** %4, align 8
  %9 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %10 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %9)
  store %struct.fc_lport* %10, %struct.fc_lport** %3, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %12 = call %struct.fc_els_rrq* @fc_frame_payload_get(%struct.fc_frame* %11, i32 12)
  store %struct.fc_els_rrq* %12, %struct.fc_els_rrq** %5, align 8
  %13 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %15 = icmp ne %struct.fc_els_rrq* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %133

17:                                               ; preds = %1
  %18 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %19 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ntoh24(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @fc_host_port_id(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %30 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  br label %38

33:                                               ; preds = %17
  %34 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %35 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i64 [ %32, %28 ], [ %37, %33 ]
  store i64 %39, i64* %7, align 8
  %40 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport* %40, i64 %41)
  store %struct.fc_exch* %42, %struct.fc_exch** %4, align 8
  %43 = load i32, i32* @ELS_EXPL_OXID_RXID, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %45 = icmp ne %struct.fc_exch* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %133

47:                                               ; preds = %38
  %48 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %49 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %48, i32 0, i32 4
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %55 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohs(i32 %56)
  %58 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %59 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ntohs(i32 %60)
  %62 = call i32 @FC_EXCH_DBG(%struct.fc_exch* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53, i64 %57, i64 %61)
  %63 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %64 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %67 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ntohs(i32 %68)
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %47
  br label %129

72:                                               ; preds = %47
  %73 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %74 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %77 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ntohs(i32 %78)
  %80 = icmp ne i64 %75, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %83 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %129

88:                                               ; preds = %81, %72
  %89 = load i32, i32* @ELS_EXPL_SID, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %91 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %129

96:                                               ; preds = %88
  %97 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %98 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %107 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %111 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %110, i32 0, i32 5
  %112 = call i32 @atomic_dec(i32* %111)
  br label %113

113:                                              ; preds = %103, %96
  %114 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %115 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %122 = call i32 @fc_exch_timer_cancel(%struct.fc_exch* %121)
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %125 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %124, i32 0, i32 4
  %126 = call i32 @spin_unlock_bh(i32* %125)
  %127 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %128 = call i32 @fc_seq_ls_acc(%struct.fc_frame* %127)
  br label %138

129:                                              ; preds = %95, %87, %71
  %130 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %131 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %130, i32 0, i32 4
  %132 = call i32 @spin_unlock_bh(i32* %131)
  br label %133

133:                                              ; preds = %129, %46, %16
  %134 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %135 = load i32, i32* @ELS_RJT_LOGIC, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @fc_seq_ls_rjt(%struct.fc_frame* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %123
  %139 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %140 = icmp ne %struct.fc_exch* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %143 = call i32 @fc_exch_release(%struct.fc_exch* %142)
  br label %144

144:                                              ; preds = %141, %138
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local %struct.fc_els_rrq* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @fc_host_port_id(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @fc_exch_timer_cancel(%struct.fc_exch*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_seq_ls_acc(%struct.fc_frame*) #1

declare dso_local i32 @fc_seq_ls_rjt(%struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
