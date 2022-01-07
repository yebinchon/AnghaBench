; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_collect_login_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_collect_login_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i64 }
%struct.iscsi_param = type { i8* }
%struct.iscsi_tiqn = type { %struct.iscsi_login_stats }
%struct.iscsi_login_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ISCSI_STATUS_CLS_SUCCESS = common dso_local global i64 0, align 8
@ISCSI_STATUS_CLS_REDIRECT = common dso_local global i64 0, align 8
@ISCSI_LOGIN_FAIL_REDIRECT = common dso_local global i32 0, align 4
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i64 0, align 8
@ISCSI_LOGIN_STATUS_AUTH_FAILED = common dso_local global i64 0, align 8
@ISCSI_LOGIN_FAIL_AUTHENTICATE = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_TGT_FORBIDDEN = common dso_local global i64 0, align 8
@ISCSI_LOGIN_FAIL_AUTHORIZE = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_INIT_ERR = common dso_local global i64 0, align 8
@ISCSI_LOGIN_FAIL_NEGOTIATE = common dso_local global i32 0, align 4
@ISCSI_LOGIN_FAIL_OTHER = common dso_local global i32 0, align 4
@INITIATORNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_collect_login_stats(%struct.iscsi_conn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iscsi_param*, align 8
  %8 = alloca %struct.iscsi_tiqn*, align 8
  %9 = alloca %struct.iscsi_login_stats*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.iscsi_param* null, %struct.iscsi_param** %7, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %11 = call %struct.iscsi_tiqn* @iscsit_snmp_get_tiqn(%struct.iscsi_conn* %10)
  store %struct.iscsi_tiqn* %11, %struct.iscsi_tiqn** %8, align 8
  %12 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %8, align 8
  %13 = icmp ne %struct.iscsi_tiqn* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %147

15:                                               ; preds = %3
  %16 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %8, align 8
  %17 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %16, i32 0, i32 0
  store %struct.iscsi_login_stats* %17, %struct.iscsi_login_stats** %9, align 8
  %18 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %19 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ISCSI_STATUS_CLS_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %26 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %101

29:                                               ; preds = %15
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @ISCSI_STATUS_CLS_REDIRECT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %35 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @ISCSI_LOGIN_FAIL_REDIRECT, align 4
  %39 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %40 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  br label %100

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @ISCSI_LOGIN_STATUS_AUTH_FAILED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %51 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @ISCSI_LOGIN_FAIL_AUTHENTICATE, align 4
  %55 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %56 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  br label %99

57:                                               ; preds = %45, %41
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @ISCSI_LOGIN_STATUS_TGT_FORBIDDEN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %67 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @ISCSI_LOGIN_FAIL_AUTHORIZE, align 4
  %71 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %72 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  br label %98

73:                                               ; preds = %61, %57
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @ISCSI_LOGIN_STATUS_INIT_ERR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %83 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @ISCSI_LOGIN_FAIL_NEGOTIATE, align 4
  %87 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %88 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  br label %97

89:                                               ; preds = %77, %73
  %90 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %91 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @ISCSI_LOGIN_FAIL_OTHER, align 4
  %95 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %96 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %89, %81
  br label %98

98:                                               ; preds = %97, %65
  br label %99

99:                                               ; preds = %98, %49
  br label %100

100:                                              ; preds = %99, %33
  br label %101

101:                                              ; preds = %100, %24
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @ISCSI_STATUS_CLS_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %101
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* @INITIATORNAME, align 4
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %111, i64 %114)
  store %struct.iscsi_param* %115, %struct.iscsi_param** %7, align 8
  br label %116

116:                                              ; preds = %110, %105
  %117 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %118 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.iscsi_param*, %struct.iscsi_param** %7, align 8
  %121 = icmp ne %struct.iscsi_param* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.iscsi_param*, %struct.iscsi_param** %7, align 8
  %124 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  br label %127

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i8* [ %125, %122 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %126 ]
  %129 = call i32 @strlcpy(i32 %119, i8* %128, i32 4)
  %130 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %131 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %134 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %136 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %139 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = call i32 (...) @get_jiffies_64()
  %141 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %142 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %127, %101
  %144 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %9, align 8
  %145 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock(i32* %145)
  br label %147

147:                                              ; preds = %143, %14
  ret void
}

declare dso_local %struct.iscsi_tiqn* @iscsit_snmp_get_tiqn(%struct.iscsi_conn*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
