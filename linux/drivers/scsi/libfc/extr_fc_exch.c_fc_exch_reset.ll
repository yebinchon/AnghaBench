; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i32, %struct.fc_seq, i32, i32 }
%struct.fc_seq = type { i32 }

@FC_EX_RST_CLEANUP = common dso_local global i32 0, align 4
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*)* @fc_exch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_reset(%struct.fc_exch* %0) #0 {
  %2 = alloca %struct.fc_exch*, align 8
  %3 = alloca %struct.fc_seq*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %6 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load i32, i32* @FC_EX_RST_CLEANUP, align 4
  %9 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %10 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %14 = call i32 @fc_exch_timer_cancel(%struct.fc_exch* %13)
  %15 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %16 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %23 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %22, i32 0, i32 4
  %24 = call i32 @atomic_dec(i32* %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %29 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %33 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %32, i32 0, i32 3
  store %struct.fc_seq* %33, %struct.fc_seq** %3, align 8
  %34 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %35 = call i32 @fc_exch_done_locked(%struct.fc_exch* %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %37 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %40 = call i32 @fc_exch_hold(%struct.fc_exch* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  %44 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %45 = call i32 @fc_exch_delete(%struct.fc_exch* %44)
  br label %46

46:                                               ; preds = %43, %25
  %47 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %48 = load %struct.fc_seq*, %struct.fc_seq** %3, align 8
  %49 = load i32, i32* @FC_EX_CLOSED, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @ERR_PTR(i32 %50)
  %52 = call i32 @fc_invoke_resp(%struct.fc_exch* %47, %struct.fc_seq* %48, i32 %51)
  %53 = load %struct.fc_seq*, %struct.fc_seq** %3, align 8
  %54 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %55 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fc_seq_set_resp(%struct.fc_seq* %53, i32* null, i32 %56)
  %58 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %59 = call i32 @fc_exch_release(%struct.fc_exch* %58)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fc_exch_timer_cancel(%struct.fc_exch*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @fc_exch_done_locked(%struct.fc_exch*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @fc_exch_delete(%struct.fc_exch*) #1

declare dso_local i32 @fc_invoke_resp(%struct.fc_exch*, %struct.fc_seq*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @fc_seq_set_resp(%struct.fc_seq*, i32*, i32) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
