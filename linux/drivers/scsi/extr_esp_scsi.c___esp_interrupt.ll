; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c___esp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c___esp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i64, i64, i64, i32, i64, i32, i8*, i32* }

@ESP_STATUS = common dso_local global i32 0, align 4
@ESP_SSTEP = common dso_local global i32 0, align 4
@ESP_INTRPT = common dso_local global i32 0, align 4
@ESP_FLAG_RESETTING = common dso_local global i32 0, align 4
@ESP_INTR_SR = common dso_local global i32 0, align 4
@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@ESP_DIP = common dso_local global i32 0, align 4
@ESP_DOP = common dso_local global i32 0, align 4
@ESP_SELECT_NONE = common dso_local global i64 0, align 8
@ESP_EVENT_STATUS = common dso_local global i64 0, align 8
@ESP_EVENT_DATA_DONE = common dso_local global i64 0, align 8
@ESP_INTR_RSEL = common dso_local global i32 0, align 4
@ESP_STATUS2 = common dso_local global i32 0, align 4
@ESP_STAT2_FEMPTY = common dso_local global i32 0, align 4
@ESP_STAT2_F1BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"intr sreg[%02x] seqreg[%02x] sreg2[%02x] ireg[%02x]\0A\00", align 1
@ESP_INTR_S = common dso_local global i32 0, align 4
@ESP_INTR_SATN = common dso_local global i32 0, align 4
@ESP_INTR_IC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unexpected IREG %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @__esp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__esp_interrupt(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %6 = load i32, i32* @ESP_STATUS, align 4
  %7 = call i8* @esp_read8(i32 %6)
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.esp*, %struct.esp** %2, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @ESP_SSTEP, align 4
  %12 = call i8* @esp_read8(i32 %11)
  %13 = load %struct.esp*, %struct.esp** %2, align 8
  %14 = getelementptr inbounds %struct.esp, %struct.esp* %13, i32 0, i32 9
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @ESP_INTRPT, align 4
  %16 = call i8* @esp_read8(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.esp*, %struct.esp** %2, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.esp*, %struct.esp** %2, align 8
  %21 = getelementptr inbounds %struct.esp, %struct.esp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ESP_FLAG_RESETTING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.esp*, %struct.esp** %2, align 8
  %29 = call i64 @esp_check_gross_error(%struct.esp* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %215

32:                                               ; preds = %27
  %33 = load %struct.esp*, %struct.esp** %2, align 8
  %34 = call i32 @esp_check_spur_intr(%struct.esp* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %215

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.esp*, %struct.esp** %2, align 8
  %41 = getelementptr inbounds %struct.esp, %struct.esp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ESP_INTR_SR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.esp*, %struct.esp** %2, align 8
  %52 = call i32 @esp_reset_cleanup(%struct.esp* %51)
  %53 = load %struct.esp*, %struct.esp** %2, align 8
  %54 = getelementptr inbounds %struct.esp, %struct.esp* %53, i32 0, i32 10
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.esp*, %struct.esp** %2, align 8
  %59 = getelementptr inbounds %struct.esp, %struct.esp* %58, i32 0, i32 10
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @complete(i32* %60)
  %62 = load %struct.esp*, %struct.esp** %2, align 8
  %63 = getelementptr inbounds %struct.esp, %struct.esp* %62, i32 0, i32 10
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  br label %215

65:                                               ; preds = %47
  %66 = load %struct.esp*, %struct.esp** %2, align 8
  %67 = getelementptr inbounds %struct.esp, %struct.esp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ESP_STAT_PMASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %5, align 4
  %71 = load %struct.esp*, %struct.esp** %2, align 8
  %72 = getelementptr inbounds %struct.esp, %struct.esp* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FASHME, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %133

76:                                               ; preds = %65
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ESP_DIP, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @ESP_DOP, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load %struct.esp*, %struct.esp** %2, align 8
  %86 = getelementptr inbounds %struct.esp, %struct.esp* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ESP_SELECT_NONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.esp*, %struct.esp** %2, align 8
  %92 = getelementptr inbounds %struct.esp, %struct.esp* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ESP_EVENT_STATUS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.esp*, %struct.esp** %2, align 8
  %98 = getelementptr inbounds %struct.esp, %struct.esp* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ESP_EVENT_DATA_DONE, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %96, %90, %84, %80, %76
  %103 = load %struct.esp*, %struct.esp** %2, align 8
  %104 = getelementptr inbounds %struct.esp, %struct.esp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ESP_INTR_RSEL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %102, %96
  %110 = load i32, i32* @ESP_STATUS2, align 4
  %111 = call i8* @esp_read8(i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.esp*, %struct.esp** %2, align 8
  %114 = getelementptr inbounds %struct.esp, %struct.esp* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.esp*, %struct.esp** %2, align 8
  %116 = getelementptr inbounds %struct.esp, %struct.esp* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ESP_STAT2_FEMPTY, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %109
  %122 = load %struct.esp*, %struct.esp** %2, align 8
  %123 = getelementptr inbounds %struct.esp, %struct.esp* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ESP_STAT2_F1BYTE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121, %109
  %129 = load %struct.esp*, %struct.esp** %2, align 8
  %130 = call i32 @hme_read_fifo(%struct.esp* %129)
  br label %131

131:                                              ; preds = %128, %121
  br label %132

132:                                              ; preds = %131, %102
  br label %133

133:                                              ; preds = %132, %65
  %134 = load %struct.esp*, %struct.esp** %2, align 8
  %135 = getelementptr inbounds %struct.esp, %struct.esp* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.esp*, %struct.esp** %2, align 8
  %138 = getelementptr inbounds %struct.esp, %struct.esp* %137, i32 0, i32 9
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.esp*, %struct.esp** %2, align 8
  %141 = getelementptr inbounds %struct.esp, %struct.esp* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.esp*, %struct.esp** %2, align 8
  %144 = getelementptr inbounds %struct.esp, %struct.esp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @esp_log_intr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %136, i8* %139, i32 %142, i32 %145)
  store i32 0, i32* %4, align 4
  %147 = load %struct.esp*, %struct.esp** %2, align 8
  %148 = getelementptr inbounds %struct.esp, %struct.esp* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ESP_INTR_S, align 4
  %151 = load i32, i32* @ESP_INTR_SATN, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @ESP_INTR_IC, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %149, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %133
  %158 = load i32, i32* @KERN_INFO, align 4
  %159 = load %struct.esp*, %struct.esp** %2, align 8
  %160 = getelementptr inbounds %struct.esp, %struct.esp* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.esp*, %struct.esp** %2, align 8
  %163 = getelementptr inbounds %struct.esp, %struct.esp* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @shost_printk(i32 %158, i32 %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load %struct.esp*, %struct.esp** %2, align 8
  %167 = getelementptr inbounds %struct.esp, %struct.esp* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @ESP_INTR_IC, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %157
  %173 = load %struct.esp*, %struct.esp** %2, align 8
  %174 = call i32 @esp_dump_cmd_log(%struct.esp* %173)
  br label %175

175:                                              ; preds = %172, %157
  %176 = load %struct.esp*, %struct.esp** %2, align 8
  %177 = call i32 @esp_schedule_reset(%struct.esp* %176)
  br label %207

178:                                              ; preds = %133
  %179 = load %struct.esp*, %struct.esp** %2, align 8
  %180 = getelementptr inbounds %struct.esp, %struct.esp* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ESP_INTR_RSEL, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = load %struct.esp*, %struct.esp** %2, align 8
  %187 = getelementptr inbounds %struct.esp, %struct.esp* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.esp*, %struct.esp** %2, align 8
  %192 = call i32 @esp_finish_select(%struct.esp* %191)
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.esp*, %struct.esp** %2, align 8
  %195 = call i32 @esp_reconnect(%struct.esp* %194)
  store i32 %195, i32* %4, align 4
  br label %206

196:                                              ; preds = %178
  %197 = load %struct.esp*, %struct.esp** %2, align 8
  %198 = getelementptr inbounds %struct.esp, %struct.esp* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ESP_SELECT_NONE, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.esp*, %struct.esp** %2, align 8
  %204 = call i32 @esp_finish_select(%struct.esp* %203)
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %202, %196
  br label %206

206:                                              ; preds = %205, %193
  br label %207

207:                                              ; preds = %206, %175
  br label %208

208:                                              ; preds = %212, %207
  %209 = load i32, i32* %4, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load %struct.esp*, %struct.esp** %2, align 8
  %214 = call i32 @esp_process_event(%struct.esp* %213)
  store i32 %214, i32* %4, align 4
  br label %208

215:                                              ; preds = %31, %37, %64, %208
  ret void
}

declare dso_local i8* @esp_read8(i32) #1

declare dso_local i64 @esp_check_gross_error(%struct.esp*) #1

declare dso_local i32 @esp_check_spur_intr(%struct.esp*) #1

declare dso_local i32 @esp_reset_cleanup(%struct.esp*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @hme_read_fifo(%struct.esp*) #1

declare dso_local i32 @esp_log_intr(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @esp_dump_cmd_log(%struct.esp*) #1

declare dso_local i32 @esp_schedule_reset(%struct.esp*) #1

declare dso_local i32 @esp_finish_select(%struct.esp*) #1

declare dso_local i32 @esp_reconnect(%struct.esp*) #1

declare dso_local i32 @esp_process_event(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
