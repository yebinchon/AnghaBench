; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_scmd_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_scmd_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_data_buffer }
%struct.scsi_data_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.scatterlist**, i32*, i32*, i32)* @scmd_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmd_get_params(%struct.scsi_cmnd* %0, %struct.scatterlist** %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.scatterlist**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_data_buffer*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.scatterlist** %1, %struct.scatterlist*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %16 = call %struct.scsi_data_buffer* @scsi_prot(%struct.scsi_cmnd* %15)
  br label %20

17:                                               ; preds = %5
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi %struct.scsi_data_buffer* [ %16, %14 ], [ %19, %17 ]
  store %struct.scsi_data_buffer* %21, %struct.scsi_data_buffer** %11, align 8
  %22 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %11, align 8
  %23 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %26 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  store %struct.scatterlist* %25, %struct.scatterlist** %26, align 8
  %27 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %11, align 8
  %28 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %11, align 8
  %33 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  ret void
}

declare dso_local %struct.scsi_data_buffer* @scsi_prot(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
