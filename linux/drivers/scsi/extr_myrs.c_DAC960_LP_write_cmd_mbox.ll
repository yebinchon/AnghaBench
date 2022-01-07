; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_DAC960_LP_write_cmd_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_DAC960_LP_write_cmd_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.myrs_cmd_mbox = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.myrs_cmd_mbox*, %union.myrs_cmd_mbox*)* @DAC960_LP_write_cmd_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_LP_write_cmd_mbox(%union.myrs_cmd_mbox* %0, %union.myrs_cmd_mbox* %1) #0 {
  %3 = alloca %union.myrs_cmd_mbox*, align 8
  %4 = alloca %union.myrs_cmd_mbox*, align 8
  store %union.myrs_cmd_mbox* %0, %union.myrs_cmd_mbox** %3, align 8
  store %union.myrs_cmd_mbox* %1, %union.myrs_cmd_mbox** %4, align 8
  %5 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %3, align 8
  %6 = bitcast %union.myrs_cmd_mbox* %5 to i32**
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %10 = bitcast %union.myrs_cmd_mbox* %9 to i32**
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = call i32 @memcpy(i32* %8, i32* %12, i32 4)
  %14 = call i32 (...) @wmb()
  %15 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %16 = bitcast %union.myrs_cmd_mbox* %15 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %3, align 8
  %21 = bitcast %union.myrs_cmd_mbox* %20 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
