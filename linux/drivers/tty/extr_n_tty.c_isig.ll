; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_isig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_isig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, %struct.n_tty_data* }
%struct.n_tty_data = type { i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tty_struct*)* @isig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isig(i32 %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.n_tty_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 2
  %8 = load %struct.n_tty_data*, %struct.n_tty_data** %7, align 8
  store %struct.n_tty_data* %8, %struct.n_tty_data** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = call i64 @L_NOFLSH(%struct.tty_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = call i32 @__isig(i32 %13, %struct.tty_struct* %14)
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 0
  %19 = call i32 @up_read(i32* %18)
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = call i32 @down_write(i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call i32 @__isig(i32 %23, %struct.tty_struct* %24)
  %26 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %27 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %30 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %32 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %34 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %36 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %38 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %41 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %40)
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 2
  %44 = load %struct.n_tty_data*, %struct.n_tty_data** %43, align 8
  %45 = call i32 @reset_buffer_flags(%struct.n_tty_data* %44)
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %16
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = call i32 @n_tty_packet_mode_flush(%struct.tty_struct* %51)
  br label %53

53:                                               ; preds = %50, %16
  %54 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 0
  %56 = call i32 @up_write(i32* %55)
  %57 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %58 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 0
  %59 = call i32 @down_read(i32* %58)
  br label %60

60:                                               ; preds = %53, %12
  ret void
}

declare dso_local i64 @L_NOFLSH(%struct.tty_struct*) #1

declare dso_local i32 @__isig(i32, %struct.tty_struct*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @reset_buffer_flags(%struct.n_tty_data*) #1

declare dso_local i32 @n_tty_packet_mode_flush(%struct.tty_struct*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
