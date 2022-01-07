; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.fwtty_port = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"fwserinfo: 1.0 driver: 1.0\0A\00", align 1
@MAX_TOTAL_PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%2d:\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @fwtty_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fwtty_port*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = call i32 @seq_puts(%struct.seq_file* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX_TOTAL_PORTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.fwtty_port* @fwtty_port_get(i32 %14)
  store %struct.fwtty_port* %15, %struct.fwtty_port** %5, align 8
  %16 = icmp ne %struct.fwtty_port* %15, null
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %38

19:                                               ; preds = %17
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %24 = call i64 @capable(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %29 = call i32 @fwtty_proc_show_port(%struct.seq_file* %27, %struct.fwtty_port* %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %32 = call i32 @fwtty_port_put(%struct.fwtty_port* %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %9

38:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.fwtty_port* @fwtty_port_get(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @fwtty_proc_show_port(%struct.seq_file*, %struct.fwtty_port*) #1

declare dso_local i32 @fwtty_port_put(%struct.fwtty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
