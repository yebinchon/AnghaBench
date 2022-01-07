; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_ioaccel_direct_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_ioaccel_direct_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.hpsa_scsi_dev_t*, %struct.scsi_cmnd* }
%struct.hpsa_scsi_dev_t = type { i32, i32, i64 }
%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hpsa_scsi_dev_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_scsi_ioaccel_direct_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_ioaccel_direct_map(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList* %1, %struct.CommandList** %5, align 8
  %8 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %9 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %8, i32 0, i32 1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %14, align 8
  store %struct.hpsa_scsi_dev_t* %15, %struct.hpsa_scsi_dev_t** %7, align 8
  %16 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %17 = icmp ne %struct.hpsa_scsi_dev_t* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %21 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %22 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %21, i32 0, i32 0
  store %struct.hpsa_scsi_dev_t* %20, %struct.hpsa_scsi_dev_t** %22, align 8
  %23 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %24 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %45

28:                                               ; preds = %19
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %30 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %32 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %44 = call i32 @hpsa_scsi_ioaccel_queue_command(%struct.ctlr_info* %29, %struct.CommandList* %30, i32 %33, i32 %36, i32 %39, i32 %42, %struct.hpsa_scsi_dev_t* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %28, %27, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @hpsa_scsi_ioaccel_queue_command(%struct.ctlr_info*, %struct.CommandList*, i32, i32, i32, i32, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
