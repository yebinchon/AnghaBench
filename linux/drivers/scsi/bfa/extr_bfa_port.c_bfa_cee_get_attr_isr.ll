; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_get_attr_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_get_attr_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee_s = type { %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { i32, i32 (i32, i64)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.bfa_cee_lldp_cfg_s }
%struct.bfa_cee_lldp_cfg_s = type { i8*, i8* }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_cee_s*, i64)* @bfa_cee_get_attr_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_cee_get_attr_isr(%struct.bfa_cee_s* %0, i64 %1) #0 {
  %3 = alloca %struct.bfa_cee_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfa_cee_lldp_cfg_s*, align 8
  store %struct.bfa_cee_s* %0, %struct.bfa_cee_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.bfa_cee_lldp_cfg_s* %9, %struct.bfa_cee_lldp_cfg_s** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %11, i32 0, i32 4
  store i64 %10, i64* %12, align 8
  %13 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %14 = call i32 @bfa_trc(%struct.bfa_cee_s* %13, i32 0)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @BFA_STATUS_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %20 = call i32 @bfa_trc(%struct.bfa_cee_s* %19, i32 0)
  %21 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(%struct.TYPE_6__* %23, i32 %27, i32 4)
  %29 = load %struct.bfa_cee_lldp_cfg_s*, %struct.bfa_cee_lldp_cfg_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_cee_lldp_cfg_s, %struct.bfa_cee_lldp_cfg_s* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @be16_to_cpu(i8* %31)
  %33 = load %struct.bfa_cee_lldp_cfg_s*, %struct.bfa_cee_lldp_cfg_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_cee_lldp_cfg_s, %struct.bfa_cee_lldp_cfg_s* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bfa_cee_lldp_cfg_s*, %struct.bfa_cee_lldp_cfg_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_cee_lldp_cfg_s, %struct.bfa_cee_lldp_cfg_s* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @be16_to_cpu(i8* %37)
  %39 = load %struct.bfa_cee_lldp_cfg_s*, %struct.bfa_cee_lldp_cfg_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_cee_lldp_cfg_s, %struct.bfa_cee_lldp_cfg_s* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %18, %2
  %42 = load i32, i32* @BFA_FALSE, align 4
  %43 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32 (i32, i64)*, i32 (i32, i64)** %47, align 8
  %49 = icmp ne i32 (i32, i64)* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %52 = call i32 @bfa_trc(%struct.bfa_cee_s* %51, i32 0)
  %53 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32 (i32, i64)*, i32 (i32, i64)** %55, align 8
  %57 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 %56(i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %50, %41
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_cee_s*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @be16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
