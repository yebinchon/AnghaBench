; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_abts_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_abts_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_ba_rjt = type { i32 }
%struct.fc_frame_header = type { i32 }

@FC_BA_RJT_LOG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*, %struct.fc_frame*)* @fc_fcp_abts_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_abts_resp(%struct.fc_fcp_pkt* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_ba_rjt*, align 8
  %7 = alloca %struct.fc_frame_header*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %9 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %8)
  store %struct.fc_frame_header* %9, %struct.fc_frame_header** %7, align 8
  %10 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %11 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %27 [
    i32 129, label %13
    i32 128, label %14
  ]

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %16 = call %struct.fc_ba_rjt* @fc_frame_payload_get(%struct.fc_frame* %15, i32 4)
  store %struct.fc_ba_rjt* %16, %struct.fc_ba_rjt** %6, align 8
  %17 = load %struct.fc_ba_rjt*, %struct.fc_ba_rjt** %6, align 8
  %18 = icmp ne %struct.fc_ba_rjt* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.fc_ba_rjt*, %struct.fc_ba_rjt** %6, align 8
  %21 = getelementptr inbounds %struct.fc_ba_rjt, %struct.fc_ba_rjt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FC_BA_RJT_LOG_ERR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19, %14
  br label %27

27:                                               ; preds = %2, %26
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %25, %13
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %33 = call i32 @fc_fcp_abort_done(%struct.fc_fcp_pkt* %32)
  br label %34

34:                                               ; preds = %31, %28
  ret void
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.fc_ba_rjt* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @fc_fcp_abort_done(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
