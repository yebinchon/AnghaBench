; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_create_default_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_create_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param_list = type { i32, i32 }
%struct.iscsi_param = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Unable to allocate memory for struct iscsi_param_list.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AUTHMETHOD = common dso_local global i32 0, align 4
@INITIAL_AUTHMETHOD = common dso_local global i32 0, align 4
@PHASE_SECURITY = common dso_local global i32 0, align 4
@SCOPE_CONNECTION_ONLY = common dso_local global i32 0, align 4
@SENDER_BOTH = common dso_local global i32 0, align 4
@TYPERANGE_AUTH = common dso_local global i32 0, align 4
@USE_INITIAL_ONLY = common dso_local global i32 0, align 4
@HEADERDIGEST = common dso_local global i32 0, align 4
@INITIAL_HEADERDIGEST = common dso_local global i32 0, align 4
@PHASE_OPERATIONAL = common dso_local global i32 0, align 4
@TYPERANGE_DIGEST = common dso_local global i32 0, align 4
@DATADIGEST = common dso_local global i32 0, align 4
@INITIAL_DATADIGEST = common dso_local global i32 0, align 4
@MAXCONNECTIONS = common dso_local global i32 0, align 4
@INITIAL_MAXCONNECTIONS = common dso_local global i32 0, align 4
@SCOPE_SESSION_WIDE = common dso_local global i32 0, align 4
@TYPERANGE_1_TO_65535 = common dso_local global i32 0, align 4
@USE_LEADING_ONLY = common dso_local global i32 0, align 4
@SENDTARGETS = common dso_local global i32 0, align 4
@INITIAL_SENDTARGETS = common dso_local global i32 0, align 4
@PHASE_FFP0 = common dso_local global i32 0, align 4
@SENDER_INITIATOR = common dso_local global i32 0, align 4
@TYPERANGE_UTF8 = common dso_local global i32 0, align 4
@TARGETNAME = common dso_local global i32 0, align 4
@INITIAL_TARGETNAME = common dso_local global i32 0, align 4
@PHASE_DECLARATIVE = common dso_local global i32 0, align 4
@TYPERANGE_ISCSINAME = common dso_local global i32 0, align 4
@USE_ALL = common dso_local global i32 0, align 4
@INITIATORNAME = common dso_local global i32 0, align 4
@INITIAL_INITIATORNAME = common dso_local global i32 0, align 4
@TARGETALIAS = common dso_local global i32 0, align 4
@INITIAL_TARGETALIAS = common dso_local global i32 0, align 4
@SENDER_TARGET = common dso_local global i32 0, align 4
@INITIATORALIAS = common dso_local global i32 0, align 4
@INITIAL_INITIATORALIAS = common dso_local global i32 0, align 4
@TARGETADDRESS = common dso_local global i32 0, align 4
@INITIAL_TARGETADDRESS = common dso_local global i32 0, align 4
@TYPERANGE_TARGETADDRESS = common dso_local global i32 0, align 4
@TARGETPORTALGROUPTAG = common dso_local global i32 0, align 4
@INITIAL_TARGETPORTALGROUPTAG = common dso_local global i32 0, align 4
@TYPERANGE_0_TO_65535 = common dso_local global i32 0, align 4
@INITIALR2T = common dso_local global i32 0, align 4
@INITIAL_INITIALR2T = common dso_local global i32 0, align 4
@TYPERANGE_BOOL_OR = common dso_local global i32 0, align 4
@IMMEDIATEDATA = common dso_local global i32 0, align 4
@INITIAL_IMMEDIATEDATA = common dso_local global i32 0, align 4
@TYPERANGE_BOOL_AND = common dso_local global i32 0, align 4
@MAXXMITDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@INITIAL_MAXXMITDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@TYPERANGE_512_TO_16777215 = common dso_local global i32 0, align 4
@MAXRECVDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@INITIAL_MAXRECVDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@MAXBURSTLENGTH = common dso_local global i32 0, align 4
@INITIAL_MAXBURSTLENGTH = common dso_local global i32 0, align 4
@FIRSTBURSTLENGTH = common dso_local global i32 0, align 4
@INITIAL_FIRSTBURSTLENGTH = common dso_local global i32 0, align 4
@DEFAULTTIME2WAIT = common dso_local global i32 0, align 4
@INITIAL_DEFAULTTIME2WAIT = common dso_local global i32 0, align 4
@TYPERANGE_0_TO_3600 = common dso_local global i32 0, align 4
@DEFAULTTIME2RETAIN = common dso_local global i32 0, align 4
@INITIAL_DEFAULTTIME2RETAIN = common dso_local global i32 0, align 4
@MAXOUTSTANDINGR2T = common dso_local global i32 0, align 4
@INITIAL_MAXOUTSTANDINGR2T = common dso_local global i32 0, align 4
@DATAPDUINORDER = common dso_local global i32 0, align 4
@INITIAL_DATAPDUINORDER = common dso_local global i32 0, align 4
@DATASEQUENCEINORDER = common dso_local global i32 0, align 4
@INITIAL_DATASEQUENCEINORDER = common dso_local global i32 0, align 4
@ERRORRECOVERYLEVEL = common dso_local global i32 0, align 4
@INITIAL_ERRORRECOVERYLEVEL = common dso_local global i32 0, align 4
@TYPERANGE_0_TO_2 = common dso_local global i32 0, align 4
@SESSIONTYPE = common dso_local global i32 0, align 4
@INITIAL_SESSIONTYPE = common dso_local global i32 0, align 4
@TYPERANGE_SESSIONTYPE = common dso_local global i32 0, align 4
@IFMARKER = common dso_local global i32 0, align 4
@INITIAL_IFMARKER = common dso_local global i32 0, align 4
@OFMARKER = common dso_local global i32 0, align 4
@INITIAL_OFMARKER = common dso_local global i32 0, align 4
@IFMARKINT = common dso_local global i32 0, align 4
@INITIAL_IFMARKINT = common dso_local global i32 0, align 4
@OFMARKINT = common dso_local global i32 0, align 4
@INITIAL_OFMARKINT = common dso_local global i32 0, align 4
@RDMAEXTENSIONS = common dso_local global i32 0, align 4
@INITIAL_RDMAEXTENSIONS = common dso_local global i32 0, align 4
@INITIATORRECVDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@INITIAL_INITIATORRECVDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@TARGETRECVDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@INITIAL_TARGETRECVDATASEGMENTLENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_create_default_params(%struct.iscsi_param_list** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_param_list**, align 8
  %4 = alloca %struct.iscsi_param*, align 8
  %5 = alloca %struct.iscsi_param_list*, align 8
  store %struct.iscsi_param_list** %0, %struct.iscsi_param_list*** %3, align 8
  store %struct.iscsi_param* null, %struct.iscsi_param** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.iscsi_param_list* @kzalloc(i32 8, i32 %6)
  store %struct.iscsi_param_list* %7, %struct.iscsi_param_list** %5, align 8
  %8 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %9 = icmp ne %struct.iscsi_param_list* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %428

14:                                               ; preds = %1
  %15 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_param_list, %struct.iscsi_param_list* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_param_list, %struct.iscsi_param_list* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %22 = load i32, i32* @AUTHMETHOD, align 4
  %23 = load i32, i32* @INITIAL_AUTHMETHOD, align 4
  %24 = load i32, i32* @PHASE_SECURITY, align 4
  %25 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %26 = load i32, i32* @SENDER_BOTH, align 4
  %27 = load i32, i32* @TYPERANGE_AUTH, align 4
  %28 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %29 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.iscsi_param* %29, %struct.iscsi_param** %4, align 8
  %30 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %31 = icmp ne %struct.iscsi_param* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %14
  br label %425

33:                                               ; preds = %14
  %34 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %35 = load i32, i32* @HEADERDIGEST, align 4
  %36 = load i32, i32* @INITIAL_HEADERDIGEST, align 4
  %37 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %38 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %39 = load i32, i32* @SENDER_BOTH, align 4
  %40 = load i32, i32* @TYPERANGE_DIGEST, align 4
  %41 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %42 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store %struct.iscsi_param* %42, %struct.iscsi_param** %4, align 8
  %43 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %44 = icmp ne %struct.iscsi_param* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %425

46:                                               ; preds = %33
  %47 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %48 = load i32, i32* @DATADIGEST, align 4
  %49 = load i32, i32* @INITIAL_DATADIGEST, align 4
  %50 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %51 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %52 = load i32, i32* @SENDER_BOTH, align 4
  %53 = load i32, i32* @TYPERANGE_DIGEST, align 4
  %54 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %55 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store %struct.iscsi_param* %55, %struct.iscsi_param** %4, align 8
  %56 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %57 = icmp ne %struct.iscsi_param* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %425

59:                                               ; preds = %46
  %60 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %61 = load i32, i32* @MAXCONNECTIONS, align 4
  %62 = load i32, i32* @INITIAL_MAXCONNECTIONS, align 4
  %63 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %64 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %65 = load i32, i32* @SENDER_BOTH, align 4
  %66 = load i32, i32* @TYPERANGE_1_TO_65535, align 4
  %67 = load i32, i32* @USE_LEADING_ONLY, align 4
  %68 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store %struct.iscsi_param* %68, %struct.iscsi_param** %4, align 8
  %69 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %70 = icmp ne %struct.iscsi_param* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %59
  br label %425

72:                                               ; preds = %59
  %73 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %74 = load i32, i32* @SENDTARGETS, align 4
  %75 = load i32, i32* @INITIAL_SENDTARGETS, align 4
  %76 = load i32, i32* @PHASE_FFP0, align 4
  %77 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %78 = load i32, i32* @SENDER_INITIATOR, align 4
  %79 = load i32, i32* @TYPERANGE_UTF8, align 4
  %80 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 0)
  store %struct.iscsi_param* %80, %struct.iscsi_param** %4, align 8
  %81 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %82 = icmp ne %struct.iscsi_param* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %72
  br label %425

