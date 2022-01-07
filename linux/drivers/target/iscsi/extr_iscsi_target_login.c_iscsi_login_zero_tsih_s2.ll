; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_zero_tsih_s2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_zero_tsih_s2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.iscsi_session* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.iscsi_session = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_node_attrib = type { i32 }
%struct.iscsi_param = type { i32 }

@ISCSI_STATUS_CLS_TARGET_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_NO_RESOURCES = common dso_local global i32 0, align 4
@ISCSI_INFINIBAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"TargetPortalGroupTag=%hu\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ErrorRecoveryLevel=%d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"RDMAExtensions=Yes\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"MaxRecvDataSegmentLength\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"Aligning ISER MaxRecvDataSegmentLength: %lu down to PAGE_SIZE\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"MaxRecvDataSegmentLength=%lu\0A\00", align 1
@TARGET_PROT_DOUT_STRIP = common dso_local global i32 0, align 4
@TARGET_PROT_DOUT_PASS = common dso_local global i32 0, align 4
@TARGET_PROT_DOUT_INSERT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ImmediateData=No\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"InitialR2T=Yes\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"Forcing ImmediateData=No + InitialR2T=Yes for T10-PI enabled ISER session\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @iscsi_login_zero_tsih_s2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_login_zero_tsih_s2(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_node_attrib*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_param*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 3
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  store %struct.iscsi_session* %13, %struct.iscsi_session** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 1
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %1
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 0
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @iscsi_copy_param_list(i32* %42, i32 %47, i32 1)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %52 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %53 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_RESOURCES, align 4
  %54 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %51, i32 %52, i32 %53)
  store i32 -1, i32* %2, align 4
  br label %186

55:                                               ; preds = %40
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ISCSI_INFINIBAND, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %66 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @iscsi_set_keys_to_negotiate(i32 %67, i32 %68)
  %70 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %71 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @iscsi_set_keys_irrelevant_for_discovery(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %186

81:                                               ; preds = %64
  %82 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %83 = call %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session* %82)
  store %struct.iscsi_node_attrib* %83, %struct.iscsi_node_attrib** %4, align 8
  %84 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %85 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %86 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 (%struct.iscsi_conn*, i8*, ...) @iscsi_change_param_sprintf(%struct.iscsi_conn* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 -1, i32* %2, align 4
  br label %186

93:                                               ; preds = %81
  %94 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %95 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 (%struct.iscsi_conn*, i8*, ...) @iscsi_change_param_sprintf(%struct.iscsi_conn* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 -1, i32* %2, align 4
  br label %186

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %185

104:                                              ; preds = %101
  %105 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %106 = call i64 (%struct.iscsi_conn*, i8*, ...) @iscsi_change_param_sprintf(%struct.iscsi_conn* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 -1, i32* %2, align 4
  br label %186

109:                                              ; preds = %104
  %110 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %111 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.iscsi_param* @iscsi_find_param_from_key(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store %struct.iscsi_param* %113, %struct.iscsi_param** %7, align 8
  %114 = load %struct.iscsi_param*, %struct.iscsi_param** %7, align 8
  %115 = icmp ne %struct.iscsi_param* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %118 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %119 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_RESOURCES, align 4
  %120 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %117, i32 %118, i32 %119)
  store i32 -1, i32* %2, align 4
  br label %186

121:                                              ; preds = %109
  %122 = load %struct.iscsi_param*, %struct.iscsi_param** %7, align 8
  %123 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @kstrtoul(i32 %124, i32 0, i64* %8)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %130 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %131 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_RESOURCES, align 4
  %132 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %129, i32 %130, i32 %131)
  store i32 -1, i32* %2, align 4
  br label %186

133:                                              ; preds = %121
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = urem i64 %134, %135
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  br label %159

140:                                              ; preds = %133
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @PAGE_SIZE, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %145, i64* %8, align 8
  br label %150

146:                                              ; preds = %140
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %8, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %146, %144
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  %153 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %154 = load i64, i64* %8, align 8
  %155 = call i64 (%struct.iscsi_conn*, i8*, ...) @iscsi_change_param_sprintf(%struct.iscsi_conn* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 -1, i32* %2, align 4
  br label %186

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %139
  %160 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %161 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @TARGET_PROT_DOUT_STRIP, align 4
  %166 = load i32, i32* @TARGET_PROT_DOUT_PASS, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @TARGET_PROT_DOUT_INSERT, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %164, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %159
  %173 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %174 = call i64 (%struct.iscsi_conn*, i8*, ...) @iscsi_change_param_sprintf(%struct.iscsi_conn* %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 -1, i32* %2, align 4
  br label %186

177:                                              ; preds = %172
  %178 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %179 = call i64 (%struct.iscsi_conn*, i8*, ...) @iscsi_change_param_sprintf(%struct.iscsi_conn* %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i32 -1, i32* %2, align 4
  br label %186

182:                                              ; preds = %177
  %183 = call i32 @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %159
  br label %185

185:                                              ; preds = %184, %101
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %181, %176, %157, %128, %116, %108, %100, %92, %76, %50
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i64 @iscsi_copy_param_list(i32*, i32, i32) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @iscsi_set_keys_to_negotiate(i32, i32) #1

declare dso_local i32 @iscsi_set_keys_irrelevant_for_discovery(i32) #1

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i64 @iscsi_change_param_sprintf(%struct.iscsi_conn*, i8*, ...) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i8*, i32) #1

declare dso_local i32 @kstrtoul(i32, i32, i64*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
