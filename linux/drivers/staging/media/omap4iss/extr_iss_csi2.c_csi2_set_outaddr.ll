; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_set_outaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_set_outaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32, %struct.iss_csi2_ctx_cfg* }
%struct.iss_csi2_ctx_cfg = type { i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, i8*)* @csi2_set_outaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_set_outaddr(%struct.iss_csi2_device* %0, i8* %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iss_csi2_ctx_cfg*, align 8
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %7 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %6, i32 0, i32 2
  %8 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %7, align 8
  %9 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %8, i64 0
  store %struct.iss_csi2_ctx_cfg* %9, %struct.iss_csi2_ctx_cfg** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %17 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %20 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CSI2_CTX_PING_ADDR(i32 %24)
  %26 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @iss_reg_write(i32 %18, i32 %21, i32 %25, i8* %28)
  %30 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %31 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %34 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @CSI2_CTX_PONG_ADDR(i32 %38)
  %40 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @iss_reg_write(i32 %32, i32 %35, i32 %39, i8* %42)
  ret void
}

declare dso_local i32 @iss_reg_write(i32, i32, i32, i8*) #1

declare dso_local i32 @CSI2_CTX_PING_ADDR(i32) #1

declare dso_local i32 @CSI2_CTX_PONG_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
