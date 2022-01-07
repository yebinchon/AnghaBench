; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_revalidate_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_revalidate_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.expander_device }
%struct.expander_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_ex_revalidate_domain(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  store %struct.domain_device* null, %struct.domain_device** %4, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %9 = call i32 @sas_find_bcast_dev(%struct.domain_device* %8, %struct.domain_device** %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %14 = icmp ne %struct.domain_device* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 0
  store %struct.expander_device* %17, %struct.expander_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %31, %15
  store i32 -1, i32* %7, align 4
  %19 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sas_find_bcast_phy(%struct.domain_device* %19, i32* %7, i32 %20, i32 1)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %37

25:                                               ; preds = %18
  %26 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sas_rediscover(%struct.domain_device* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %34 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %18, label %37

37:                                               ; preds = %31, %24
  br label %38

38:                                               ; preds = %37, %12, %1
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @sas_find_bcast_dev(%struct.domain_device*, %struct.domain_device**) #1

declare dso_local i32 @sas_find_bcast_phy(%struct.domain_device*, i32*, i32, i32) #1

declare dso_local i32 @sas_rediscover(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
