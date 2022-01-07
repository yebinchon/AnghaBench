; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_exch_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_exch_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_exch = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_seq_exch_abort(%struct.fc_seq* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_seq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_exch*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fc_seq*, %struct.fc_seq** %3, align 8
  %8 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %7)
  store %struct.fc_exch* %8, %struct.fc_exch** %5, align 8
  %9 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %10 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @fc_exch_abort_locked(%struct.fc_exch* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %16 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock_bh(i32* %16)
  %18 = load i32, i32* %6, align 4
  ret i32 %18
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fc_exch_abort_locked(%struct.fc_exch*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
