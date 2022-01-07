; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_data_bytes_sent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_data_bytes_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.esp_cmd_entry = type { i32, i32* }
%struct.scsi_cmnd = type { i32 }
%struct.esp_cmd_priv = type { i32, i32 }

@ESP_FFLAGS = common dso_local global i32 0, align 4
@ESP_FF_FBYTES = common dso_local global i32 0, align 4
@ESP_CONFIG3_EWIDE = common dso_local global i32 0, align 4
@ESP_STAT_TCNT = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@FAS_RLO = common dso_local global i32 0, align 4
@PCSCSI = common dso_local global i64 0, align 8
@ESP_CONFIG2_FENAB = common dso_local global i32 0, align 4
@ESP_TCHI = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_RESIDUAL = common dso_local global i32 0, align 4
@ESP_FDATA = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_WRITE = common dso_local global i32 0, align 4
@ESP100 = common dso_local global i64 0, align 8
@ESP_STATUS = common dso_local global i32 0, align 4
@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@ESP_DOP = common dso_local global i32 0, align 4
@ESP_FF_ONOTZERO = common dso_local global i32 0, align 4
@ESP_DIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*, %struct.esp_cmd_entry*, %struct.scsi_cmnd*)* @esp_data_bytes_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_data_bytes_sent(%struct.esp* %0, %struct.esp_cmd_entry* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp*, align 8
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.esp_cmd_priv*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %5, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  %19 = load i32, i32* @ESP_FFLAGS, align 4
  %20 = call i32 @esp_read8(i32 %19)
  %21 = load i32, i32* @ESP_FF_FBYTES, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.esp*, %struct.esp** %5, align 8
  %24 = getelementptr inbounds %struct.esp, %struct.esp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ESP_CONFIG3_EWIDE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %3
  store i32 0, i32* %9, align 4
  %33 = load %struct.esp*, %struct.esp** %5, align 8
  %34 = getelementptr inbounds %struct.esp, %struct.esp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ESP_STAT_TCNT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ESP_TCLOW, align 4
  %41 = call i32 @esp_read8(i32 %40)
  %42 = load i32, i32* @ESP_TCMED, align 4
  %43 = call i32 @esp_read8(i32 %42)
  %44 = shl i32 %43, 8
  %45 = or i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.esp*, %struct.esp** %5, align 8
  %47 = getelementptr inbounds %struct.esp, %struct.esp* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FASHME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i32, i32* @FAS_RLO, align 4
  %53 = call i32 @esp_read8(i32 %52)
  %54 = shl i32 %53, 16
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %51, %39
  %58 = load %struct.esp*, %struct.esp** %5, align 8
  %59 = getelementptr inbounds %struct.esp, %struct.esp* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCSCSI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.esp*, %struct.esp** %5, align 8
  %65 = getelementptr inbounds %struct.esp, %struct.esp* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ESP_CONFIG2_FENAB, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @ESP_TCHI, align 4
  %72 = call i32 @esp_read8(i32 %71)
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %63, %57
  br label %77

77:                                               ; preds = %76, %32
  %78 = load %struct.esp*, %struct.esp** %5, align 8
  %79 = getelementptr inbounds %struct.esp, %struct.esp* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.esp*, %struct.esp** %5, align 8
  %85 = getelementptr inbounds %struct.esp, %struct.esp* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %150

93:                                               ; preds = %77
  %94 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %95 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ESP_CMD_FLAG_RESIDUAL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %150

100:                                              ; preds = %93
  store i64 1, i64* %12, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %13, align 8
  %103 = load i32, i32* @ESP_FDATA, align 4
  %104 = call i32 @esp_read8(i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %106 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %114 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %140

119:                                              ; preds = %100
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %121 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd* %120)
  store %struct.esp_cmd_priv* %121, %struct.esp_cmd_priv** %15, align 8
  %122 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %15, align 8
  %123 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %15, align 8
  %126 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32* @scsi_kmap_atomic_sg(i32 %124, i32 %127, i64* %13, i64* %12)
  store i32* %128, i32** %16, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = call i64 @likely(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %119
  %133 = load i32, i32* %14, align 4
  %134 = load i32*, i32** %16, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %133, i32* %136, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = call i32 @scsi_kunmap_atomic_sg(i32* %137)
  br label %139

139:                                              ; preds = %132, %119
  br label %140

140:                                              ; preds = %139, %111
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @ESP_CMD_FLAG_RESIDUAL, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %147 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %140, %93, %77
  %151 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %152 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ESP_CMD_FLAG_WRITE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %157, %150
  store i32 0, i32* %11, align 4
  %162 = load %struct.esp*, %struct.esp** %5, align 8
  %163 = getelementptr inbounds %struct.esp, %struct.esp* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  store i32 1, i32* %11, align 4
  br label %213

167:                                              ; preds = %161
  %168 = load %struct.esp*, %struct.esp** %5, align 8
  %169 = getelementptr inbounds %struct.esp, %struct.esp* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ESP100, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %204

173:                                              ; preds = %167
  %174 = load i32, i32* @ESP_STATUS, align 4
  %175 = call i32 @esp_read8(i32 %174)
  %176 = load %struct.esp*, %struct.esp** %5, align 8
  %177 = getelementptr inbounds %struct.esp, %struct.esp* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.esp*, %struct.esp** %5, align 8
  %179 = getelementptr inbounds %struct.esp, %struct.esp* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ESP_STAT_PMASK, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* @ESP_FFLAGS, align 4
  %184 = call i32 @esp_read8(i32 %183)
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @ESP_DOP, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %173
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* @ESP_FF_ONOTZERO, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %188, %173
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* @ESP_DIP, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* @ESP_FF_FBYTES, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197, %188
  store i32 -1, i32* %4, align 4
  br label %221

203:                                              ; preds = %197, %193
  br label %204

204:                                              ; preds = %203, %167
  %205 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %206 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @ESP_CMD_FLAG_WRITE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %204
  store i32 1, i32* %11, align 4
  br label %212

212:                                              ; preds = %211, %204
  br label %213

213:                                              ; preds = %212, %166
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.esp*, %struct.esp** %5, align 8
  %218 = call i32 @esp_flush_fifo(%struct.esp* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %219, %202
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @esp_read8(i32) #1

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd*) #1

declare dso_local i32* @scsi_kmap_atomic_sg(i32, i32, i64*, i64*) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @scsi_kunmap_atomic_sg(i32*) #1

declare dso_local i32 @esp_flush_fifo(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