84:                                               ; preds = %72
  %85 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %86 = load i32, i32* @TARGETNAME, align 4
  %87 = load i32, i32* @INITIAL_TARGETNAME, align 4
  %88 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %89 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %90 = load i32, i32* @SENDER_BOTH, align 4
  %91 = load i32, i32* @TYPERANGE_ISCSINAME, align 4
  %92 = load i32, i32* @USE_ALL, align 4
  %93 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  store %struct.iscsi_param* %93, %struct.iscsi_param** %4, align 8
  %94 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %95 = icmp ne %struct.iscsi_param* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %84
  br label %425

97:                                               ; preds = %84
  %98 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %99 = load i32, i32* @INITIATORNAME, align 4
  %100 = load i32, i32* @INITIAL_INITIATORNAME, align 4
  %101 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %102 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %103 = load i32, i32* @SENDER_INITIATOR, align 4
  %104 = load i32, i32* @TYPERANGE_ISCSINAME, align 4
  %105 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %106 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store %struct.iscsi_param* %106, %struct.iscsi_param** %4, align 8
  %107 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %108 = icmp ne %struct.iscsi_param* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  br label %425

110:                                              ; preds = %97
  %111 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %112 = load i32, i32* @TARGETALIAS, align 4
  %113 = load i32, i32* @INITIAL_TARGETALIAS, align 4
  %114 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %115 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %116 = load i32, i32* @SENDER_TARGET, align 4
  %117 = load i32, i32* @TYPERANGE_UTF8, align 4
  %118 = load i32, i32* @USE_ALL, align 4
  %119 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  store %struct.iscsi_param* %119, %struct.iscsi_param** %4, align 8
  %120 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %121 = icmp ne %struct.iscsi_param* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %110
  br label %425

