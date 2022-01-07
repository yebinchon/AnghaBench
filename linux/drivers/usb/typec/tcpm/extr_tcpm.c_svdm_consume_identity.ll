; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_svdm_consume_identity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_svdm_consume_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i8* }

@VDO_INDEX_IDH = common dso_local global i64 0, align 8
@VDO_INDEX_PRODUCT = common dso_local global i64 0, align 8
@VDO_INDEX_CSTAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Identity: %04x:%04x.%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, i32*, i32)* @svdm_consume_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svdm_consume_identity(%struct.tcpm_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* @VDO_INDEX_IDH, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le32_to_cpu(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* @VDO_INDEX_PRODUCT, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @le32_to_cpu(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 2
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %26 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @VDO_INDEX_CSTAT, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le32_to_cpu(i32 %31)
  %33 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %34 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %38 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %41 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @typec_partner_set_identity(i32 %42)
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @PD_IDH_VID(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @PD_PRODUCT_PID(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 65535
  %51 = call i32 @tcpm_log(%struct.tcpm_port* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48, i32 %50)
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @typec_partner_set_identity(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32, i32, i32) #1

declare dso_local i32 @PD_IDH_VID(i32) #1

declare dso_local i32 @PD_PRODUCT_PID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
