; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_reconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc = type { i64 }

@S3C_EDR = common dso_local global i64 0, align 8
@S3C_EIER = common dso_local global i64 0, align 8
@S3C_TR = common dso_local global i64 0, align 8
@S3C_SCR_DTZIEN_EN = common dso_local global i32 0, align 4
@S3C_SCR_RRD_EN = common dso_local global i32 0, align 4
@S3C_SCR_SUS_EN = common dso_local global i32 0, align 4
@S3C_SCR_RST_EN = common dso_local global i32 0, align 4
@S3C_SCR = common dso_local global i64 0, align 8
@S3C_EP0CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsudc*)* @s3c_hsudc_reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsudc_reconfig(%struct.s3c_hsudc* %0) #0 {
  %2 = alloca %struct.s3c_hsudc*, align 8
  store %struct.s3c_hsudc* %0, %struct.s3c_hsudc** %2, align 8
  %3 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %4 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @S3C_EDR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel(i32 170, i64 %7)
  %9 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %10 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S3C_EIER, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 1, i64 %13)
  %15 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %16 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @S3C_TR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load i32, i32* @S3C_SCR_DTZIEN_EN, align 4
  %22 = load i32, i32* @S3C_SCR_RRD_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @S3C_SCR_SUS_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S3C_SCR_RST_EN, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %29 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @S3C_SCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %35 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @S3C_EP0CR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 0, i64 %38)
  %40 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %41 = call i32 @s3c_hsudc_setup_ep(%struct.s3c_hsudc* %40)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s3c_hsudc_setup_ep(%struct.s3c_hsudc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
