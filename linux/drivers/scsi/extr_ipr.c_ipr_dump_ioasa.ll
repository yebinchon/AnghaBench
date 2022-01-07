; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_dump_ioasa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_dump_ioasa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.ipr_ioa_cfg = type { i64, i64 }
%struct.ipr_cmnd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ipr_ioasa }
%struct.ipr_ioasa = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.ipr_resource_entry = type { i32 }

@IPR_IOASC_IOASC_MASK = common dso_local global i32 0, align 4
@IPR_DEFAULT_LOG_LEVEL = common dso_local global i64 0, align 8
@IPR_IOASC_BUS_WAS_RESET = common dso_local global i32 0, align 4
@IPR_MAX_LOG_LEVEL = common dso_local global i64 0, align 8
@ipr_error_table = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"IOASA Dump:\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%08X: %08X %08X %08X %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*, %struct.ipr_resource_entry*)* @ipr_dump_ioasa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_dump_ioasa(%struct.ipr_ioa_cfg* %0, %struct.ipr_cmnd* %1, %struct.ipr_resource_entry* %2) #0 {
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_cmnd*, align 8
  %6 = alloca %struct.ipr_resource_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipr_ioasa*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %4, align 8
  store %struct.ipr_cmnd* %1, %struct.ipr_cmnd** %5, align 8
  store %struct.ipr_resource_entry* %2, %struct.ipr_resource_entry** %6, align 8
  %14 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.ipr_ioasa* %16, %struct.ipr_ioasa** %11, align 8
  %17 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %11, align 8
  %18 = bitcast %struct.ipr_ioasa* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %11, align 8
  %20 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @be32_to_cpu(i32 %22)
  %24 = load i32, i32* @IPR_IOASC_IOASC_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %11, align 8
  %27 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = load i32, i32* @IPR_IOASC_IOASC_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %160

36:                                               ; preds = %3
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IPR_DEFAULT_LOG_LEVEL, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %160

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @IPR_IOASC_BUS_WAS_RESET, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ipr_get_error(i32 %51)
  store i32 %52, i32* %13, align 4
  br label %56

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ipr_get_error(i32 %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %58 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IPR_MAX_LOG_LEVEL, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %11, align 8
  %64 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %160

69:                                               ; preds = %62
  %70 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %71 = call i32 @ipr_is_gscsi(%struct.ipr_resource_entry* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %160

74:                                               ; preds = %69
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipr_error_table, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %160

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %56
  %85 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %86 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipr_error_table, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ipr_res_err(%struct.ipr_ioa_cfg* %85, %struct.ipr_resource_entry* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %11, align 8
  %95 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @be16_to_cpu(i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %100 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %84
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ult i64 4, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 4, i32* %8, align 4
  br label %119

108:                                              ; preds = %103, %84
  %109 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %110 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 24, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 24, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %113, %108
  br label %119

119:                                              ; preds = %118, %107
  %120 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %157, %119
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sdiv i32 %123, 4
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %127, 4
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @be32_to_cpu(i32 %133)
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @be32_to_cpu(i32 %140)
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @be32_to_cpu(i32 %147)
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 3
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @be32_to_cpu(i32 %154)
  %156 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %134, i32 %141, i32 %148, i32 %155)
  br label %157

157:                                              ; preds = %126
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 4
  store i32 %159, i32* %7, align 4
  br label %121

160:                                              ; preds = %35, %42, %68, %73, %82, %121
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ipr_get_error(i32) #1

declare dso_local i32 @ipr_is_gscsi(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_res_err(%struct.ipr_ioa_cfg*, %struct.ipr_resource_entry*, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ipr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
