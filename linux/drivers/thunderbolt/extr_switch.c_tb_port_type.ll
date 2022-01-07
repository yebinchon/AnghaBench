; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_regs_port_header = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Inactive\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NHI\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Ethernet\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SATA\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"DP/HDMI\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PCIe\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tb_regs_port_header*)* @tb_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tb_port_type(%struct.tb_regs_port_header* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tb_regs_port_header*, align 8
  store %struct.tb_regs_port_header* %0, %struct.tb_regs_port_header** %3, align 8
  %4 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %3, align 8
  %5 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %6, 16
  switch i32 %7, label %21 [
    i32 0, label %8
    i32 2, label %16
    i32 8, label %17
    i32 14, label %18
    i32 16, label %19
    i32 32, label %20
  ]

8:                                                ; preds = %1
  %9 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %3, align 8
  %10 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %15 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %14
  ]

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %22

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %22

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %22

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %22

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %22

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %22

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %22

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %22

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %22

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
