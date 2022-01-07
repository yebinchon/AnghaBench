; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_l2tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_l2tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla82xx_md_entry_cache = type { i64, i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"c_value_r: 0x%x, poll_mask: 0x%lx, w_time: 0x%lx\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i64**)* @qla82xx_minidump_process_l2tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_minidump_process_l2tag(%struct.TYPE_10__* %0, i32* %1, i64** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.qla82xx_md_entry_cache*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64** %2, i64*** %7, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %28, align 8
  store %struct.qla_hw_data* %29, %struct.qla_hw_data** %8, align 8
  %30 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %30, i32* %25, align 4
  %31 = load i64**, i64*** %7, align 8
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %26, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32* %33 to %struct.qla82xx_md_entry_cache*
  store %struct.qla82xx_md_entry_cache* %34, %struct.qla82xx_md_entry_cache** %24, align 8
  %35 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %36 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  %38 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %39 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %42 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %45 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %22, align 8
  %48 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %49 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  %51 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %52 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %16, align 8
  %55 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %56 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %17, align 8
  %59 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %60 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %19, align 8
  %63 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %64 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %21, align 8
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %147, %3
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %150

71:                                               ; preds = %67
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %72, i64 %73, i64 %74, i32 1)
  %76 = load i64, i64* %22, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %22, align 8
  %82 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %79, i64 %80, i64 %81, i32 1)
  br label %83

83:                                               ; preds = %78, %71
  %84 = load i64, i64* %21, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i64, i64* %19, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %20, align 8
  br label %90

90:                                               ; preds = %114, %86
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %91, i64 %92, i64 0, i32 0)
  store i64 %93, i64* %23, align 8
  %94 = load i64, i64* %23, align 8
  %95 = load i64, i64* %21, align 8
  %96 = and i64 %94, %95
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %115

99:                                               ; preds = %90
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i64, i64* %20, align 8
  %102 = call i64 @time_after_eq(i64 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* @ql_dbg_p3p, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %20, align 8
  %110 = call i32 @ql_dbg(i32 %105, %struct.TYPE_10__* %106, i32 45106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %107, i64 %108, i64 %109)
  %111 = load i32, i32* %25, align 4
  store i32 %111, i32* %4, align 4
  br label %154

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  br i1 true, label %90, label %115

115:                                              ; preds = %114, %98
  br label %116

116:                                              ; preds = %115, %83
  %117 = load i64, i64* %10, align 8
  store i64 %117, i64* %9, align 8
  store i64 0, i64* %14, align 8
  br label %118

118:                                              ; preds = %137, %116
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %17, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %123, i64 %124, i64 0, i32 0)
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %18, align 8
  %127 = call i32 @cpu_to_le32(i64 %126)
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** %26, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %26, align 8
  store i64 %128, i64* %129, align 8
  %131 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %132 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %122
  %138 = load i64, i64* %14, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %14, align 8
  br label %118

140:                                              ; preds = %118
  %141 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %24, align 8
  %142 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %16, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %16, align 8
  br label %147

147:                                              ; preds = %140
  %148 = load i64, i64* %13, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %13, align 8
  br label %67

150:                                              ; preds = %67
  %151 = load i64*, i64** %26, align 8
  %152 = load i64**, i64*** %7, align 8
  store i64* %151, i64** %152, align 8
  %153 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %150, %104
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @qla82xx_md_rw_32(%struct.qla_hw_data*, i64, i64, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
