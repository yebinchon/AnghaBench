; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_reset_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_reset_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i32 }

@INTERNAL_LOOPBACK_MASK = common dso_local global i32 0, align 4
@ENABLE_INTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@ENABLE_EXTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"new_config[0]=%02x\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Set port config failed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DCBX_COMP_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DCBX completion not received.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DCBX completion received.\0A\00", align 1
@LB_PORTUP_COMP_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Port up completion not received.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Port up completion received.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32)* @qla81xx_reset_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla81xx_reset_loopback_mode(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %12, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %17 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %21 = call i32 @IS_QLA8031(%struct.qla_hw_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %25 = call i32 @IS_QLA8044(%struct.qla_hw_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %143

28:                                               ; preds = %23, %19, %4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %30 = call i32 @memset(i32* %29, i32 0, i32 16)
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 1
  %37 = load i32, i32* @ENABLE_INTERNAL_LOOPBACK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %28
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 1
  %46 = load i32, i32* @ENABLE_EXTERNAL_LOOPBACK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %142

48:                                               ; preds = %39, %28
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %54, i32* %55, align 16
  %56 = load i32, i32* @ql_dbg_user, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = load i32, i32* @INTERNAL_LOOPBACK_MASK, align 4
  %61 = and i32 %59, %60
  %62 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %56, %struct.TYPE_6__* %57, i32 28863, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = call i32 @memcpy(i32* %63, i32* %65, i32 12)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %75 = call i32 @qla81xx_set_port_config(%struct.TYPE_6__* %73, i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @QLA_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %48
  %80 = load i32, i32* @ql_log_warn, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = call i32 @ql_log(i32 %80, %struct.TYPE_6__* %81, i32 28709, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %84 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %143

89:                                               ; preds = %48
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 3
  %95 = load i32, i32* @DCBX_COMP_TIMEOUT, align 4
  %96 = load i32, i32* @HZ, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i32 @wait_for_completion_timeout(i32* %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @ql_dbg_user, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %101, %struct.TYPE_6__* %102, i32 28710, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  br label %143

110:                                              ; preds = %92, %89
  %111 = load i32, i32* @ql_dbg_user, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %111, %struct.TYPE_6__* %112, i32 28711, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %119 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %118, i32 0, i32 2
  %120 = load i32, i32* @LB_PORTUP_COMP_TIMEOUT, align 4
  %121 = load i32, i32* @HZ, align 4
  %122 = mul nsw i32 %120, %121
  %123 = call i32 @wait_for_completion_timeout(i32* %119, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* @ql_dbg_user, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %126, %struct.TYPE_6__* %127, i32 28869, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %130 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %10, align 4
  br label %143

133:                                              ; preds = %117, %114
  %134 = load i32, i32* @ql_dbg_user, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i32 %134, %struct.TYPE_6__* %135, i32 28870, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %133
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 0
  store i32 0, i32* %139, align 4
  %140 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %141 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %39
  br label %143

143:                                              ; preds = %142, %125, %100, %79, %27
  %144 = load i32, i32* %10, align 4
  ret i32 %144
}

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qla81xx_set_port_config(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
