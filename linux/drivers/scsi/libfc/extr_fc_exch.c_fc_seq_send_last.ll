; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_send_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_send_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_exch = type { i32, i32, i32, i32 }

@FC_FC_LAST_SEQ = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i32, i32)* @fc_seq_send_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_seq_send_last(%struct.fc_seq* %0, %struct.fc_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fc_seq*, align 8
  %6 = alloca %struct.fc_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fc_exch*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %5, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.fc_seq*, %struct.fc_seq** %5, align 8
  %12 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %11)
  store %struct.fc_exch* %12, %struct.fc_exch** %10, align 8
  %13 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %14 = load i32, i32* @FC_FC_END_SEQ, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %19 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %26 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %29 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @fc_fill_fc_hdr(%struct.fc_frame* %23, i32 %24, i32 %27, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %35 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fc_seq*, %struct.fc_seq** %5, align 8
  %38 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %39 = call i32 @fc_seq_send_locked(i32 %36, %struct.fc_seq* %37, %struct.fc_frame* %38)
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fc_seq_send_locked(i32, %struct.fc_seq*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
