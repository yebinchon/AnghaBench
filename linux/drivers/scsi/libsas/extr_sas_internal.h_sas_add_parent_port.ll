; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_internal.h_sas_add_parent_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_internal.h_sas_add_parent_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_2__*, %struct.expander_device }
%struct.TYPE_2__ = type { i32 }
%struct.expander_device = type { i64, %struct.ex_phy* }
%struct.ex_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, i32)* @sas_add_parent_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_add_parent_port(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %8 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %7, i32 0, i32 1
  store %struct.expander_device* %8, %struct.expander_device** %5, align 8
  %9 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %10 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %9, i32 0, i32 1
  %11 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %11, i64 %13
  store %struct.ex_phy* %14, %struct.ex_phy** %6, align 8
  %15 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %16 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %2
  %20 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %21 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @sas_port_alloc(i32* %23, i32 %24)
  %26 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %27 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %29 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %36 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @sas_port_add(i64 %37)
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %41 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sas_port_mark_backlink(i64 %42)
  br label %44

44:                                               ; preds = %19, %2
  %45 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %46 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %49 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sas_port_add_phy(i64 %47, i32 %50)
  ret void
}

declare dso_local i64 @sas_port_alloc(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sas_port_add(i64) #1

declare dso_local i32 @sas_port_mark_backlink(i64) #1

declare dso_local i32 @sas_port_add_phy(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
