; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch_mgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_frame = type { i32 }
%struct.fc_seq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch_mgr*, %struct.fc_frame*)* @fc_exch_recv_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_recv_resp(%struct.fc_exch_mgr* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_exch_mgr*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_seq*, align 8
  store %struct.fc_exch_mgr* %0, %struct.fc_exch_mgr** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %6 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %7 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %8 = call %struct.fc_seq* @fc_seq_lookup_orig(%struct.fc_exch_mgr* %6, %struct.fc_frame* %7)
  store %struct.fc_seq* %8, %struct.fc_seq** %5, align 8
  %9 = load %struct.fc_seq*, %struct.fc_seq** %5, align 8
  %10 = icmp ne %struct.fc_seq* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @atomic_inc(i32* %14)
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @atomic_inc(i32* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %23 = call i32 @fc_frame_free(%struct.fc_frame* %22)
  ret void
}

declare dso_local %struct.fc_seq* @fc_seq_lookup_orig(%struct.fc_exch_mgr*, %struct.fc_frame*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
