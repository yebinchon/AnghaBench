; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_driver_resource_phase1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_driver_resource_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"1403 Protocols supported %s %s %s\0A\00", align 1
@LPFC_ENABLE_FCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SCSI\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"NVME\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"NVMET\00", align 1
@lpfc_mbox_timeout = common dso_local global i32 0, align 4
@lpfc_fabric_block_timeout = common dso_local global i32 0, align 4
@lpfc_poll_eratt = common dso_local global i32 0, align 4
@lpfc_hb_timeout = common dso_local global i32 0, align 4
@lpfc_hb_eq_delay_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_setup_driver_resource_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_setup_driver_resource_phase1(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %4, i32 0, i32 23
  store %struct.lpfc_sli* %5, %struct.lpfc_sli** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 22
  %8 = call i32 @atomic_set(i32* %7, i32 0)
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 21
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 20
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 19
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 18
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 17
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 16
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 15
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load i32, i32* @LOG_INIT, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 14
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %55 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %48, i8* %54)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 13
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 12
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 11
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 10
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 9
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 8
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 7
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 6
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 5
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %83, i32 0, i32 0
  %85 = load i32, i32* @lpfc_mbox_timeout, align 4
  %86 = call i32 @timer_setup(i32* %84, i32 %85, i32 0)
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 4
  %89 = load i32, i32* @lpfc_fabric_block_timeout, align 4
  %90 = call i32 @timer_setup(i32* %88, i32 %89, i32 0)
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 3
  %93 = load i32, i32* @lpfc_poll_eratt, align 4
  %94 = call i32 @timer_setup(i32* %92, i32 %93, i32 0)
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 2
  %97 = load i32, i32* @lpfc_hb_timeout, align 4
  %98 = call i32 @timer_setup(i32* %96, i32 %97, i32 0)
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 1
  %101 = load i32, i32* @lpfc_hb_eq_delay_work, align 4
  %102 = call i32 @INIT_DELAYED_WORK(i32* %100, i32 %101)
  ret i32 0
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
