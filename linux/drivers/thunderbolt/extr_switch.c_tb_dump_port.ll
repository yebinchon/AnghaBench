; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dump_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_dump_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_regs_port_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c" Port %d: %x:%x (Revision: %d, TB Version: %d, Type: %s (%#x))\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"  Max hop id (in/out): %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"  Max counters: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"  NFC Credits: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.tb_regs_port_header*)* @tb_dump_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_dump_port(%struct.tb* %0, %struct.tb_regs_port_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.tb_regs_port_header*, align 8
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.tb_regs_port_header* %1, %struct.tb_regs_port_header** %4, align 8
  %5 = load %struct.tb*, %struct.tb** %3, align 8
  %6 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %7 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %10 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %13 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %16 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %19 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %22 = call i32 @tb_port_type(%struct.tb_regs_port_header* %21)
  %23 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %24 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.tb*, i8*, i32, ...) @tb_dbg(%struct.tb* %5, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %22, i32 %25)
  %27 = load %struct.tb*, %struct.tb** %3, align 8
  %28 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %29 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %32 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.tb*, i8*, i32, ...) @tb_dbg(%struct.tb* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.tb*, %struct.tb** %3, align 8
  %36 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %37 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.tb*, i8*, i32, ...) @tb_dbg(%struct.tb* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.tb*, %struct.tb** %3, align 8
  %41 = load %struct.tb_regs_port_header*, %struct.tb_regs_port_header** %4, align 8
  %42 = getelementptr inbounds %struct.tb_regs_port_header, %struct.tb_regs_port_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.tb*, i8*, i32, ...) @tb_dbg(%struct.tb* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @tb_dbg(%struct.tb*, i8*, i32, ...) #1

declare dso_local i32 @tb_port_type(%struct.tb_regs_port_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
