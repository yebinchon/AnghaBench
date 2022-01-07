; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.mxser_port* }
%struct.mxser_port = type { i32, %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.file = type { i32 }

@MXSER_PORTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @mxser_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.mxser_port*, align 8
  %6 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  store %struct.mxser_port* %9, %struct.mxser_port** %5, align 8
  %10 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %11 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %10, i32 0, i32 1
  store %struct.tty_port* %11, %struct.tty_port** %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MXSER_PORTS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %19 = icmp eq %struct.mxser_port* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  br label %63

21:                                               ; preds = %17
  %22 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = call i64 @tty_port_close_start(%struct.tty_port* %22, %struct.tty_struct* %23, %struct.file* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %63

28:                                               ; preds = %21
  %29 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %30 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %32 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %35 = call i32 @mxser_close_port(%struct.tty_port* %34)
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = call i32 @mxser_flush_buffer(%struct.tty_struct* %36)
  %38 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %39 = call i64 @tty_port_initialized(%struct.tty_port* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %43 = call i64 @C_HUPCL(%struct.tty_struct* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %47 = call i32 @tty_port_lower_dtr_rts(%struct.tty_port* %46)
  br label %48

48:                                               ; preds = %45, %41, %28
  %49 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %50 = call i32 @mxser_shutdown_port(%struct.tty_port* %49)
  %51 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %52 = call i32 @tty_port_set_initialized(%struct.tty_port* %51, i32 0)
  %53 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %54 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %57 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %59 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %60 = call i32 @tty_port_close_end(%struct.tty_port* %58, %struct.tty_struct* %59)
  %61 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %62 = call i32 @tty_port_tty_set(%struct.tty_port* %61, i32* null)
  br label %63

63:                                               ; preds = %48, %27, %20
  ret void
}

declare dso_local i64 @tty_port_close_start(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mxser_close_port(%struct.tty_port*) #1

declare dso_local i32 @mxser_flush_buffer(%struct.tty_struct*) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i64 @C_HUPCL(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_lower_dtr_rts(%struct.tty_port*) #1

declare dso_local i32 @mxser_shutdown_port(%struct.tty_port*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_close_end(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
