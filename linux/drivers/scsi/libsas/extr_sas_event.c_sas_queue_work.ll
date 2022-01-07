; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_event.c_sas_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_event.c_sas_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, i32, i32 }
%struct.sas_work = type { i32, i32 }

@SAS_HA_REGISTERED = common dso_local global i32 0, align 4
@SAS_HA_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_queue_work(%struct.sas_ha_struct* %0, %struct.sas_work* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.sas_work*, align 8
  %6 = alloca i32, align 4
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %4, align 8
  store %struct.sas_work* %1, %struct.sas_work** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* @SAS_HA_REGISTERED, align 4
  %8 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %9 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %8, i32 0, i32 2
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* @SAS_HA_DRAINING, align 4
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %16 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.sas_work*, %struct.sas_work** %5, align 8
  %21 = getelementptr inbounds %struct.sas_work, %struct.sas_work* %20, i32 0, i32 1
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.sas_work*, %struct.sas_work** %5, align 8
  %26 = getelementptr inbounds %struct.sas_work, %struct.sas_work* %25, i32 0, i32 1
  %27 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %28 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %27, i32 0, i32 1
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  br label %30

30:                                               ; preds = %24, %19
  br label %38

31:                                               ; preds = %13
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %33 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sas_work*, %struct.sas_work** %5, align 8
  %36 = getelementptr inbounds %struct.sas_work, %struct.sas_work* %35, i32 0, i32 0
  %37 = call i32 @queue_work(i32 %34, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
