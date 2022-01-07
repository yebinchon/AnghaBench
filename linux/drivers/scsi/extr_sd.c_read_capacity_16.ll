; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_read_capacity_16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_read_capacity_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64, i32, i8, i32, i32, i64 }
%struct.scsi_device = type { i32, i64 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@READ_CAPACITY_RETRIES_ON_RESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SERVICE_ACTION_IN_16 = common dso_local global i8 0, align 1
@SAI_READ_CAPACITY_16 = common dso_local global i8 0, align 1
@RC16_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Read Capacity(16) failed\00", align 1
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"physical block alignment offset: %u\0A\00", align 1
@SD_LBP_WS16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, %struct.scsi_device*, i8*)* @read_capacity_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_capacity_16(%struct.scsi_disk* %0, %struct.scsi_device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.scsi_sense_hdr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %5, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 3, i32* %12, align 4
  %17 = load i32, i32* @READ_CAPACITY_RETRIES_ON_RESET, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %223

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %112, %25
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 16)
  %29 = load i8, i8* @SERVICE_ACTION_IN_16, align 1
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 %29, i8* %30, align 16
  %31 = load i8, i8* @SAI_READ_CAPACITY_16, align 1
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 1
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* @RC16_LEN, align 4
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 13
  store i8 %34, i8* %35, align 1
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @RC16_LEN, align 4
  %38 = call i32 @memset(i8* %36, i32 0, i32 %37)
  %39 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @RC16_LEN, align 4
  %44 = load i32, i32* @SD_TIMEOUT, align 4
  %45 = load i32, i32* @SD_MAX_RETRIES, align 4
  %46 = call i32 @scsi_execute_req(%struct.scsi_device* %39, i8* %40, i32 %41, i8* %42, i32 %43, %struct.scsi_sense_hdr* %9, i32 %44, i32 %45, i32* null)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %48 = call i64 @media_not_present(%struct.scsi_disk* %47, %struct.scsi_sense_hdr* %9)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %26
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %223

53:                                               ; preds = %26
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %53
  %57 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %9)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ILLEGAL_REQUEST, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 36
  br i1 %72, label %73, label %80

73:                                               ; preds = %69, %65
  %74 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %223

80:                                               ; preds = %73, %69, %60, %56
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UNIT_ATTENTION, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 41
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %13, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %106

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %92, %88, %83, %80
  br label %103

103:                                              ; preds = %102, %53
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %26, label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @sd_print_result(%struct.scsi_disk* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %122 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @read_capacity_error(%struct.scsi_disk* %121, %struct.scsi_device* %122, %struct.scsi_sense_hdr* %9, i32 %123, i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %223

128:                                              ; preds = %114
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 8
  %131 = call i32 @get_unaligned_be32(i8* %130)
  store i32 %131, i32* %16, align 4
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = call i64 @get_unaligned_be64(i8* %133)
  store i64 %134, i64* %15, align 8
  %135 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = call i64 @sd_read_protection_type(%struct.scsi_disk* %135, i8* %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %141 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @ENODEV, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %223

144:                                              ; preds = %128
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 13
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 15
  %150 = shl i32 1, %149
  %151 = load i32, i32* %16, align 4
  %152 = mul i32 %150, %151
  %153 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %154 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 12
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = ashr i32 %158, 4
  %160 = and i32 %159, 3
  %161 = trunc i32 %160 to i8
  %162 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %163 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %162, i32 0, i32 2
  store i8 %161, i8* %163, align 4
  %164 = load i8*, i8** %7, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 14
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 63
  %169 = shl i32 %168, 8
  %170 = load i8*, i8** %7, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 15
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = or i32 %169, %173
  %175 = load i32, i32* %16, align 4
  %176 = mul i32 %174, %175
  store i32 %176, i32* %14, align 4
  %177 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %178 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @blk_queue_alignment_offset(i32 %179, i32 %180)
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %144
  %185 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %186 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load i32, i32* @KERN_NOTICE, align 4
  %191 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @sd_printk(i32 %190, %struct.scsi_disk* %191, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %189, %184, %144
  %195 = load i8*, i8** %7, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 14
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = and i32 %198, 128
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %194
  %202 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %203 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %202, i32 0, i32 3
  store i32 1, i32* %203, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 14
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 64
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %201
  %211 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %212 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %211, i32 0, i32 4
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %201
  %214 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %215 = load i32, i32* @SD_LBP_WS16, align 4
  %216 = call i32 @sd_config_discard(%struct.scsi_disk* %214, i32 %215)
  br label %217

217:                                              ; preds = %213, %194
  %218 = load i64, i64* %15, align 8
  %219 = add i64 %218, 1
  %220 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %221 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %217, %139, %117, %77, %50, %22
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @media_not_present(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_print_result(%struct.scsi_disk*, i8*, i32) #1

declare dso_local i32 @read_capacity_error(%struct.scsi_disk*, %struct.scsi_device*, %struct.scsi_sense_hdr*, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i64 @get_unaligned_be64(i8*) #1

declare dso_local i64 @sd_read_protection_type(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @blk_queue_alignment_offset(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i32) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
