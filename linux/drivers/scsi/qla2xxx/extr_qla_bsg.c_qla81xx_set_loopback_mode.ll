; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_set_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla81xx_set_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i64, %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32)* }

@INTERNAL_LOOPBACK = common dso_local global i64 0, align 8
@ENABLE_INTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@EXTERNAL_LOOPBACK = common dso_local global i64 0, align 8
@ENABLE_EXTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"new_config[0]=%02x\0A\00", align 1
@INTERNAL_LOOPBACK_MASK = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"set port config failed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DCBX_COMP_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"DCBX completion not received.\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Bad status in IDC Completion AEN\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"DCBX completion received.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64*, i64*, i64)* @qla81xx_set_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla81xx_set_loopback_mode(%struct.TYPE_12__* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %13, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %18 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %22 = call i32 @IS_QLA8031(%struct.qla_hw_data* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %26 = call i32 @IS_QLA8044(%struct.qla_hw_data* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %167

29:                                               ; preds = %24, %20, %4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @INTERNAL_LOOPBACK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ENABLE_INTERNAL_LOOPBACK, align 4
  %38 = shl i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = or i64 %36, %39
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %40, i64* %42, align 8
  br label %58

43:                                               ; preds = %29
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @EXTERNAL_LOOPBACK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @ENABLE_EXTERNAL_LOOPBACK, align 4
  %52 = shl i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = or i64 %50, %53
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %43
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i32, i32* @ql_dbg_user, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INTERNAL_LOOPBACK_MASK, align 8
  %65 = and i64 %63, %64
  %66 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %59, %struct.TYPE_12__* %60, i32 28862, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64*, i64** %6, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = call i32 @memcpy(i64* %68, i64* %70, i32 24)
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = load i64*, i64** %7, align 8
  %76 = call i32 @qla81xx_set_port_config(%struct.TYPE_12__* %74, i64* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @QLA_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %58
  %81 = load i32, i32* @ql_log_warn, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = call i32 @ql_log(i32 %81, %struct.TYPE_12__* %82, i32 28705, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %167

88:                                               ; preds = %58
  %89 = load i64, i64* @DCBX_COMP_TIMEOUT, align 8
  %90 = load i64, i64* @HZ, align 8
  %91 = mul i64 %89, %90
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %88, %107
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 4
  %95 = load i64, i64* %12, align 8
  %96 = call i64 @wait_for_completion_timeout(i32* %94, i64 %95)
  store i64 %96, i64* %11, align 8
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101, %92
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %115

107:                                              ; preds = %101
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @HZ, align 8
  %112 = mul i64 %110, %111
  store i64 %112, i64* %12, align 8
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %114 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  br label %92

115:                                              ; preds = %104
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %142, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @ql_dbg_user, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %119, %struct.TYPE_12__* %120, i32 28706, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = load i64*, i64** %7, align 8
  %124 = call i32 @qla81xx_reset_loopback_mode(%struct.TYPE_12__* %122, i64* %123, i32 0, i32 0)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %118
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 3
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = call i32 %132(%struct.TYPE_12__* %133, i32 0)
  %135 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = call i32 @set_bit(i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %127, %118
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %162

142:                                              ; preds = %115
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load i32, i32* @ql_dbg_user, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %149, %struct.TYPE_12__* %150, i32 28867, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %10, align 4
  %154 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %155 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  br label %161

157:                                              ; preds = %142
  %158 = load i32, i32* @ql_dbg_user, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %160 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %158, %struct.TYPE_12__* %159, i32 28707, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %161

161:                                              ; preds = %157, %148
  br label %162

162:                                              ; preds = %161, %139
  %163 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %164 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %166 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %80, %28
  %168 = load i32, i32* %10, align 4
  ret i32 %168
}

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @qla81xx_set_port_config(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @qla81xx_reset_loopback_mode(%struct.TYPE_12__*, i64*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
