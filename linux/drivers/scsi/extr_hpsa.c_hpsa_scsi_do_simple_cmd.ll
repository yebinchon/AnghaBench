; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_simple_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_simple_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD_CTLR_LOCKUP = common dso_local global i32 0, align 4
@IO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, i32, i64)* @hpsa_scsi_do_simple_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_do_simple_cmd(%struct.ctlr_info* %0, %struct.CommandList* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.CommandList* %1, %struct.CommandList** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %11 = call i32 @lockup_detected(%struct.ctlr_info* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32, i32* @CMD_CTLR_LOCKUP, align 4
  %16 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %17 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @IO_OK, align 4
  store i32 %20, i32* %5, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %23 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info* %22, %struct.CommandList* %23, i32 %24, i64 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lockup_detected(%struct.ctlr_info*) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info*, %struct.CommandList*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
