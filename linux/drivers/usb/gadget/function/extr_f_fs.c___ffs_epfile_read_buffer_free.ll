; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c___ffs_epfile_read_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c___ffs_epfile_read_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_buffer = type { i32 }
%struct.ffs_epfile = type { i32 }

@READ_BUFFER_DROP = common dso_local global %struct.ffs_buffer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_epfile*)* @__ffs_epfile_read_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ffs_epfile_read_buffer_free(%struct.ffs_epfile* %0) #0 {
  %2 = alloca %struct.ffs_epfile*, align 8
  %3 = alloca %struct.ffs_buffer*, align 8
  store %struct.ffs_epfile* %0, %struct.ffs_epfile** %2, align 8
  %4 = load %struct.ffs_epfile*, %struct.ffs_epfile** %2, align 8
  %5 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %4, i32 0, i32 0
  %6 = load %struct.ffs_buffer*, %struct.ffs_buffer** @READ_BUFFER_DROP, align 8
  %7 = call %struct.ffs_buffer* @xchg(i32* %5, %struct.ffs_buffer* %6)
  store %struct.ffs_buffer* %7, %struct.ffs_buffer** %3, align 8
  %8 = load %struct.ffs_buffer*, %struct.ffs_buffer** %3, align 8
  %9 = icmp ne %struct.ffs_buffer* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ffs_buffer*, %struct.ffs_buffer** %3, align 8
  %12 = load %struct.ffs_buffer*, %struct.ffs_buffer** @READ_BUFFER_DROP, align 8
  %13 = icmp ne %struct.ffs_buffer* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.ffs_buffer*, %struct.ffs_buffer** %3, align 8
  %16 = call i32 @kfree(%struct.ffs_buffer* %15)
  br label %17

17:                                               ; preds = %14, %10, %1
  ret void
}

declare dso_local %struct.ffs_buffer* @xchg(i32*, %struct.ffs_buffer*) #1

declare dso_local i32 @kfree(%struct.ffs_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
