; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_update_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_update_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)* }
%struct.pm8001_hba_info = type { i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.pm8001_ioctl_payload = type { i32, i32, i64 }
%struct.fw_control_info = type { i32, i32, i64, i32, i64 }
%struct.pm8001_fw_image_header = type { i32 }

@completion = common dso_local global i32 0, align 4
@FAIL_FILE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FAIL_OUT_MEMORY = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HEADER_LEN = common dso_local global i32 0, align 4
@IOCTL_BUF_SIZE = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@FLASH_UPDATE_IN_PROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_update_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_update_flash(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.pm8001_ioctl_payload*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fw_control_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pm8001_fw_image_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %15 = load i32, i32* @completion, align 4
  %16 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %15)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 16399, i32* %14, align 4
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 28
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i64, i64* @FAIL_FILE_SIZE, align 8
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %205

29:                                               ; preds = %1
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kzalloc(i32 %30, i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** @FAIL_OUT_MEMORY, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %39 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %205

42:                                               ; preds = %29
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %44 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.pm8001_fw_image_header*
  store %struct.pm8001_fw_image_header* %48, %struct.pm8001_fw_image_header** %11, align 8
  br label %49

49:                                               ; preds = %199, %42
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %52 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %200

57:                                               ; preds = %49
  %58 = load %struct.pm8001_fw_image_header*, %struct.pm8001_fw_image_header** %11, align 8
  %59 = getelementptr inbounds %struct.pm8001_fw_image_header, %struct.pm8001_fw_image_header* %58, i32 0, i32 0
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @HEADER_LEN, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %70 = call i32 @DIV_ROUND_UP(i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %196, %57
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %199

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = bitcast i32* %76 to %struct.pm8001_ioctl_payload*
  store %struct.pm8001_ioctl_payload* %77, %struct.pm8001_ioctl_payload** %4, align 8
  %78 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %79 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %78, i32 0, i32 0
  store i32 16384, i32* %79, align 8
  %80 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %81 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %83 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %82, i32 0, i32 1
  %84 = bitcast i32* %83 to %struct.fw_control_info*
  store %struct.fw_control_info* %84, %struct.fw_control_info** %6, align 8
  %85 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %86 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %87 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @HEADER_LEN, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %92 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %94 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %99 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %100, %101
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %145

104:                                              ; preds = %75
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @HEADER_LEN, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %109 = srem i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %145

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @HEADER_LEN, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %116 = srem i32 %114, %115
  %117 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %118 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %120 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %124 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @HEADER_LEN, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %136 = srem i32 %134, %135
  %137 = call i32 @memcpy(i32* %122, i32* %131, i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @HEADER_LEN, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %142 = srem i32 %140, %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %164

145:                                              ; preds = %104, %75
  %146 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %147 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %151 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %160 = call i32 @memcpy(i32* %149, i32* %158, i32 %159)
  %161 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %145, %111
  %165 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %166 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %165, i32 0, i32 1
  store i32* @completion, i32** %166, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)** %168, align 8
  %170 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %171 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %172 = call i32 %169(%struct.pm8001_hba_info* %170, %struct.pm8001_ioctl_payload* %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %164
  %176 = load i8*, i8** @FAIL_OUT_MEMORY, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %179 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %201

180:                                              ; preds = %164
  %181 = call i32 @wait_for_completion(i32* @completion)
  %182 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %183 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @FLASH_UPDATE_IN_PROGRESS, align 8
  %186 = icmp sgt i64 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %180
  %188 = load %struct.fw_control_info*, %struct.fw_control_info** %6, align 8
  %189 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %192 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load i32, i32* @EFAULT, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %13, align 4
  br label %201

195:                                              ; preds = %180
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %71

199:                                              ; preds = %71
  br label %49

200:                                              ; preds = %49
  br label %201

201:                                              ; preds = %200, %187, %175
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @kfree(i32* %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %201, %35, %23
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
