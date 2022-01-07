; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.lpfc_sli }
%struct.lpfc_sli = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__*, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@MBX_CONFIG_RING = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_config_ring(%struct.lpfc_hba* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.lpfc_sli*, align 8
  %10 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = call i32 @memset(%struct.TYPE_16__* %14, i32 0, i32 56)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  store %struct.lpfc_sli* %34, %struct.lpfc_sli** %9, align 8
  %35 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %36 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %35, i32 0, i32 0
  %37 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %37, i64 %39
  store %struct.lpfc_sli_ring* %40, %struct.lpfc_sli_ring** %10, align 8
  %41 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %42 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* @MBX_CONFIG_RING, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @OWN_HOST, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %55 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %3
  %62 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %63 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  store i64 %67, i64* %71, align 8
  br label %160

72:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %156, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %76 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %159

79:                                               ; preds = %73
  %80 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %81 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i64 %87, i64* %96, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FC_RCTL_ELS_REQ, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %79
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  store i32 255, i32* %118, align 8
  br label %129

119:                                              ; preds = %79
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store i32 254, i32* %128, align 8
  br label %129

129:                                              ; preds = %119, %109
  %130 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %131 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %130, i32 0, i32 1
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  store i32 %137, i32* %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  store i32 255, i32* %155, align 4
  br label %156

156:                                              ; preds = %129
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %73

159:                                              ; preds = %73
  br label %160

160:                                              ; preds = %159, %61
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
