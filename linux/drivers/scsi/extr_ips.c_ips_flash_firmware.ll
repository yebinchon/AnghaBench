; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_flash_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_flash_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_30__*, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i64, i8*, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, i64, i64, %struct.TYPE_25__, i32, i64, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_32__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i8*, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@IPS_FW_IMAGE = common dso_local global i64 0, align 8
@IPS_WRITE_FW = common dso_local global i64 0, align 8
@IPS_CMD_DOWNLOAD = common dso_local global i32 0, align 4
@IPS_FAILURE = common dso_local global i32 0, align 4
@ipsintr_done = common dso_local global i32 0, align 4
@ips_cmd_timeout = common dso_local global i64 0, align 8
@IPS_SCB_MAP_SINGLE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@IPS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_34__*, %struct.TYPE_33__*)* @ips_flash_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_flash_firmware(%struct.TYPE_22__* %0, %struct.TYPE_34__* %1, %struct.TYPE_33__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_23__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %7, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPS_FW_IMAGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IPS_WRITE_FW, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %18
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = call i32 @memset(%struct.TYPE_24__* %30, i32 0, i32 4)
  %32 = load i32, i32* @IPS_CMD_DOWNLOAD, align 4
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 3
  store i32 %32, i32* %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 2
  store i8* %41, i8** %46, align 8
  br label %55

47:                                               ; preds = %18, %3
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  store i32 11, i32* %49, align 8
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = call i32 @ips_free_flash_copperhead(%struct.TYPE_22__* %52)
  %54 = load i32, i32* @IPS_FAILURE, align 4
  store i32 %54, i32* %4, align 4
  br label %177

55:                                               ; preds = %27
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 13
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = call i32 @memcpy(%struct.TYPE_25__* %65, %struct.TYPE_24__* %68, i32 4)
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 13
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 8
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 4
  store i32 0, i32* %110, align 8
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @ipsintr_done, align 4
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* @ips_cmd_timeout, align 8
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 5
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %135 = call i32 @IPS_DMA_DIR(%struct.TYPE_33__* %134)
  %136 = call i64 @dma_map_single(i32* %127, i32 %130, i64 %133, i32 %135)
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* @IPS_SCB_MAP_SINGLE, align 4
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %146 = call i32 @IPS_COMMAND_ID(%struct.TYPE_22__* %144, %struct.TYPE_33__* %145)
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 8
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @cpu_to_le32(i64 %153)
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 0
  store i8* %154, i8** %158, align 8
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %55
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %55
  %170 = load i32, i32* @DID_OK, align 4
  %171 = shl i32 %170, 16
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 8
  %176 = load i32, i32* @IPS_SUCCESS, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %169, %47
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @ips_free_flash_copperhead(%struct.TYPE_22__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i64, i32) #1

declare dso_local i32 @IPS_DMA_DIR(%struct.TYPE_33__*) #1

declare dso_local i32 @IPS_COMMAND_ID(%struct.TYPE_22__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
