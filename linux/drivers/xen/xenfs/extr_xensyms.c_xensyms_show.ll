; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenfs/extr_xensyms.c_xensyms_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenfs/extr_xensyms.c_xensyms_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.xensyms = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xenpf_symdata }
%struct.xenpf_symdata = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%016llx %c %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @xensyms_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xensyms_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xensyms*, align 8
  %6 = alloca %struct.xenpf_symdata*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.xensyms*
  store %struct.xensyms* %10, %struct.xensyms** %5, align 8
  %11 = load %struct.xensyms*, %struct.xensyms** %5, align 8
  %12 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.xenpf_symdata* %14, %struct.xenpf_symdata** %6, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %6, align 8
  %17 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %6, align 8
  %20 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xensyms*, %struct.xensyms** %5, align 8
  %23 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