123:                                              ; preds = %110
  %124 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %125 = load i32, i32* @INITIATORALIAS, align 4
  %126 = load i32, i32* @INITIAL_INITIATORALIAS, align 4
  %127 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %128 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %129 = load i32, i32* @SENDER_INITIATOR, align 4
  %130 = load i32, i32* @TYPERANGE_UTF8, align 4
  %131 = load i32, i32* @USE_ALL, align 4
  %132 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store %struct.iscsi_param* %132, %struct.iscsi_param** %4, align 8
  %133 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %134 = icmp ne %struct.iscsi_param* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %123
  br label %425

136:                                              ; preds = %123
  %137 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %138 = load i32, i32* @TARGETADDRESS, align 4
  %139 = load i32, i32* @INITIAL_TARGETADDRESS, align 4
  %140 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %141 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %142 = load i32, i32* @SENDER_TARGET, align 4
  %143 = load i32, i32* @TYPERANGE_TARGETADDRESS, align 4
  %144 = load i32, i32* @USE_ALL, align 4
  %145 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  store %struct.iscsi_param* %145, %struct.iscsi_param** %4, align 8
  %146 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %147 = icmp ne %struct.iscsi_param* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %136
  br label %425

149:                                              ; preds = %136
  %150 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %151 = load i32, i32* @TARGETPORTALGROUPTAG, align 4
  %152 = load i32, i32* @INITIAL_TARGETPORTALGROUPTAG, align 4
  %153 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %154 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %155 = load i32, i32* @SENDER_TARGET, align 4
  %156 = load i32, i32* @TYPERANGE_0_TO_65535, align 4
  %157 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %158 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  store %struct.iscsi_param* %158, %struct.iscsi_param** %4, align 8
  %159 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %160 = icmp ne %struct.iscsi_param* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %149
  br label %425

