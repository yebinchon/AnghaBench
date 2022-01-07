; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_finish_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_finish_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsifrnt_info = type { i32 }
%struct.vscsiif_response = type { i32, i32, i64, i64 }

@VSCSIIF_MAX_REQS = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsifrnt_info*)* @scsifront_finish_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsifront_finish_all(%struct.vscsifrnt_info* %0) #0 {
  %2 = alloca %struct.vscsifrnt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vscsiif_response, align 8
  store %struct.vscsifrnt_info* %0, %struct.vscsifrnt_info** %2, align 8
  %5 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %2, align 8
  %6 = call i32 @scsifront_ring_drain(%struct.vscsifrnt_info* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VSCSIIF_MAX_REQS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %2, align 8
  %14 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %29

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %4, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @DID_RESET, align 4
  %24 = shl i32 %23, 16
  %25 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %4, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %4, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %2, align 8
  %28 = call i32 @scsifront_do_response(%struct.vscsifrnt_info* %27, %struct.vscsiif_response* %4)
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  ret void
}

declare dso_local i32 @scsifront_ring_drain(%struct.vscsifrnt_info*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @scsifront_do_response(%struct.vscsifrnt_info*, %struct.vscsiif_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
