; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_hbq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_hbq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_hbq_init = type { i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.config_hbq_var }
%struct.config_hbq_var = type { i32, i32, i32, %struct.TYPE_13__*, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@MBX_CONFIG_HBQ = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_config_hbq(%struct.lpfc_hba* %0, i32 %1, %struct.lpfc_hbq_init* %2, i32 %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hbq_init*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.config_hbq_var*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.lpfc_hbq_init* %2, %struct.lpfc_hbq_init** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %10, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %12, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store %struct.config_hbq_var* %19, %struct.config_hbq_var** %13, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = call i32 @memset(%struct.TYPE_16__* %20, i32 0, i32 72)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %24 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %26 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %29 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %31 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %34 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %36 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %39 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %41 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %44 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %46 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %49 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %51 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %54 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %56 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %59 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @putPaddrLow(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = add i64 %64, %67
  %69 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %70 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %69, i32 0, i32 5
  store i64 %68, i64* %70, align 8
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @putPaddrHigh(i32 %74)
  %76 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %77 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @MBX_CONFIG_HBQ, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @OWN_HOST, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %85 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %5
  %89 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %90 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %91 = call i32 @lpfc_build_hbq_profile2(%struct.config_hbq_var* %89, %struct.lpfc_hbq_init* %90)
  br label %112

92:                                               ; preds = %5
  %93 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %94 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %99 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %100 = call i32 @lpfc_build_hbq_profile3(%struct.config_hbq_var* %98, %struct.lpfc_hbq_init* %99)
  br label %111

101:                                              ; preds = %92
  %102 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %103 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 5
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %108 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %109 = call i32 @lpfc_build_hbq_profile5(%struct.config_hbq_var* %107, %struct.lpfc_hbq_init* %108)
  br label %110

110:                                              ; preds = %106, %101
  br label %111

111:                                              ; preds = %110, %97
  br label %112

112:                                              ; preds = %111, %88
  %113 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %114 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %190

118:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %186, %118
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %122 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %189

125:                                              ; preds = %119
  %126 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %127 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %126, i32 0, i32 2
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %135 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %134, i32 0, i32 3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  store i32 %133, i32* %140, align 4
  %141 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %142 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %141, i32 0, i32 2
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %150 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %149, i32 0, i32 3
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  store i32 %148, i32* %155, align 4
  %156 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %157 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %156, i32 0, i32 2
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %165 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %164, i32 0, i32 3
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i32 %163, i32* %170, align 4
  %171 = load %struct.lpfc_hbq_init*, %struct.lpfc_hbq_init** %8, align 8
  %172 = getelementptr inbounds %struct.lpfc_hbq_init, %struct.lpfc_hbq_init* %171, i32 0, i32 2
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.config_hbq_var*, %struct.config_hbq_var** %13, align 8
  %180 = getelementptr inbounds %struct.config_hbq_var, %struct.config_hbq_var* %179, i32 0, i32 3
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  store i32 %178, i32* %185, align 4
  br label %186

186:                                              ; preds = %125
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %119

189:                                              ; preds = %119
  br label %190

190:                                              ; preds = %189, %117
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @putPaddrLow(i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @lpfc_build_hbq_profile2(%struct.config_hbq_var*, %struct.lpfc_hbq_init*) #1

declare dso_local i32 @lpfc_build_hbq_profile3(%struct.config_hbq_var*, %struct.lpfc_hbq_init*) #1

declare dso_local i32 @lpfc_build_hbq_profile5(%struct.config_hbq_var*, %struct.lpfc_hbq_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
