; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_DAC960_PG_write_cmd_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_DAC960_PG_write_cmd_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.myrb_cmd_mbox = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.myrb_cmd_mbox*, %union.myrb_cmd_mbox*)* @DAC960_PG_write_cmd_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_PG_write_cmd_mbox(%union.myrb_cmd_mbox* %0, %union.myrb_cmd_mbox* %1) #0 {
  %3 = alloca %union.myrb_cmd_mbox*, align 8
  %4 = alloca %union.myrb_cmd_mbox*, align 8
  store %union.myrb_cmd_mbox* %0, %union.myrb_cmd_mbox** %3, align 8
  store %union.myrb_cmd_mbox* %1, %union.myrb_cmd_mbox** %4, align 8
  %5 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %4, align 8
  %6 = bitcast %union.myrb_cmd_mbox* %5 to i32**
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %3, align 8
  %11 = bitcast %union.myrb_cmd_mbox* %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %9, i32* %13, align 4
  %14 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %4, align 8
  %15 = bitcast %union.myrb_cmd_mbox* %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %3, align 8
  %20 = bitcast %union.myrb_cmd_mbox* %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %18, i32* %22, align 4
  %23 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %4, align 8
  %24 = bitcast %union.myrb_cmd_mbox* %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %3, align 8
  %29 = bitcast %union.myrb_cmd_mbox* %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %27, i32* %31, align 4
  %32 = call i32 (...) @wmb()
  %33 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %4, align 8
  %34 = bitcast %union.myrb_cmd_mbox* %33 to i32**
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %3, align 8
  %39 = bitcast %union.myrb_cmd_mbox* %38 to i32**
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
