; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_reset_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_reset_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@QLA8044_CRB_DRV_ACTIVE_INDEX = common dso_local global i32 0, align 4
@QLA8044_CRB_DEV_PART_INFO_INDEX = common dso_local global i32 0, align 4
@QLA8044_CRB_DEV_PART_INFO2 = common dso_local global i32 0, align 4
@QLA83XX_IDC_DRV_PRESENCE = common dso_local global i32 0, align 4
@QLA83XX_DEV_PARTINFO1 = common dso_local global i32 0, align 4
@QLA83XX_DEV_PARTINFO2 = common dso_local global i32 0, align 4
@QLA83XX_CLASS_TYPE_FCOE = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"This host is Reset owner.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_reset_ownership(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %3, align 8
  store i32 3, i32* %9, align 4
  store i32 65535, i32* %10, align 4
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %16 = call i64 @IS_QLA8044(%struct.qla_hw_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i32, i32* @QLA8044_CRB_DRV_ACTIVE_INDEX, align 4
  %21 = call i32 @qla8044_rd_direct(%struct.TYPE_8__* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @QLA8044_CRB_DEV_PART_INFO_INDEX, align 4
  %24 = call i32 @qla8044_rd_direct(%struct.TYPE_8__* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* @QLA8044_CRB_DEV_PART_INFO2, align 4
  %27 = call i32 @qla8044_rd_direct(%struct.TYPE_8__* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = load i32, i32* @QLA83XX_IDC_DRV_PRESENCE, align 4
  %31 = call i32 @qla83xx_rd_reg(%struct.TYPE_8__* %29, i32 %30, i32* %4)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load i32, i32* @QLA83XX_DEV_PARTINFO1, align 4
  %34 = call i32 @qla83xx_rd_reg(%struct.TYPE_8__* %32, i32 %33, i32* %6)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load i32, i32* @QLA83XX_DEV_PARTINFO2, align 4
  %37 = call i32 @qla83xx_rd_reg(%struct.TYPE_8__* %35, i32 %36, i32* %7)
  br label %38

38:                                               ; preds = %28, %18
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %44, 4
  %46 = ashr i32 %43, %45
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @QLA83XX_CLASS_TYPE_FCOE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %10, align 4
  br label %64

60:                                               ; preds = %52, %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %39

64:                                               ; preds = %58, %39
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 65535
  br i1 %66, label %67, label %96

67:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %73, 4
  %75 = ashr i32 %72, %74
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @QLA83XX_CLASS_TYPE_FCOE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 8
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 8
  store i32 %90, i32* %10, align 4
  br label %95

91:                                               ; preds = %81, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %68

95:                                               ; preds = %88, %68
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 65535
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %107

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = shl i32 1, %105
  br label %107

107:                                              ; preds = %104, %103
  %108 = phi i32 [ 0, %103 ], [ %106, %104 ]
  %109 = or i32 %100, %108
  %110 = xor i32 %109, -1
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %107
  %116 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %117 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* @ql_dbg_p3p, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = call i32 @ql_dbg(i32 %122, %struct.TYPE_8__* %123, i32 45183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %126 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %115, %107
  ret void
}

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_rd_direct(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
