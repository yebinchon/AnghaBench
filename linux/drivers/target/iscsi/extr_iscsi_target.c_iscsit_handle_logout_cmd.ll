; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_logout_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_logout_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_cmd = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.iscsi_logout = type { i32, i32, i32, i32, i32, i32 }
%struct.iscsi_tiqn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ISCSI_LOGOUT_REASON_CLOSE_SESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"Got Logout Request ITT: 0x%08x CmdSN: 0x%08x ExpStatSN: 0x%08x Reason: 0x%02x CID: %hu on CID: %hu\0A\00", align 1
@TARG_CONN_STATE_LOGGED_IN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [89 x i8] c"Received logout request on connection that is not in logged in state, ignoring request.\0A\00", align 1
@ISCSI_OP_LOGOUT = common dso_local global i32 0, align 4
@ISTATE_SEND_LOGOUTRSP = common dso_local global i32 0, align 4
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@ISCSI_LOGOUT_REASON_CLOSE_CONNECTION = common dso_local global i32 0, align 4
@ISCSI_LOGOUT_REASON_RECOVERY = common dso_local global i32 0, align 4
@CMDSN_LOWER_THAN_EXP = common dso_local global i32 0, align 4
@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_handle_logout_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_logout*, align 8
  %12 = alloca %struct.iscsi_tiqn*, align 8
  %13 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = call %struct.iscsi_tiqn* @iscsit_snmp_get_tiqn(%struct.iscsi_conn* %14)
  store %struct.iscsi_tiqn* %15, %struct.iscsi_tiqn** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.iscsi_logout*
  store %struct.iscsi_logout* %17, %struct.iscsi_logout** %11, align 8
  %18 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %19 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 127
  store i32 %21, i32* %10, align 4
  %22 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %12, align 8
  %23 = icmp ne %struct.iscsi_tiqn* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  %25 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %12, align 8
  %26 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ISCSI_LOGOUT_REASON_CLOSE_SESSION, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %12, align 8
  %34 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %44

38:                                               ; preds = %24
  %39 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %12, align 8
  %40 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %12, align 8
  %46 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %44, %3
  %50 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %51 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %54 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %57 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %61 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TARG_CONN_STATE_LOGGED_IN, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %49
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %75 = call i32 @iscsit_free_cmd(%struct.iscsi_cmd* %74, i32 0)
  store i32 0, i32* %4, align 4
  br label %201

76:                                               ; preds = %49
  %77 = load i32, i32* @ISCSI_OP_LOGOUT, align 4
  %78 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %79 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @ISTATE_SEND_LOGOUTRSP, align 4
  %81 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %84 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %94 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %97 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %99 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %98, i32 0, i32 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %95, i32* %101, align 4
  %102 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %103 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %102, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  %104 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %105 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @be32_to_cpu(i32 %106)
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %109 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %111 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @be32_to_cpu(i32 %112)
  %114 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %115 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  %116 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %117 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @be16_to_cpu(i32 %118)
  %120 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %121 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @DMA_NONE, align 4
  %126 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %127 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @ISCSI_LOGOUT_REASON_CLOSE_SESSION, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %144, label %131

131:                                              ; preds = %76
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @ISCSI_LOGOUT_REASON_CLOSE_CONNECTION, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %137 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @be16_to_cpu(i32 %138)
  %140 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %141 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135, %76
  store i32 1, i32* %9, align 4
  br label %145

145:                                              ; preds = %144, %135, %131
  %146 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %147 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %146, i32 0, i32 1
  %148 = call i32 @spin_lock_bh(i32* %147)
  %149 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %150 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %149, i32 0, i32 3
  %151 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %152 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %151, i32 0, i32 2
  %153 = call i32 @list_add_tail(i32* %150, i32* %152)
  %154 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %155 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %154, i32 0, i32 1
  %156 = call i32 @spin_unlock_bh(i32* %155)
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @ISCSI_LOGOUT_REASON_RECOVERY, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %145
  %161 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %162 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %163 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @be32_to_cpu(i32 %164)
  %166 = call i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn* %161, i8* %165)
  br label %167

167:                                              ; preds = %160, %145
  %168 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %169 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %174 = call i32 @iscsit_execute_cmd(%struct.iscsi_cmd* %173, i32 0)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %4, align 4
  br label %201

179:                                              ; preds = %172
  br label %199

180:                                              ; preds = %167
  %181 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %182 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %185 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %181, %struct.iscsi_cmd* %182, i8* %183, i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @CMDSN_LOWER_THAN_EXP, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  store i32 0, i32* %9, align 4
  br label %198

192:                                              ; preds = %180
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 -1, i32* %4, align 4
  br label %201

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %191
  br label %199

199:                                              ; preds = %198, %179
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %196, %177, %72
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local %struct.iscsi_tiqn* @iscsit_snmp_get_tiqn(%struct.iscsi_conn*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn*, i8*) #1

declare dso_local i32 @iscsit_execute_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