162:                                              ; preds = %149
  %163 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %164 = load i32, i32* @INITIALR2T, align 4
  %165 = load i32, i32* @INITIAL_INITIALR2T, align 4
  %166 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %167 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %168 = load i32, i32* @SENDER_BOTH, align 4
  %169 = load i32, i32* @TYPERANGE_BOOL_OR, align 4
  %170 = load i32, i32* @USE_LEADING_ONLY, align 4
  %171 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  store %struct.iscsi_param* %171, %struct.iscsi_param** %4, align 8
  %172 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %173 = icmp ne %struct.iscsi_param* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %162
  br label %425

175:                                              ; preds = %162
  %176 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %177 = load i32, i32* @IMMEDIATEDATA, align 4
  %178 = load i32, i32* @INITIAL_IMMEDIATEDATA, align 4
  %179 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %180 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %181 = load i32, i32* @SENDER_BOTH, align 4
  %182 = load i32, i32* @TYPERANGE_BOOL_AND, align 4
  %183 = load i32, i32* @USE_LEADING_ONLY, align 4
  %184 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  store %struct.iscsi_param* %184, %struct.iscsi_param** %4, align 8
  %185 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %186 = icmp ne %struct.iscsi_param* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %175
  br label %425

188:                                              ; preds = %175
  %189 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %190 = load i32, i32* @MAXXMITDATASEGMENTLENGTH, align 4
  %191 = load i32, i32* @INITIAL_MAXXMITDATASEGMENTLENGTH, align 4
  %192 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %193 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %194 = load i32, i32* @SENDER_BOTH, align 4
  %195 = load i32, i32* @TYPERANGE_512_TO_16777215, align 4
  %196 = load i32, i32* @USE_ALL, align 4
  %197 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  store %struct.iscsi_param* %197, %struct.iscsi_param** %4, align 8
  %198 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %199 = icmp ne %struct.iscsi_param* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %188
  br label %425

201:                                              ; preds = %188
  %202 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %203 = load i32, i32* @MAXRECVDATASEGMENTLENGTH, align 4
  %204 = load i32, i32* @INITIAL_MAXRECVDATASEGMENTLENGTH, align 4
  %205 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %206 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %207 = load i32, i32* @SENDER_BOTH, align 4
  %208 = load i32, i32* @TYPERANGE_512_TO_16777215, align 4
  %209 = load i32, i32* @USE_ALL, align 4
  %210 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209)
  store %struct.iscsi_param* %210, %struct.iscsi_param** %4, align 8
  %211 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %212 = icmp ne %struct.iscsi_param* %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %201
  br label %425

