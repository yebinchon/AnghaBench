; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.fc_disc }
%struct.fc_disc = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_disc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_stop(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_disc*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %4, i32 0, i32 0
  store %struct.fc_disc* %5, %struct.fc_disc** %3, align 8
  %6 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %7 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %12 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %11, i32 0, i32 1
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %16 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %19 = call i32 @fc_disc_stop_rports(%struct.fc_disc* %18)
  %20 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %21 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_disc_stop_rports(%struct.fc_disc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
