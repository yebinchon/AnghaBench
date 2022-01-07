; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_get_fcp_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_get_fcp_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.qla_hw_data* }
%struct.TYPE_11__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.qla_fcp_prio_entry* }
%struct.qla_fcp_prio_entry = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@FCP_PRIO_ENTRY_VALID = common dso_local global i32 0, align 4
@FCP_PRIO_ENTRY_SPID_VALID = common dso_local global i32 0, align 4
@INVALID_PORT_ID = common dso_local global i32 0, align 4
@FCP_PRIO_ENTRY_DPID_VALID = common dso_local global i32 0, align 4
@FCP_PRIO_ENTRY_SWWN_VALID = common dso_local global i32 0, align 4
@FCP_PRIO_ENTRY_DWWN_VALID = common dso_local global i32 0, align 4
@FCP_PRIO_ENTRY_TAG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @qla24xx_get_fcp_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_get_fcp_prio(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.qla_fcp_prio_entry*, align 8
  %16 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %16, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %2
  store i32 -1, i32* %3, align 4
  br label %211

31:                                               ; preds = %24
  store i32 -1, i32* %10, align 4
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %40, align 8
  %42 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %41, i64 0
  store %struct.qla_fcp_prio_entry* %42, %struct.qla_fcp_prio_entry** %15, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %206, %31
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %209

47:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %48 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %49 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FCP_PRIO_ENTRY_VALID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %56 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %55, i32 1
  store %struct.qla_fcp_prio_entry* %56, %struct.qla_fcp_prio_entry** %15, align 8
  br label %206

57:                                               ; preds = %47
  %58 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %59 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FCP_PRIO_ENTRY_SPID_VALID, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %57
  %65 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %66 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INVALID_PORT_ID, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @INVALID_PORT_ID, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @INVALID_PORT_ID, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %90

82:                                               ; preds = %64
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %79
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %93 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FCP_PRIO_ENTRY_DPID_VALID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %91
  %99 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %100 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @INVALID_PORT_ID, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %11, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @INVALID_PORT_ID, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @INVALID_PORT_ID, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %124

116:                                              ; preds = %98
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %116
  br label %124

124:                                              ; preds = %123, %113
  br label %125

125:                                              ; preds = %124, %91
  %126 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %127 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @FCP_PRIO_ENTRY_SWWN_VALID, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %125
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @wwn_to_u64(i32 %135)
  store i64 %136, i64* %13, align 8
  %137 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %138 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @wwn_to_u64(i32 %139)
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %14, align 8
  %142 = icmp eq i64 %141, -1
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %154

146:                                              ; preds = %132
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %14, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %150, %146
  br label %154

154:                                              ; preds = %153, %143
  br label %155

155:                                              ; preds = %154, %125
  %156 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %157 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @FCP_PRIO_ENTRY_DWWN_VALID, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %155
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @wwn_to_u64(i32 %165)
  store i64 %166, i64* %13, align 8
  %167 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %168 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @wwn_to_u64(i32 %169)
  store i64 %170, i64* %14, align 8
  %171 = load i64, i64* %14, align 8
  %172 = icmp eq i64 %171, -1
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %184

176:                                              ; preds = %162
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %14, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %180, %176
  br label %184

184:                                              ; preds = %183, %173
  br label %185

185:                                              ; preds = %184, %155
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %9, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %203

191:                                              ; preds = %188, %185
  %192 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %193 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @FCP_PRIO_ENTRY_TAG_VALID, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %200 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %198, %191
  br label %209

203:                                              ; preds = %188
  %204 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %15, align 8
  %205 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %204, i32 1
  store %struct.qla_fcp_prio_entry* %205, %struct.qla_fcp_prio_entry** %15, align 8
  br label %206

206:                                              ; preds = %203, %54
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %43

209:                                              ; preds = %202, %43
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %209, %30
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @wwn_to_u64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
