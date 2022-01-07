; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { %struct.mgsl_struct* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"synclink driver:%s\0A\00", align 1
@driver_version = common dso_local global i32 0, align 4
@mgsl_device_list = common dso_local global %struct.mgsl_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mgsl_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgsl_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mgsl_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = load i32, i32* @driver_version, align 4
  %8 = call i32 @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.mgsl_struct*, %struct.mgsl_struct** @mgsl_device_list, align 8
  store %struct.mgsl_struct* %9, %struct.mgsl_struct** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %5, align 8
  %12 = icmp ne %struct.mgsl_struct* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.mgsl_struct*, %struct.mgsl_struct** %5, align 8
  %16 = call i32 @line_info(%struct.seq_file* %14, %struct.mgsl_struct* %15)
  %17 = load %struct.mgsl_struct*, %struct.mgsl_struct** %5, align 8
  %18 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %17, i32 0, i32 0
  %19 = load %struct.mgsl_struct*, %struct.mgsl_struct** %18, align 8
  store %struct.mgsl_struct* %19, %struct.mgsl_struct** %5, align 8
  br label %10

20:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @line_info(%struct.seq_file*, %struct.mgsl_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
