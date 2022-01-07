; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_update_vport_wwn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_update_vport_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64* }

@FAWWPN_PARAM_CHG = common dso_local global i32 0, align 4
@FAPWWN_KEY_VENDOR = common dso_local global i64 0, align 8
@FAWWPN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_update_vport_wwn(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32* %15, i32** %4, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @u64_to_wwn(i64 %27, i64* %33)
  br label %35

35:                                               ; preds = %22, %1
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 3
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 3
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %49 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = call i32 @u64_to_wwn(i64 %47, i64* %53)
  br label %55

55:                                               ; preds = %42, %35
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64, %55
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 4
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = call i32 @memcpy(%struct.TYPE_15__* %73, %struct.TYPE_15__* %76, i32 4)
  br label %85

78:                                               ; preds = %64
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %80 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %83 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %82, i32 0, i32 4
  %84 = call i32 @memcpy(%struct.TYPE_15__* %81, %struct.TYPE_15__* %83, i32 4)
  br label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %85
  %95 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %96 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %95, i32 0, i32 1
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %98 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = call i64 @memcmp(%struct.TYPE_15__* %96, %struct.TYPE_15__* %99, i32 4)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i32, i32* @FAWWPN_PARAM_CHG, align 4
  %104 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %105 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %94, %85
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %110 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %140, label %117

117:                                              ; preds = %108
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %119 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %118, i32 0, i32 3
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %3, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @cpu_to_be32(i32 %129)
  %131 = load i64, i64* @FAPWWN_KEY_VENDOR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %127, %124
  %134 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %135 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FAWWPN_SET, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %133, %127, %117, %108
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %142 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %141, i32 0, i32 1
  %143 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %144 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = call i32 @memcpy(%struct.TYPE_15__* %142, %struct.TYPE_15__* %145, i32 4)
  %147 = load i32, i32* @FAWWPN_SET, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %150 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %3, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %167

155:                                              ; preds = %140
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @cpu_to_be32(i32 %157)
  %159 = load i64, i64* @FAPWWN_KEY_VENDOR, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32, i32* @FAWWPN_SET, align 4
  %163 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %164 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %155, %140
  br label %175

168:                                              ; preds = %133
  %169 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %170 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %173 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %172, i32 0, i32 1
  %174 = call i32 @memcpy(%struct.TYPE_15__* %171, %struct.TYPE_15__* %173, i32 4)
  br label %175

175:                                              ; preds = %168, %167
  ret void
}

declare dso_local i32 @u64_to_wwn(i64, i64*) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
