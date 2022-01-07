; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_response_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_response_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32 }
%struct.iscsi_cmd = type { i32, i32, i32, i32 }

@ISTATE_SENT_STATUS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"Unknown Opcode: 0x%02x ITT: 0x%08x, i_state: %d on CID: %hu\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_response_queue(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %45, %21, %3
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %101 [
    i32 135, label %11
    i32 131, label %58
    i32 130, label %58
    i32 134, label %62
    i32 136, label %66
    i32 133, label %70
    i32 132, label %74
    i32 129, label %78
    i32 128, label %97
  ]

11:                                               ; preds = %9
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %14 = call i32 @iscsit_send_datain(%struct.iscsi_cmd* %12, %struct.iscsi_conn* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %160

18:                                               ; preds = %11
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %9

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 3
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load i8*, i8** @ISTATE_SENT_STATUS, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 3
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %36, i32 0, i32 0
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %161

41:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %161

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 3
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 0
  store i32 131, i32* %50, align 4
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 3
  %53 = call i32 @spin_unlock_bh(i32* %52)
  store i32 131, i32* %7, align 4
  br label %9

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %113

58:                                               ; preds = %9, %9
  %59 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %61 = call i32 @iscsit_send_response(%struct.iscsi_cmd* %59, %struct.iscsi_conn* %60)
  store i32 %61, i32* %8, align 4
  br label %113

62:                                               ; preds = %9
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %65 = call i32 @iscsit_send_logout(%struct.iscsi_cmd* %63, %struct.iscsi_conn* %64)
  store i32 %65, i32* %8, align 4
  br label %113

66:                                               ; preds = %9
  %67 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %68 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %69 = call i32 @iscsit_send_conn_drop_async_message(%struct.iscsi_cmd* %67, %struct.iscsi_conn* %68)
  store i32 %69, i32* %8, align 4
  br label %113

70:                                               ; preds = %9
  %71 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %73 = call i32 @iscsit_send_nopin(%struct.iscsi_cmd* %71, %struct.iscsi_conn* %72)
  store i32 %73, i32* %8, align 4
  br label %113

74:                                               ; preds = %9
  %75 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %76 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %77 = call i32 @iscsit_send_reject(%struct.iscsi_cmd* %75, %struct.iscsi_conn* %76)
  store i32 %77, i32* %8, align 4
  br label %113

78:                                               ; preds = %9
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %81 = call i32 @iscsit_send_task_mgt_rsp(%struct.iscsi_cmd* %79, %struct.iscsi_conn* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %113

85:                                               ; preds = %78
  %86 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %88 = call i32 @iscsit_tmr_post_handler(%struct.iscsi_cmd* %86, %struct.iscsi_conn* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %93 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @iscsit_fall_back_to_erl0(i32 %94)
  br label %96

96:                                               ; preds = %91, %85
  br label %113

97:                                               ; preds = %9
  %98 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %100 = call i32 @iscsit_send_text_rsp(%struct.iscsi_cmd* %98, %struct.iscsi_conn* %99)
  store i32 %100, i32* %8, align 4
  br label %113

101:                                              ; preds = %9
  %102 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %103 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %106 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %110 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107, i32 %108, i32 %111)
  br label %160

113:                                              ; preds = %97, %96, %84, %74, %70, %66, %62, %58, %57
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %160

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  switch i32 %118, label %139 [
    i32 134, label %119
    i32 131, label %128
    i32 136, label %128
    i32 133, label %128
    i32 130, label %128
    i32 128, label %128
    i32 129, label %128
    i32 132, label %128
  ]

119:                                              ; preds = %117
  %120 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %121 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %122 = call i32 @iscsit_logout_post_handler(%struct.iscsi_cmd* %120, %struct.iscsi_conn* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @ECONNRESET, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %161

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %127
  %129 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %130 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %129, i32 0, i32 3
  %131 = call i32 @spin_lock_bh(i32* %130)
  %132 = load i8*, i8** @ISTATE_SENT_STATUS, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %135 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %137 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %136, i32 0, i32 3
  %138 = call i32 @spin_unlock_bh(i32* %137)
  br label %153

139:                                              ; preds = %117
  %140 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %141 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %144 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %147 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %150 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %142, i32 %145, i32 %148, i32 %151)
  br label %160

153:                                              ; preds = %128
  %154 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %155 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %154, i32 0, i32 0
  %156 = call i64 @atomic_read(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %4, align 4
  br label %161

159:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %161

160:                                              ; preds = %139, %116, %101, %17
  store i32 -1, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %159, %158, %124, %41, %40
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @iscsit_send_datain(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @iscsit_send_response(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_send_logout(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_send_conn_drop_async_message(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_send_nopin(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_send_reject(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_send_task_mgt_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_tmr_post_handler(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_fall_back_to_erl0(i32) #1

declare dso_local i32 @iscsit_send_text_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @iscsit_logout_post_handler(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
