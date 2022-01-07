; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i32, %struct.request*, %struct.TYPE_3__* }
%struct.request = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32 }
%struct.scsi_disk = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unaligned partial completion (resid=%u, sector_sz=%u)\0A\00", align 1
@DRIVER_SENSE = common dso_local global i64 0, align 8
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SD_LBP_DISABLE = common dso_local global i32 0, align 4
@RQF_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"sd_done: completed %d of %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_done(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_sense_hdr, align 4
  %8 = alloca %struct.scsi_disk*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %20 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %19)
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %18 ]
  store i32 %22, i32* %4, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 3
  %30 = load %struct.request*, %struct.request** %29, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.scsi_disk* @scsi_disk(i32 %32)
  store %struct.scsi_disk* %33, %struct.scsi_disk** %8, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 3
  %36 = load %struct.request*, %struct.request** %35, align 8
  store %struct.request* %36, %struct.request** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %37 = load %struct.request*, %struct.request** %9, align 8
  %38 = call i32 @req_op(%struct.request* %37)
  switch i32 %38, label %53 [
    i32 135, label %39
    i32 133, label %39
    i32 134, label %39
    i32 132, label %39
    i32 131, label %39
  ]

39:                                               ; preds = %21, %21, %21, %21, %21
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.request*, %struct.request** %9, align 8
  %44 = call i32 @blk_rq_bytes(%struct.request* %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %46 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %45, i32 0)
  br label %52

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %49 = load %struct.request*, %struct.request** %9, align 8
  %50 = call i32 @blk_rq_bytes(%struct.request* %49)
  %51 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %79

53:                                               ; preds = %21
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %55 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sub i32 %57, 1
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load i32, i32* @KERN_INFO, align 4
  %63 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @sd_printk(i32 %62, %struct.scsi_disk* %63, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %68 = call i32 @scsi_print_command(%struct.scsi_cmnd* %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %70 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @round_up(i32 %71, i32 %72)
  %74 = call i32 @min(i32 %70, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %75, i32 %76)
  br label %78

78:                                               ; preds = %61, %53
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %84 = call i32 @scsi_command_normalize_sense(%struct.scsi_cmnd* %83, %struct.scsi_sense_hdr* %7)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @scsi_sense_is_deferred(%struct.scsi_sense_hdr* %7)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %92 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i64 @driver_byte(i32 %93)
  %95 = load i64, i64* @DRIVER_SENSE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %97
  br label %174

104:                                              ; preds = %100, %90
  %105 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %172 [
    i32 140, label %107
    i32 138, label %107
    i32 136, label %110
    i32 137, label %113
    i32 141, label %121
    i32 139, label %129
  ]

107:                                              ; preds = %104, %104
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %109 = call i32 @sd_completed_bytes(%struct.scsi_cmnd* %108)
  store i32 %109, i32* %4, align 4
  br label %173

110:                                              ; preds = %104
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %112 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %111)
  store i32 %112, i32* %4, align 4
  br label %173

113:                                              ; preds = %104
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %120 = call i32 @memset(i32 %118, i32 0, i32 %119)
  br label %173

121:                                              ; preds = %104
  %122 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 16
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %127 = call i32 @sd_completed_bytes(%struct.scsi_cmnd* %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %121
  br label %173

129:                                              ; preds = %104
  %130 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %171 [
    i32 16, label %132
    i32 32, label %135
    i32 36, label %135
  ]

132:                                              ; preds = %129
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %134 = call i32 @sd_completed_bytes(%struct.scsi_cmnd* %133)
  store i32 %134, i32* %4, align 4
  br label %171

135:                                              ; preds = %129, %129
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %170 [
    i32 130, label %141
    i32 128, label %145
    i32 129, label %145
  ]

141:                                              ; preds = %135
  %142 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %143 = load i32, i32* @SD_LBP_DISABLE, align 4
  %144 = call i32 @sd_config_discard(%struct.scsi_disk* %142, i32 %143)
  br label %170

145:                                              ; preds = %135, %135
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %147 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %155 = load i32, i32* @SD_LBP_DISABLE, align 4
  %156 = call i32 @sd_config_discard(%struct.scsi_disk* %154, i32 %155)
  br label %169

157:                                              ; preds = %145
  %158 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %159 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  %162 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %163 = call i32 @sd_config_write_same(%struct.scsi_disk* %162)
  %164 = load i32, i32* @RQF_QUIET, align 4
  %165 = load %struct.request*, %struct.request** %9, align 8
  %166 = getelementptr inbounds %struct.request, %struct.request* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %157, %153
  br label %170

170:                                              ; preds = %135, %169, %141
  br label %171

171:                                              ; preds = %170, %129, %132
  br label %173

172:                                              ; preds = %104
  br label %173

173:                                              ; preds = %172, %171, %128, %113, %110, %107
  br label %174

174:                                              ; preds = %173, %103
  %175 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %176 = call i64 @sd_is_zoned(%struct.scsi_disk* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @sd_zbc_complete(%struct.scsi_cmnd* %179, i32 %180, %struct.scsi_sense_hdr* %7)
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i32, i32* @KERN_INFO, align 4
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %187 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %186)
  %188 = call i32 @scmd_printk(i32 %183, %struct.scsi_cmnd* %184, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %185, i32 %187)
  %189 = call i32 @SCSI_LOG_HLCOMPLETE(i32 1, i32 %188)
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i32, i32) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @scsi_command_normalize_sense(%struct.scsi_cmnd*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_is_deferred(%struct.scsi_sense_hdr*) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @sd_completed_bytes(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i32) #1

declare dso_local i32 @sd_config_write_same(%struct.scsi_disk*) #1

declare dso_local i64 @sd_is_zoned(%struct.scsi_disk*) #1

declare dso_local i32 @sd_zbc_complete(%struct.scsi_cmnd*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @SCSI_LOG_HLCOMPLETE(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
