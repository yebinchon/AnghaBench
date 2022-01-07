; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_nmi_tty_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_nmi_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.kgdb_nmi_tty_priv* }
%struct.kgdb_nmi_tty_priv = type { i32 }
%struct.file = type { i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@kgdb_nmi_num_readers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @kgdb_nmi_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_nmi_tty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kgdb_nmi_tty_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %8, align 8
  store %struct.kgdb_nmi_tty_priv* %9, %struct.kgdb_nmi_tty_priv** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @O_ACCMODE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @O_RDWR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %2
  %23 = call i32 @atomic_dec(i32* @kgdb_nmi_num_readers)
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %5, align 8
  %26 = getelementptr inbounds %struct.kgdb_nmi_tty_priv, %struct.kgdb_nmi_tty_priv* %25, i32 0, i32 0
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = call i32 @tty_port_close(i32* %26, %struct.tty_struct* %27, %struct.file* %28)
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @tty_port_close(i32*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
