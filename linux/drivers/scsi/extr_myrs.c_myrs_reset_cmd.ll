; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_reset_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_reset_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_cmdblk = type { i64, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_cmdblk*)* @myrs_reset_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_reset_cmd(%struct.myrs_cmdblk* %0) #0 {
  %2 = alloca %struct.myrs_cmdblk*, align 8
  %3 = alloca %union.myrs_cmd_mbox*, align 8
  store %struct.myrs_cmdblk* %0, %struct.myrs_cmdblk** %2, align 8
  %4 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %2, align 8
  %5 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %4, i32 0, i32 1
  store %union.myrs_cmd_mbox* %5, %union.myrs_cmd_mbox** %3, align 8
  %6 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %3, align 8
  %7 = call i32 @memset(%union.myrs_cmd_mbox* %6, i32 0, i32 4)
  %8 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %2, align 8
  %9 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  ret void
}

declare dso_local i32 @memset(%union.myrs_cmd_mbox*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
