; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_clear_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_clear_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i8*, i8** }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i64, i8*, i8* }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"ips_clear_adapter\00", align 1
@ips_reset_timeout = common dso_local global i8* null, align 8
@IPS_CMD_CONFIG_SYNC = common dso_local global i8* null, align 8
@IPS_POCL = common dso_local global i32 0, align 4
@IPS_FAILURE = common dso_local global i32 0, align 4
@IPS_SUCCESS_IMM = common dso_local global i32 0, align 4
@IPS_GSC_STATUS_MASK = common dso_local global i32 0, align 4
@IPS_CMD_ERROR_TABLE = common dso_local global i8* null, align 8
@IPS_CSL = common dso_local global i32 0, align 4
@ips_cmd_timeout = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @ips_clear_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_clear_adapter(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i64 %16
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = call i32 @ips_init_scb(%struct.TYPE_17__* %18, %struct.TYPE_16__* %19)
  %21 = load i8*, i8** @ips_reset_timeout, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @IPS_CMD_CONFIG_SYNC, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %24, i8** %28, align 8
  %29 = load i8*, i8** @IPS_CMD_CONFIG_SYNC, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 6
  store i8* %29, i8** %33, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i8* @IPS_COMMAND_ID(%struct.TYPE_17__* %34, %struct.TYPE_16__* %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  store i8* %36, i8** %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @IPS_POCL, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = load i8*, i8** @ips_reset_timeout, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ips_send_wait(%struct.TYPE_17__* %62, %struct.TYPE_16__* %63, i8* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @IPS_FAILURE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %80, label %69

69:                                               ; preds = %2
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @IPS_SUCCESS_IMM, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IPS_GSC_STATUS_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %73, %69, %2
  store i32 0, i32* %3, align 4
  br label %146

81:                                               ; preds = %73
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = call i32 @ips_init_scb(%struct.TYPE_17__* %82, %struct.TYPE_16__* %83)
  %85 = load i8*, i8** @IPS_CMD_ERROR_TABLE, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %85, i8** %89, align 8
  %90 = load i8*, i8** @ips_reset_timeout, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @IPS_CMD_ERROR_TABLE, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 6
  store i8* %93, i8** %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = call i8* @IPS_COMMAND_ID(%struct.TYPE_17__* %98, %struct.TYPE_16__* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 5
  store i8* %100, i8** %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @IPS_CSL, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = load i8*, i8** @ips_cmd_timeout, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ips_send_wait(%struct.TYPE_17__* %126, %struct.TYPE_16__* %127, i8* %128, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* @IPS_FAILURE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %144, label %133

133:                                              ; preds = %81
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @IPS_SUCCESS_IMM, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IPS_GSC_STATUS_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %137, %133, %81
  store i32 0, i32* %3, align 4
  br label %146

145:                                              ; preds = %137
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %144, %80
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @ips_init_scb(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i8* @IPS_COMMAND_ID(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ips_send_wait(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
