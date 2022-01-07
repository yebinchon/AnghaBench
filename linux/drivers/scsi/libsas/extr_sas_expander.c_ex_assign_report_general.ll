; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_ex_assign_report_general.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_ex_assign_report_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.smp_resp = type { %struct.report_general_resp }
%struct.report_general_resp = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX_EXPANDER_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, %struct.smp_resp*)* @ex_assign_report_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ex_assign_report_general(%struct.domain_device* %0, %struct.smp_resp* %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.smp_resp*, align 8
  %5 = alloca %struct.report_general_resp*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store %struct.smp_resp* %1, %struct.smp_resp** %4, align 8
  %6 = load %struct.smp_resp*, %struct.smp_resp** %4, align 8
  %7 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %6, i32 0, i32 0
  store %struct.report_general_resp* %7, %struct.report_general_resp** %5, align 8
  %8 = load %struct.report_general_resp*, %struct.report_general_resp** %5, align 8
  %9 = getelementptr inbounds %struct.report_general_resp, %struct.report_general_resp* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @be16_to_cpu(i32 %10)
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  store i8* %11, i8** %14, align 8
  %15 = load %struct.report_general_resp*, %struct.report_general_resp** %5, align 8
  %16 = getelementptr inbounds %struct.report_general_resp, %struct.report_general_resp* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @be16_to_cpu(i32 %17)
  %19 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i8* %18, i8** %21, align 8
  %22 = load %struct.report_general_resp*, %struct.report_general_resp** %5, align 8
  %23 = getelementptr inbounds %struct.report_general_resp, %struct.report_general_resp* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @MAX_EXPANDER_PHYS, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @min(i32 %24, i32 %26)
  %28 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 8
  %31 = load %struct.report_general_resp*, %struct.report_general_resp** %5, align 8
  %32 = getelementptr inbounds %struct.report_general_resp, %struct.report_general_resp* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %35 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load %struct.report_general_resp*, %struct.report_general_resp** %5, align 8
  %38 = getelementptr inbounds %struct.report_general_resp, %struct.report_general_resp* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %41 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.report_general_resp*, %struct.report_general_resp** %5, align 8
  %44 = getelementptr inbounds %struct.report_general_resp, %struct.report_general_resp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %47 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %50 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.report_general_resp*, %struct.report_general_resp** %5, align 8
  %54 = getelementptr inbounds %struct.report_general_resp, %struct.report_general_resp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %52, i32 %55, i32 8)
  ret void
}

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
