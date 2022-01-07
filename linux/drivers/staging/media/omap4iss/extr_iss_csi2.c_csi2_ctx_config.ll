; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_ctx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_ctx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32 }
%struct.iss_csi2_ctx_cfg = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@CSI2_CTX_CTRL1_EOF_EN = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL1_EOL_EN = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL1_CS_EN = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL2_FORMAT_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL2_DPCM_PRED = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL3_ALPHA_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTX_DAT_OFST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, %struct.iss_csi2_ctx_cfg*)* @csi2_ctx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_ctx_config(%struct.iss_csi2_device* %0, %struct.iss_csi2_ctx_cfg* %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca %struct.iss_csi2_ctx_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store %struct.iss_csi2_ctx_cfg* %1, %struct.iss_csi2_ctx_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %7 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %6, i32 0, i32 12
  store i64 0, i64* %7, align 8
  %8 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CSI2_CTX_CTRL1_EOF_EN, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @CSI2_CTX_CTRL1_EOL_EN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @CSI2_CTX_CTRL1_CS_EN, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %34 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %37 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CSI2_CTX_CTRL1(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @iss_reg_write(i32 %35, i32 %38, i32 %42, i32 %43)
  %45 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %46 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT, align 4
  %49 = shl i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CSI2_CTX_CTRL2_FORMAT_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %58 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %32
  %62 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %63 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @CSI2_CTX_CTRL2_DPCM_PRED, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %61, %32
  %71 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @is_usr_def_mapping(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @CSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT, align 4
  %78 = shl i32 2, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %70
  %82 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %83 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %86 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %89 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CSI2_CTX_CTRL2(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @iss_reg_write(i32 %84, i32 %87, i32 %91, i32 %92)
  %94 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %95 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %98 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %101 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @CSI2_CTX_CTRL3(i32 %102)
  %104 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %105 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CSI2_CTX_CTRL3_ALPHA_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = call i32 @iss_reg_write(i32 %96, i32 %99, i32 %103, i32 %108)
  %110 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %111 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %114 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %117 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @CSI2_CTX_DAT_OFST(i32 %118)
  %120 = load i32, i32* @CSI2_CTX_DAT_OFST_MASK, align 4
  %121 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %122 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @iss_reg_update(i32 %112, i32 %115, i32 %119, i32 %120, i32 %123)
  %125 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %126 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %129 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %132 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @CSI2_CTX_PING_ADDR(i32 %133)
  %135 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %136 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @iss_reg_write(i32 %127, i32 %130, i32 %134, i32 %137)
  %139 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %140 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %143 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %146 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @CSI2_CTX_PONG_ADDR(i32 %147)
  %149 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %150 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @iss_reg_write(i32 %141, i32 %144, i32 %148, i32 %151)
  ret void
}

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

declare dso_local i32 @CSI2_CTX_CTRL1(i32) #1

declare dso_local i64 @is_usr_def_mapping(i32) #1

declare dso_local i32 @CSI2_CTX_CTRL2(i32) #1

declare dso_local i32 @CSI2_CTX_CTRL3(i32) #1

declare dso_local i32 @iss_reg_update(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CSI2_CTX_DAT_OFST(i32) #1

declare dso_local i32 @CSI2_CTX_PING_ADDR(i32) #1

declare dso_local i32 @CSI2_CTX_PONG_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
