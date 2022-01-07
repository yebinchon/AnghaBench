; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_nmi_tty_receiver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_nmi_tty_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_nmi_tty_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@kgdb_nmi_num_readers = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.kgdb_nmi_tty_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @kgdb_nmi_tty_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_nmi_tty_receiver(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.kgdb_nmi_tty_priv*, align 8
  %4 = alloca i8, align 1
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %3, align 8
  %6 = ptrtoint %struct.kgdb_nmi_tty_priv* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.kgdb_nmi_tty_priv* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.kgdb_nmi_tty_priv* %9, %struct.kgdb_nmi_tty_priv** %3, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 100
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %3, align 8
  %16 = getelementptr inbounds %struct.kgdb_nmi_tty_priv, %struct.kgdb_nmi_tty_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %3, align 8
  %19 = getelementptr inbounds %struct.kgdb_nmi_tty_priv, %struct.kgdb_nmi_tty_priv* %18, i32 0, i32 2
  %20 = call i32 @add_timer(%struct.TYPE_2__* %19)
  %21 = call i32 @atomic_read(i32* @kgdb_nmi_num_readers)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %3, align 8
  %25 = getelementptr inbounds %struct.kgdb_nmi_tty_priv, %struct.kgdb_nmi_tty_priv* %24, i32 0, i32 1
  %26 = call i32 @kfifo_len(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %1
  %30 = phi i1 [ true, %1 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %51

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %41, %35
  %37 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %3, align 8
  %38 = getelementptr inbounds %struct.kgdb_nmi_tty_priv, %struct.kgdb_nmi_tty_priv* %37, i32 0, i32 1
  %39 = call i64 @kfifo_out(i32* %38, i8* %4, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %3, align 8
  %43 = getelementptr inbounds %struct.kgdb_nmi_tty_priv, %struct.kgdb_nmi_tty_priv* %42, i32 0, i32 0
  %44 = load i8, i8* %4, align 1
  %45 = load i32, i32* @TTY_NORMAL, align 4
  %46 = call i32 @tty_insert_flip_char(i32* %43, i8 signext %44, i32 %45)
  br label %36

47:                                               ; preds = %36
  %48 = load %struct.kgdb_nmi_tty_priv*, %struct.kgdb_nmi_tty_priv** %3, align 8
  %49 = getelementptr inbounds %struct.kgdb_nmi_tty_priv, %struct.kgdb_nmi_tty_priv* %48, i32 0, i32 0
  %50 = call i32 @tty_flip_buffer_push(i32* %49)
  br label %51

51:                                               ; preds = %47, %34
  ret void
}

declare dso_local %struct.kgdb_nmi_tty_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kfifo_len(i32*) #1

declare dso_local i64 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