214:                                              ; preds = %201
  %215 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %216 = load i32, i32* @MAXBURSTLENGTH, align 4
  %217 = load i32, i32* @INITIAL_MAXBURSTLENGTH, align 4
  %218 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %219 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %220 = load i32, i32* @SENDER_BOTH, align 4
  %221 = load i32, i32* @TYPERANGE_512_TO_16777215, align 4
  %222 = load i32, i32* @USE_LEADING_ONLY, align 4
  %223 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  store %struct.iscsi_param* %223, %struct.iscsi_param** %4, align 8
  %224 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %225 = icmp ne %struct.iscsi_param* %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %214
  br label %425

227:                                              ; preds = %214
  %228 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %229 = load i32, i32* @FIRSTBURSTLENGTH, align 4
  %230 = load i32, i32* @INITIAL_FIRSTBURSTLENGTH, align 4
  %231 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %232 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %233 = load i32, i32* @SENDER_BOTH, align 4
  %234 = load i32, i32* @TYPERANGE_512_TO_16777215, align 4
  %235 = load i32, i32* @USE_LEADING_ONLY, align 4
  %236 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  store %struct.iscsi_param* %236, %struct.iscsi_param** %4, align 8
  %237 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %238 = icmp ne %struct.iscsi_param* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %227
  br label %425

240:                                              ; preds = %227
  %241 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %242 = load i32, i32* @DEFAULTTIME2WAIT, align 4
  %243 = load i32, i32* @INITIAL_DEFAULTTIME2WAIT, align 4
  %244 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %245 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %246 = load i32, i32* @SENDER_BOTH, align 4
  %247 = load i32, i32* @TYPERANGE_0_TO_3600, align 4
  %248 = load i32, i32* @USE_LEADING_ONLY, align 4
  %249 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  store %struct.iscsi_param* %249, %struct.iscsi_param** %4, align 8
  %250 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %251 = icmp ne %struct.iscsi_param* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %240
  br label %425

253:                                              ; preds = %240
  %254 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %255 = load i32, i32* @DEFAULTTIME2RETAIN, align 4
  %256 = load i32, i32* @INITIAL_DEFAULTTIME2RETAIN, align 4
  %257 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %258 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %259 = load i32, i32* @SENDER_BOTH, align 4
  %260 = load i32, i32* @TYPERANGE_0_TO_3600, align 4
  %261 = load i32, i32* @USE_LEADING_ONLY, align 4
  %262 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261)
  store %struct.iscsi_param* %262, %struct.iscsi_param** %4, align 8
  %263 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %264 = icmp ne %struct.iscsi_param* %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %253
  br label %425

266:                                              ; preds = %253
  %267 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %268 = load i32, i32* @MAXOUTSTANDINGR2T, align 4
  %269 = load i32, i32* @INITIAL_MAXOUTSTANDINGR2T, align 4
  %270 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %271 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %272 = load i32, i32* @SENDER_BOTH, align 4
  %273 = load i32, i32* @TYPERANGE_1_TO_65535, align 4
  %274 = load i32, i32* @USE_LEADING_ONLY, align 4
  %275 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274)
  store %struct.iscsi_param* %275, %struct.iscsi_param** %4, align 8
  %276 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %277 = icmp ne %struct.iscsi_param* %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %266
  br label %425

279:                                              ; preds = %266
  %280 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %281 = load i32, i32* @DATAPDUINORDER, align 4
  %282 = load i32, i32* @INITIAL_DATAPDUINORDER, align 4
  %283 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %284 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %285 = load i32, i32* @SENDER_BOTH, align 4
  %286 = load i32, i32* @TYPERANGE_BOOL_OR, align 4
  %287 = load i32, i32* @USE_LEADING_ONLY, align 4
  %288 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287)
  store %struct.iscsi_param* %288, %struct.iscsi_param** %4, align 8
  %289 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %290 = icmp ne %struct.iscsi_param* %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %279
  br label %425

