; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i64, i64, i32, i32, %struct.se_cmd, i64, i32, i32, i64, %struct.iscsi_conn* }
%struct.se_cmd = type { i32, i64, i32 }
%struct.iscsi_conn = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_tmr_req = type { i64 }

@ICF_GOT_DATACK_SNACK = common dso_local global i32 0, align 4
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@CMD_T_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WRITE ITT: 0x%08x: t_state: %d never sent to transport\0A\00", align 1
@ISTATE_SEND_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_tmr_req*)* @iscsit_task_reassign_complete_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_task_reassign_complete_write(%struct.iscsi_cmd* %0, %struct.iscsi_tmr_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_tmr_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.se_cmd*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_tmr_req* %1, %struct.iscsi_tmr_req** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 10
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %9, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 5
  store %struct.se_cmd* %15, %struct.se_cmd** %10, align 8
  %16 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %27, i32 0, i32 9
  store i64 0, i64* %28, align 8
  br label %41

29:                                               ; preds = %2
  %30 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 9
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %29, %20
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %41
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CMD_T_SENT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %48
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63)
  %65 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %66 = call i32 @target_execute_cmd(%struct.se_cmd* %65)
  store i32 0, i32* %3, align 4
  br label %155

67:                                               ; preds = %48
  %68 = load i32, i32* @ISTATE_SEND_STATUS, align 4
  %69 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %71, %struct.iscsi_conn* %72, i32 %75)
  store i32 0, i32* %3, align 4
  br label %155

77:                                               ; preds = %41
  %78 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %146

82:                                               ; preds = %77
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %89 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  store i64 %87, i64* %8, align 8
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %91 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %98, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %82
  store i32 1, i32* %6, align 4
  %105 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = sub nsw i64 %108, %109
  store i64 %110, i64* %7, align 8
  br label %121

111:                                              ; preds = %82
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = sub nsw i64 %118, %119
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %111, %104
  %122 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %123 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %122, i32 0, i32 3
  %124 = call i32 @spin_lock_bh(i32* %123)
  %125 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i64 @iscsit_add_r2t_to_list(%struct.iscsi_cmd* %125, i64 %126, i64 %127, i32 0, i32 0)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %132 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %131, i32 0, i32 3
  %133 = call i32 @spin_unlock_bh(i32* %132)
  store i32 -1, i32* %3, align 4
  br label %155

134:                                              ; preds = %121
  %135 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %136 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %140 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %139, i32 0, i32 3
  %141 = call i32 @spin_unlock_bh(i32* %140)
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %155

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %77
  %147 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %148 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)** %150, align 8
  %152 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %153 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %154 = call i32 %151(%struct.iscsi_conn* %152, %struct.iscsi_cmd* %153, i32 1)
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %146, %144, %130, %67, %56
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @target_execute_cmd(%struct.se_cmd*) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @iscsit_add_r2t_to_list(%struct.iscsi_cmd*, i64, i64, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
