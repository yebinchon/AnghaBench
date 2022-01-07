; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_check_login_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_check_login_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_login = type { i32, i32, i32, i32, i32, i64 }
%struct.iscsi_login_req = type { i32, i32, i32, i32, i32, i32, i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Received unknown opcode 0x%02x.\0A\00", align 1
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_INIT_ERR = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_CONTINUE = common dso_local global i32 0, align 4
@ISCSI_FLAG_LOGIN_TRANSIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"Login request has both ISCSI_FLAG_LOGIN_CONTINUE and ISCSI_FLAG_LOGIN_TRANSIT set, protocol error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Initiator unexpectedly changed login stage from %d to %d, login failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"Illegal login_req->flags Combination, CSG: %d, NSG: %d, ISCSI_FLAG_LOGIN_TRANSIT: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"Login request changed Version Max/Nin unexpectedly to 0x%02x/0x%02x, protocol error\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Login request changed ISID unexpectedly, protocol error.\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"Login request changed ITT unexpectedly to 0x%08x, protocol error.\0A\00", align 1
@MAX_KEY_VALUE_PAIRS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [85 x i8] c"Login request payload exceeds default MaxRecvDataSegmentLength: %u, protocol error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_target_check_login_request(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_login*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_login_req*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %5, align 8
  %10 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %13, %struct.iscsi_login_req** %9, align 8
  %14 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %15 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntoh24(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %19 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %24 [
    i32 128, label %23
  ]

23:                                               ; preds = %2
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %26 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %32 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %33 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %34 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %31, i32 %32, i32 %33)
  store i32 -1, i32* %3, align 4
  br label %177

35:                                               ; preds = %23
  %36 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %37 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ISCSI_FLAG_LOGIN_CONTINUE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %44 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %52 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %53 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %54 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %51, i32 %52, i32 %53)
  store i32 -1, i32* %3, align 4
  br label %177

55:                                               ; preds = %42, %35
  %56 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %57 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ISCSI_LOGIN_CURRENT_STAGE(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %61 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ISCSI_LOGIN_NEXT_STAGE(i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %66 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %55
  %70 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %71 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %76 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %77 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %78 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %75, i32 %76, i32 %77)
  store i32 -1, i32* %3, align 4
  br label %177

79:                                               ; preds = %55
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %96, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %87 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92, %82, %79
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %100 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ISCSI_FLAG_LOGIN_TRANSIT, align 4
  %103 = and i32 %101, %102
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98, i32 %103)
  %105 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %106 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %107 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %108 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %105, i32 %106, i32 %107)
  store i32 -1, i32* %3, align 4
  br label %177

109:                                              ; preds = %92, %85
  %110 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %111 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %114 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %119 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %122 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %117, %109
  %126 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %127 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %130 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %134 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %135 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %136 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %133, i32 %134, i32 %135)
  store i32 -1, i32* %3, align 4
  br label %177

137:                                              ; preds = %117
  %138 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %139 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %142 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @memcmp(i32 %140, i32 %143, i32 6)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %148 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %149 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %150 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %151 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %148, i32 %149, i32 %150)
  store i32 -1, i32* %3, align 4
  br label %177

152:                                              ; preds = %137
  %153 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %154 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  %157 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %155, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %152
  %161 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %9, align 8
  %162 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %166 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %167 = load i32, i32* @ISCSI_LOGIN_STATUS_INIT_ERR, align 4
  %168 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %165, i32 %166, i32 %167)
  store i32 -1, i32* %3, align 4
  br label %177

169:                                              ; preds = %152
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @MAX_KEY_VALUE_PAIRS, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @MAX_KEY_VALUE_PAIRS, align 4
  %175 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  store i32 -1, i32* %3, align 4
  br label %177

176:                                              ; preds = %169
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %173, %160, %146, %125, %96, %69, %49, %24
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @ISCSI_LOGIN_CURRENT_STAGE(i32) #1

declare dso_local i32 @ISCSI_LOGIN_NEXT_STAGE(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