292:                                              ; preds = %279
  %293 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %294 = load i32, i32* @DATASEQUENCEINORDER, align 4
  %295 = load i32, i32* @INITIAL_DATASEQUENCEINORDER, align 4
  %296 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %297 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %298 = load i32, i32* @SENDER_BOTH, align 4
  %299 = load i32, i32* @TYPERANGE_BOOL_OR, align 4
  %300 = load i32, i32* @USE_LEADING_ONLY, align 4
  %301 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300)
  store %struct.iscsi_param* %301, %struct.iscsi_param** %4, align 8
  %302 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %303 = icmp ne %struct.iscsi_param* %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %292
  br label %425

305:                                              ; preds = %292
  %306 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %307 = load i32, i32* @ERRORRECOVERYLEVEL, align 4
  %308 = load i32, i32* @INITIAL_ERRORRECOVERYLEVEL, align 4
  %309 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %310 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %311 = load i32, i32* @SENDER_BOTH, align 4
  %312 = load i32, i32* @TYPERANGE_0_TO_2, align 4
  %313 = load i32, i32* @USE_LEADING_ONLY, align 4
  %314 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313)
  store %struct.iscsi_param* %314, %struct.iscsi_param** %4, align 8
  %315 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %316 = icmp ne %struct.iscsi_param* %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %305
  br label %425

318:                                              ; preds = %305
  %319 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %320 = load i32, i32* @SESSIONTYPE, align 4
  %321 = load i32, i32* @INITIAL_SESSIONTYPE, align 4
  %322 = load i32, i32* @PHASE_DECLARATIVE, align 4
  %323 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %324 = load i32, i32* @SENDER_INITIATOR, align 4
  %325 = load i32, i32* @TYPERANGE_SESSIONTYPE, align 4
  %326 = load i32, i32* @USE_LEADING_ONLY, align 4
  %327 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326)
  store %struct.iscsi_param* %327, %struct.iscsi_param** %4, align 8
  %328 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %329 = icmp ne %struct.iscsi_param* %328, null
  br i1 %329, label %331, label %330

330:                                              ; preds = %318
  br label %425

331:                                              ; preds = %318
  %332 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %333 = load i32, i32* @IFMARKER, align 4
  %334 = load i32, i32* @INITIAL_IFMARKER, align 4
  %335 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %336 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %337 = load i32, i32* @SENDER_BOTH, align 4
  %338 = load i32, i32* @TYPERANGE_BOOL_AND, align 4
  %339 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %340 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339)
  store %struct.iscsi_param* %340, %struct.iscsi_param** %4, align 8
  %341 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %342 = icmp ne %struct.iscsi_param* %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %331
  br label %425

344:                                              ; preds = %331
  %345 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %346 = load i32, i32* @OFMARKER, align 4
  %347 = load i32, i32* @INITIAL_OFMARKER, align 4
  %348 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %349 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %350 = load i32, i32* @SENDER_BOTH, align 4
  %351 = load i32, i32* @TYPERANGE_BOOL_AND, align 4
  %352 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %353 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352)
  store %struct.iscsi_param* %353, %struct.iscsi_param** %4, align 8
  %354 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %355 = icmp ne %struct.iscsi_param* %354, null
  br i1 %355, label %357, label %356

356:                                              ; preds = %344
  br label %425

357:                                              ; preds = %344
  %358 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %359 = load i32, i32* @IFMARKINT, align 4
  %360 = load i32, i32* @INITIAL_IFMARKINT, align 4
  %361 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %362 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %363 = load i32, i32* @SENDER_BOTH, align 4
  %364 = load i32, i32* @TYPERANGE_UTF8, align 4
  %365 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %366 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365)
  store %struct.iscsi_param* %366, %struct.iscsi_param** %4, align 8
  %367 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %368 = icmp ne %struct.iscsi_param* %367, null
  br i1 %368, label %370, label %369

369:                                              ; preds = %357
  br label %425

