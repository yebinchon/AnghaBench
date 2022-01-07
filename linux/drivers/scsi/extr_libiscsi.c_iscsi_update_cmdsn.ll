; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_update_cmdsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_update_cmdsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.iscsi_nopin = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_update_cmdsn(%struct.iscsi_session* %0, %struct.iscsi_nopin* %1) #0 {
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_nopin*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  store %struct.iscsi_nopin* %1, %struct.iscsi_nopin** %4, align 8
  %5 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %6 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %4, align 8
  %7 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @be32_to_cpu(i32 %8)
  %10 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be32_to_cpu(i32 %12)
  %14 = call i32 @__iscsi_update_cmdsn(%struct.iscsi_session* %5, i32 %9, i32 %13)
  ret void
}

declare dso_local i32 @__iscsi_update_cmdsn(%struct.iscsi_session*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
