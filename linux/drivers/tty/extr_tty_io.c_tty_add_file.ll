; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_add_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32 }
%struct.file = type { %struct.tty_file_private* }
%struct.tty_file_private = type { i32, %struct.file*, %struct.tty_struct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_add_file(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.tty_file_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.tty_file_private*, %struct.tty_file_private** %7, align 8
  store %struct.tty_file_private* %8, %struct.tty_file_private** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = load %struct.tty_file_private*, %struct.tty_file_private** %5, align 8
  %11 = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %10, i32 0, i32 2
  store %struct.tty_struct* %9, %struct.tty_struct** %11, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = load %struct.tty_file_private*, %struct.tty_file_private** %5, align 8
  %14 = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %13, i32 0, i32 1
  store %struct.file* %12, %struct.file** %14, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.tty_file_private*, %struct.tty_file_private** %5, align 8
  %19 = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %18, i32 0, i32 0
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 1
  %22 = call i32 @list_add(i32* %19, i32* %21)
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