370:                                              ; preds = %357
  %371 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %372 = load i32, i32* @OFMARKINT, align 4
  %373 = load i32, i32* @INITIAL_OFMARKINT, align 4
  %374 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %375 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %376 = load i32, i32* @SENDER_BOTH, align 4
  %377 = load i32, i32* @TYPERANGE_UTF8, align 4
  %378 = load i32, i32* @USE_INITIAL_ONLY, align 4
  %379 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %371, i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378)
  store %struct.iscsi_param* %379, %struct.iscsi_param** %4, align 8
  %380 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %381 = icmp ne %struct.iscsi_param* %380, null
  br i1 %381, label %383, label %382

382:                                              ; preds = %370
  br label %425

383:                                              ; preds = %370
  %384 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %385 = load i32, i32* @RDMAEXTENSIONS, align 4
  %386 = load i32, i32* @INITIAL_RDMAEXTENSIONS, align 4
  %387 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %388 = load i32, i32* @SCOPE_SESSION_WIDE, align 4
  %389 = load i32, i32* @SENDER_BOTH, align 4
  %390 = load i32, i32* @TYPERANGE_BOOL_AND, align 4
  %391 = load i32, i32* @USE_LEADING_ONLY, align 4
  %392 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %384, i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391)
  store %struct.iscsi_param* %392, %struct.iscsi_param** %4, align 8
  %393 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %394 = icmp ne %struct.iscsi_param* %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %383
  br label %425

396:                                              ; preds = %383
  %397 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %398 = load i32, i32* @INITIATORRECVDATASEGMENTLENGTH, align 4
  %399 = load i32, i32* @INITIAL_INITIATORRECVDATASEGMENTLENGTH, align 4
  %400 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %401 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %402 = load i32, i32* @SENDER_BOTH, align 4
  %403 = load i32, i32* @TYPERANGE_512_TO_16777215, align 4
  %404 = load i32, i32* @USE_ALL, align 4
  %405 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404)
  store %struct.iscsi_param* %405, %struct.iscsi_param** %4, align 8
  %406 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %407 = icmp ne %struct.iscsi_param* %406, null
  br i1 %407, label %409, label %408

408:                                              ; preds = %396
  br label %425

409:                                              ; preds = %396
  %410 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %411 = load i32, i32* @TARGETRECVDATASEGMENTLENGTH, align 4
  %412 = load i32, i32* @INITIAL_TARGETRECVDATASEGMENTLENGTH, align 4
  %413 = load i32, i32* @PHASE_OPERATIONAL, align 4
  %414 = load i32, i32* @SCOPE_CONNECTION_ONLY, align 4
  %415 = load i32, i32* @SENDER_BOTH, align 4
  %416 = load i32, i32* @TYPERANGE_512_TO_16777215, align 4
  %417 = load i32, i32* @USE_ALL, align 4
  %418 = call %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list* %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i32 %416, i32 %417)
  store %struct.iscsi_param* %418, %struct.iscsi_param** %4, align 8
  %419 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %420 = icmp ne %struct.iscsi_param* %419, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %409
  br label %425

422:                                              ; preds = %409
  %423 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %424 = load %struct.iscsi_param_list**, %struct.iscsi_param_list*** %3, align 8
  store %struct.iscsi_param_list* %423, %struct.iscsi_param_list** %424, align 8
  store i32 0, i32* %2, align 4
  br label %428

425:                                              ; preds = %421, %408, %395, %382, %369, %356, %343, %330, %317, %304, %291, %278, %265, %252, %239, %226, %213, %200, %187, %174, %161, %148, %135, %122, %109, %96, %83, %71, %58, %45, %32
  %426 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %5, align 8
  %427 = call i32 @iscsi_release_param_list(%struct.iscsi_param_list* %426)
  store i32 -1, i32* %2, align 4
  br label %428

428:                                              ; preds = %425, %422, %10
  %429 = load i32, i32* %2, align 4
  ret i32 %429
}

declare dso_local %struct.iscsi_param_list* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.iscsi_param* @iscsi_set_default_param(%struct.iscsi_param_list*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iscsi_release_param_list(%struct.iscsi_param_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
