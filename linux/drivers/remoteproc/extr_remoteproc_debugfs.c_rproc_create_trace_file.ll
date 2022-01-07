; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_debugfs.c_rproc_create_trace_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_debugfs.c_rproc_create_trace_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rproc = type { i32, i32 }
%struct.rproc_debug_trace = type { i32 }

@trace_rproc_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to create debugfs trace entry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @rproc_create_trace_file(i8* %0, %struct.rproc* %1, %struct.rproc_debug_trace* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.rproc_debug_trace*, align 8
  %8 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.rproc* %1, %struct.rproc** %6, align 8
  store %struct.rproc_debug_trace* %2, %struct.rproc_debug_trace** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.rproc*, %struct.rproc** %6, align 8
  %11 = getelementptr inbounds %struct.rproc, %struct.rproc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %7, align 8
  %14 = call %struct.dentry* @debugfs_create_file(i8* %9, i32 256, i32 %12, %struct.rproc_debug_trace* %13, i32* @trace_rproc_ops)
  store %struct.dentry* %14, %struct.dentry** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %8, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.rproc*, %struct.rproc** %6, align 8
  %19 = getelementptr inbounds %struct.rproc, %struct.rproc* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %22, %struct.dentry** %4, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %24
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32, %struct.rproc_debug_trace*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
