; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_srr_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_srr_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_fcp_pkt = type { i32 }
%struct.fc_frame_header = type { i64 }

@FC_TYPE_BLS = common dso_local global i64 0, align 8
@FC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_fcp_srr_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_srr_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_fcp_pkt*, align 8
  %8 = alloca %struct.fc_frame_header*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.fc_fcp_pkt*
  store %struct.fc_fcp_pkt* %10, %struct.fc_fcp_pkt** %7, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %12 = call i64 @IS_ERR(%struct.fc_frame* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %16 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %17 = call i32 @fc_fcp_srr_error(%struct.fc_fcp_pkt* %15, %struct.fc_frame* %16)
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %20 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %52

23:                                               ; preds = %18
  %24 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %25 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %24)
  store %struct.fc_frame_header* %25, %struct.fc_frame_header** %8, align 8
  %26 = load %struct.fc_frame_header*, %struct.fc_frame_header** %8, align 8
  %27 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FC_TYPE_BLS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %33 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %32)
  br label %57

34:                                               ; preds = %23
  %35 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %36 = call i32 @fc_frame_payload_op(%struct.fc_frame* %35)
  switch i32 %36, label %45 [
    i32 129, label %37
    i32 128, label %44
  ]

37:                                               ; preds = %34
  %38 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %39 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %41 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %42 = call i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt* %41)
  %43 = call i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt* %40, i32 %42)
  br label %49

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %34, %44
  %46 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %47 = load i32, i32* @FC_ERROR, align 4
  %48 = call i32 @fc_fcp_recovery(%struct.fc_fcp_pkt* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %51 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %50)
  br label %52

52:                                               ; preds = %49, %22
  %53 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %54 = call i32 @fc_exch_done(%struct.fc_seq* %53)
  %55 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %56 = call i32 @fc_frame_free(%struct.fc_frame* %55)
  br label %57

57:                                               ; preds = %52, %31, %14
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_srr_error(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_recovery(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @fc_exch_done(%struct.fc_seq*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
