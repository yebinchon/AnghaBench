; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.h_bfad_im_post_vendor_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.h_bfad_im_post_vendor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_aen_entry_s = type { i32, i32, i32, i32, i32, i32 }
%struct.bfad_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec64 = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@BFAD_FC4_PROBE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32)* @bfad_im_post_vendor_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %0, %struct.bfad_s* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bfa_aen_entry_s*, align 8
  %7 = alloca %struct.bfad_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec64, align 4
  store %struct.bfa_aen_entry_s* %0, %struct.bfa_aen_entry_s** %6, align 8
  store %struct.bfad_s* %1, %struct.bfad_s** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @ktime_get_real_ts64(%struct.timespec64* %11)
  %13 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NSEC_PER_USEC, align 4
  %20 = sdiv i32 %18, %19
  %21 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %22 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %24 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %27 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %30 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %33 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %38 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BFAD_FC4_PROBE_DONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %5
  %44 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %50 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @queue_work(i32 %48, i32* %52)
  br label %54

54:                                               ; preds = %43, %5
  ret void
}

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
