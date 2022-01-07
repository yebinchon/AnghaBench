; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_reconnect_with_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_reconnect_with_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_cmd_entry = type { i32 }
%struct.esp = type { i32, i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.esp*)*, i32 (%struct.esp*)*, i64 (%struct.esp*)*, i32 (%struct.esp*, i32, i32, i32, i32, i32)* }
%struct.esp_lun_data = type { %struct.esp_cmd_entry**, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Reconnect w/num_tagged==0\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"reconnect tag, \00", align 1
@ESP_QUICKIRQ_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Reconnect IRQ1 timeout\0A\00", align 1
@ESP_STATUS = common dso_local global i32 0, align 4
@ESP_INTRPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"IRQ(%d:%x:%x), \00", align 1
@ESP_INTR_DC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Reconnect, got disconnect.\0A\00", align 1
@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@ESP_MIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Reconnect, not MIP sreg[%02x].\0A\00", align 1
@ESP_CMD_DMA = common dso_local global i32 0, align 4
@ESP_CMD_TI = common dso_local global i32 0, align 4
@ESP_CMD_MOK = common dso_local global i32 0, align 4
@ESP_RESELECT_TAG_LIMIT = common dso_local global i32 0, align 4
@ESP_INTR_FDONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Reconnect IRQ2 timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"IRQ2(%d:%x:%x) tag[%x:%x]\0A\00", align 1
@SIMPLE_QUEUE_TAG = common dso_local global i32 0, align 4
@ORDERED_QUEUE_TAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Reconnect, bad tag type %02x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Reconnect, no entry for tag %02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.esp_cmd_entry* (%struct.esp*, %struct.esp_lun_data*)* @esp_reconnect_with_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.esp_cmd_entry* @esp_reconnect_with_tag(%struct.esp* %0, %struct.esp_lun_data* %1) #0 {
  %3 = alloca %struct.esp_cmd_entry*, align 8
  %4 = alloca %struct.esp*, align 8
  %5 = alloca %struct.esp_lun_data*, align 8
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %4, align 8
  store %struct.esp_lun_data* %1, %struct.esp_lun_data** %5, align 8
  %8 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %9 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load %struct.esp*, %struct.esp** %4, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %13, i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %3, align 8
  br label %254

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @esp_log_reconnect(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %35, %18
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ESP_QUICKIRQ_LIMIT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.esp*, %struct.esp** %4, align 8
  %26 = getelementptr inbounds %struct.esp, %struct.esp* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64 (%struct.esp*)*, i64 (%struct.esp*)** %28, align 8
  %30 = load %struct.esp*, %struct.esp** %4, align 8
  %31 = call i64 %29(%struct.esp* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %20

38:                                               ; preds = %33, %20
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ESP_QUICKIRQ_LIMIT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load %struct.esp*, %struct.esp** %4, align 8
  %45 = getelementptr inbounds %struct.esp, %struct.esp* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %43, i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %3, align 8
  br label %254

48:                                               ; preds = %38
  %49 = load i32, i32* @ESP_STATUS, align 4
  %50 = call i8* @esp_read8(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.esp*, %struct.esp** %4, align 8
  %53 = getelementptr inbounds %struct.esp, %struct.esp* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @ESP_INTRPT, align 4
  %55 = call i8* @esp_read8(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.esp*, %struct.esp** %4, align 8
  %58 = getelementptr inbounds %struct.esp, %struct.esp* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.esp*, %struct.esp** %4, align 8
  %61 = getelementptr inbounds %struct.esp, %struct.esp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.esp*, %struct.esp** %4, align 8
  %64 = getelementptr inbounds %struct.esp, %struct.esp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @esp_log_reconnect(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load %struct.esp*, %struct.esp** %4, align 8
  %68 = getelementptr inbounds %struct.esp, %struct.esp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ESP_INTR_DC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %48
  %74 = load i32, i32* @KERN_ERR, align 4
  %75 = load %struct.esp*, %struct.esp** %4, align 8
  %76 = getelementptr inbounds %struct.esp, %struct.esp* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %74, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %3, align 8
  br label %254

79:                                               ; preds = %48
  %80 = load %struct.esp*, %struct.esp** %4, align 8
  %81 = getelementptr inbounds %struct.esp, %struct.esp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ESP_STAT_PMASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @ESP_MIP, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load %struct.esp*, %struct.esp** %4, align 8
  %90 = getelementptr inbounds %struct.esp, %struct.esp* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.esp*, %struct.esp** %4, align 8
  %93 = getelementptr inbounds %struct.esp, %struct.esp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %88, i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %3, align 8
  br label %254

96:                                               ; preds = %79
  %97 = load %struct.esp*, %struct.esp** %4, align 8
  %98 = getelementptr inbounds %struct.esp, %struct.esp* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 255, i32* %100, align 4
  %101 = load %struct.esp*, %struct.esp** %4, align 8
  %102 = getelementptr inbounds %struct.esp, %struct.esp* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 255, i32* %104, align 4
  %105 = load %struct.esp*, %struct.esp** %4, align 8
  %106 = getelementptr inbounds %struct.esp, %struct.esp* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32 (%struct.esp*, i32, i32, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32, i32, i32)** %108, align 8
  %110 = load %struct.esp*, %struct.esp** %4, align 8
  %111 = load %struct.esp*, %struct.esp** %4, align 8
  %112 = getelementptr inbounds %struct.esp, %struct.esp* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ESP_CMD_DMA, align 4
  %115 = load i32, i32* @ESP_CMD_TI, align 4
  %116 = or i32 %114, %115
  %117 = call i32 %109(%struct.esp* %110, i32 %113, i32 2, i32 2, i32 1, i32 %116)
  %118 = load %struct.esp*, %struct.esp** %4, align 8
  %119 = load i32, i32* @ESP_CMD_MOK, align 4
  %120 = call i32 @scsi_esp_cmd(%struct.esp* %118, i32 %119)
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %155, %96
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @ESP_RESELECT_TAG_LIMIT, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %158

125:                                              ; preds = %121
  %126 = load %struct.esp*, %struct.esp** %4, align 8
  %127 = getelementptr inbounds %struct.esp, %struct.esp* %126, i32 0, i32 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64 (%struct.esp*)*, i64 (%struct.esp*)** %129, align 8
  %131 = load %struct.esp*, %struct.esp** %4, align 8
  %132 = call i64 %130(%struct.esp* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %125
  %135 = load i32, i32* @ESP_STATUS, align 4
  %136 = call i8* @esp_read8(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.esp*, %struct.esp** %4, align 8
  %139 = getelementptr inbounds %struct.esp, %struct.esp* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @ESP_INTRPT, align 4
  %141 = call i8* @esp_read8(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.esp*, %struct.esp** %4, align 8
  %144 = getelementptr inbounds %struct.esp, %struct.esp* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.esp*, %struct.esp** %4, align 8
  %146 = getelementptr inbounds %struct.esp, %struct.esp* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ESP_INTR_FDONE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  br label %158

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152, %125
  %154 = call i32 @udelay(i32 1)
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %121

158:                                              ; preds = %151, %121
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @ESP_RESELECT_TAG_LIMIT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i32, i32* @KERN_ERR, align 4
  %164 = load %struct.esp*, %struct.esp** %4, align 8
  %165 = getelementptr inbounds %struct.esp, %struct.esp* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %163, i32 %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %3, align 8
  br label %254

168:                                              ; preds = %158
  %169 = load %struct.esp*, %struct.esp** %4, align 8
  %170 = getelementptr inbounds %struct.esp, %struct.esp* %169, i32 0, i32 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32 (%struct.esp*)*, i32 (%struct.esp*)** %172, align 8
  %174 = load %struct.esp*, %struct.esp** %4, align 8
  %175 = call i32 %173(%struct.esp* %174)
  %176 = load %struct.esp*, %struct.esp** %4, align 8
  %177 = getelementptr inbounds %struct.esp, %struct.esp* %176, i32 0, i32 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32 (%struct.esp*)*, i32 (%struct.esp*)** %179, align 8
  %181 = load %struct.esp*, %struct.esp** %4, align 8
  %182 = call i32 %180(%struct.esp* %181)
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.esp*, %struct.esp** %4, align 8
  %185 = getelementptr inbounds %struct.esp, %struct.esp* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.esp*, %struct.esp** %4, align 8
  %188 = getelementptr inbounds %struct.esp, %struct.esp* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.esp*, %struct.esp** %4, align 8
  %191 = getelementptr inbounds %struct.esp, %struct.esp* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.esp*, %struct.esp** %4, align 8
  %196 = getelementptr inbounds %struct.esp, %struct.esp* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i8*, ...) @esp_log_reconnect(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %183, i32 %186, i32 %189, i32 %194, i32 %199)
  %201 = load %struct.esp*, %struct.esp** %4, align 8
  %202 = getelementptr inbounds %struct.esp, %struct.esp* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SIMPLE_QUEUE_TAG, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %216, label %208

208:                                              ; preds = %168
  %209 = load %struct.esp*, %struct.esp** %4, align 8
  %210 = getelementptr inbounds %struct.esp, %struct.esp* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ORDERED_QUEUE_TAG, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %208, %168
  %217 = load i32, i32* @KERN_ERR, align 4
  %218 = load %struct.esp*, %struct.esp** %4, align 8
  %219 = getelementptr inbounds %struct.esp, %struct.esp* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.esp*, %struct.esp** %4, align 8
  %222 = getelementptr inbounds %struct.esp, %struct.esp* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %217, i32 %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %225)
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %3, align 8
  br label %254

227:                                              ; preds = %208
  %228 = load %struct.esp_lun_data*, %struct.esp_lun_data** %5, align 8
  %229 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %228, i32 0, i32 0
  %230 = load %struct.esp_cmd_entry**, %struct.esp_cmd_entry*** %229, align 8
  %231 = load %struct.esp*, %struct.esp** %4, align 8
  %232 = getelementptr inbounds %struct.esp, %struct.esp* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %230, i64 %236
  %238 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %237, align 8
  store %struct.esp_cmd_entry* %238, %struct.esp_cmd_entry** %6, align 8
  %239 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %240 = icmp ne %struct.esp_cmd_entry* %239, null
  br i1 %240, label %252, label %241

241:                                              ; preds = %227
  %242 = load i32, i32* @KERN_ERR, align 4
  %243 = load %struct.esp*, %struct.esp** %4, align 8
  %244 = getelementptr inbounds %struct.esp, %struct.esp* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.esp*, %struct.esp** %4, align 8
  %247 = getelementptr inbounds %struct.esp, %struct.esp* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %242, i32 %245, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %250)
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %3, align 8
  br label %254

252:                                              ; preds = %227
  %253 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  store %struct.esp_cmd_entry* %253, %struct.esp_cmd_entry** %3, align 8
  br label %254

254:                                              ; preds = %252, %241, %216, %162, %87, %73, %42, %12
  %255 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  ret %struct.esp_cmd_entry* %255
}

declare dso_local i32 @shost_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @esp_log_reconnect(i8*, ...) #1

declare dso_local i8* @esp_read8(i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
