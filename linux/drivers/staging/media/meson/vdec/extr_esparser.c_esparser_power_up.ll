; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i32, i32, %struct.TYPE_2__*, %struct.amvdec_core* }
%struct.TYPE_2__ = type { %struct.amvdec_ops* }
%struct.amvdec_ops = type { {}* }
%struct.amvdec_core = type { i32 }

@PARSER_CONFIG = common dso_local global i32 0, align 4
@PS_CFG_PFIFO_EMPTY_CNT_BIT = common dso_local global i32 0, align 4
@PS_CFG_MAX_ES_WR_CYCLE_BIT = common dso_local global i32 0, align 4
@PS_CFG_MAX_FETCH_CYCLE_BIT = common dso_local global i32 0, align 4
@PFIFO_RD_PTR = common dso_local global i32 0, align 4
@PFIFO_WR_PTR = common dso_local global i32 0, align 4
@PARSER_SEARCH_PATTERN = common dso_local global i32 0, align 4
@ES_START_CODE_PATTERN = common dso_local global i32 0, align 4
@PARSER_SEARCH_MASK = common dso_local global i32 0, align 4
@ES_START_CODE_MASK = common dso_local global i32 0, align 4
@PS_CFG_STARTCODE_WID_24_BIT = common dso_local global i32 0, align 4
@PARSER_CONTROL = common dso_local global i32 0, align 4
@ES_SEARCH = common dso_local global i32 0, align 4
@ES_PARSER_START = common dso_local global i32 0, align 4
@PARSER_VIDEO_START_PTR = common dso_local global i32 0, align 4
@PARSER_VIDEO_END_PTR = common dso_local global i32 0, align 4
@PARSER_ES_CONTROL = common dso_local global i32 0, align 4
@PARSER_INT_STATUS = common dso_local global i32 0, align 4
@PARSER_INT_ENABLE = common dso_local global i32 0, align 4
@PARSER_INT_HOST_EN_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esparser_power_up(%struct.amvdec_session* %0) #0 {
  %2 = alloca %struct.amvdec_session*, align 8
  %3 = alloca %struct.amvdec_core*, align 8
  %4 = alloca %struct.amvdec_ops*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %2, align 8
  %5 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %6 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %5, i32 0, i32 3
  %7 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  store %struct.amvdec_core* %7, %struct.amvdec_core** %3, align 8
  %8 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %9 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.amvdec_ops*, %struct.amvdec_ops** %11, align 8
  store %struct.amvdec_ops* %12, %struct.amvdec_ops** %4, align 8
  %13 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %14 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @reset_control_reset(i32 %15)
  %17 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %18 = load i32, i32* @PARSER_CONFIG, align 4
  %19 = load i32, i32* @PS_CFG_PFIFO_EMPTY_CNT_BIT, align 4
  %20 = shl i32 10, %19
  %21 = load i32, i32* @PS_CFG_MAX_ES_WR_CYCLE_BIT, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @PS_CFG_MAX_FETCH_CYCLE_BIT, align 4
  %25 = shl i32 16, %24
  %26 = or i32 %23, %25
  %27 = call i32 @amvdec_write_parser(%struct.amvdec_core* %17, i32 %18, i32 %26)
  %28 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %29 = load i32, i32* @PFIFO_RD_PTR, align 4
  %30 = call i32 @amvdec_write_parser(%struct.amvdec_core* %28, i32 %29, i32 0)
  %31 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %32 = load i32, i32* @PFIFO_WR_PTR, align 4
  %33 = call i32 @amvdec_write_parser(%struct.amvdec_core* %31, i32 %32, i32 0)
  %34 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %35 = load i32, i32* @PARSER_SEARCH_PATTERN, align 4
  %36 = load i32, i32* @ES_START_CODE_PATTERN, align 4
  %37 = call i32 @amvdec_write_parser(%struct.amvdec_core* %34, i32 %35, i32 %36)
  %38 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %39 = load i32, i32* @PARSER_SEARCH_MASK, align 4
  %40 = load i32, i32* @ES_START_CODE_MASK, align 4
  %41 = call i32 @amvdec_write_parser(%struct.amvdec_core* %38, i32 %39, i32 %40)
  %42 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %43 = load i32, i32* @PARSER_CONFIG, align 4
  %44 = load i32, i32* @PS_CFG_PFIFO_EMPTY_CNT_BIT, align 4
  %45 = shl i32 10, %44
  %46 = load i32, i32* @PS_CFG_MAX_ES_WR_CYCLE_BIT, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @PS_CFG_MAX_FETCH_CYCLE_BIT, align 4
  %50 = shl i32 16, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @PS_CFG_STARTCODE_WID_24_BIT, align 4
  %53 = shl i32 2, %52
  %54 = or i32 %51, %53
  %55 = call i32 @amvdec_write_parser(%struct.amvdec_core* %42, i32 %43, i32 %54)
  %56 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %57 = load i32, i32* @PARSER_CONTROL, align 4
  %58 = load i32, i32* @ES_SEARCH, align 4
  %59 = load i32, i32* @ES_PARSER_START, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @amvdec_write_parser(%struct.amvdec_core* %56, i32 %57, i32 %60)
  %62 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %63 = load i32, i32* @PARSER_VIDEO_START_PTR, align 4
  %64 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %65 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @amvdec_write_parser(%struct.amvdec_core* %62, i32 %63, i32 %66)
  %68 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %69 = load i32, i32* @PARSER_VIDEO_END_PTR, align 4
  %70 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %71 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %74 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = sub nsw i32 %76, 8
  %78 = call i32 @amvdec_write_parser(%struct.amvdec_core* %68, i32 %69, i32 %77)
  %79 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %80 = load i32, i32* @PARSER_ES_CONTROL, align 4
  %81 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %82 = load i32, i32* @PARSER_ES_CONTROL, align 4
  %83 = call i32 @amvdec_read_parser(%struct.amvdec_core* %81, i32 %82)
  %84 = and i32 %83, -2
  %85 = call i32 @amvdec_write_parser(%struct.amvdec_core* %79, i32 %80, i32 %84)
  %86 = load %struct.amvdec_ops*, %struct.amvdec_ops** %4, align 8
  %87 = getelementptr inbounds %struct.amvdec_ops, %struct.amvdec_ops* %86, i32 0, i32 0
  %88 = bitcast {}** %87 to i32 (%struct.amvdec_session*)**
  %89 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %88, align 8
  %90 = icmp ne i32 (%struct.amvdec_session*)* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %1
  %92 = load %struct.amvdec_ops*, %struct.amvdec_ops** %4, align 8
  %93 = getelementptr inbounds %struct.amvdec_ops, %struct.amvdec_ops* %92, i32 0, i32 0
  %94 = bitcast {}** %93 to i32 (%struct.amvdec_session*)**
  %95 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %94, align 8
  %96 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %97 = call i32 %95(%struct.amvdec_session* %96)
  br label %98

98:                                               ; preds = %91, %1
  %99 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %100 = load i32, i32* @PARSER_INT_STATUS, align 4
  %101 = call i32 @amvdec_write_parser(%struct.amvdec_core* %99, i32 %100, i32 65535)
  %102 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %103 = load i32, i32* @PARSER_INT_ENABLE, align 4
  %104 = load i32, i32* @PARSER_INT_HOST_EN_BIT, align 4
  %105 = call i32 @BIT(i32 %104)
  %106 = call i32 @amvdec_write_parser(%struct.amvdec_core* %102, i32 %103, i32 %105)
  ret i32 0
}

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @amvdec_write_parser(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @amvdec_read_parser(%struct.amvdec_core*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
