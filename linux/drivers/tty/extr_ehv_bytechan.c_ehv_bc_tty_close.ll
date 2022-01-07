; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_tty_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehv_bc_data = type { i32, i64 }
%struct.tty_struct = type { i64 }
%struct.file = type { i32 }

@bcs = common dso_local global %struct.ehv_bc_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @ehv_bc_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehv_bc_tty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ehv_bc_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** @bcs, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %6, i64 %9
  store %struct.ehv_bc_data* %10, %struct.ehv_bc_data** %5, align 8
  %11 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %12 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %17 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %16, i32 0, i32 0
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i32 @tty_port_close(i32* %17, %struct.tty_struct* %18, %struct.file* %19)
  br label %21

21:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @tty_port_close(i32*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
